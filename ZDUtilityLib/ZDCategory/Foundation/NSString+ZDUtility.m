//
//  NSString+ZDUtility.m
//  ZDUtility
//
//  Created by 符现超 on 15/12/26.
//  Copyright © 2015年 Fate.D.Saber. All rights reserved.
//

#import "NSString+ZDUtility.h"

@implementation NSString (ZDUtility)

#pragma mark - Size

- (CGFloat)heightWithFont:(UIFont *)font constrainedToWidth:(CGFloat)width
{
    UIFont *textFont = font ? : [UIFont systemFontOfSize:[UIFont systemFontSize]];
    
    CGSize textSize;
    
#if __IPHONE_OS_VERSION_MIN_REQUIRED < __IPHONE_7_0
    if ([self respondsToSelector:@selector(boundingRectWithSize:options:attributes:context:)]) {
        NSMutableParagraphStyle *paragraph = [[NSMutableParagraphStyle alloc] init];
        paragraph.lineBreakMode = NSLineBreakByWordWrapping;
        NSDictionary *attributes = @{NSFontAttributeName: textFont,
                                     NSParagraphStyleAttributeName: paragraph};
        textSize = [self boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX)
                                      options:(NSStringDrawingUsesLineFragmentOrigin |
                                               NSStringDrawingTruncatesLastVisibleLine)
                                   attributes:attributes
                                      context:nil].size;
    } else {
        textSize = [self sizeWithFont:textFont
                    constrainedToSize:CGSizeMake(width, CGFLOAT_MAX)
                        lineBreakMode:NSLineBreakByWordWrapping];
    }
#else
    NSMutableParagraphStyle *paragraph = [[NSMutableParagraphStyle alloc] init];
    paragraph.lineBreakMode = NSLineBreakByWordWrapping;
    NSDictionary *attributes = @{NSFontAttributeName: textFont,
                                 NSParagraphStyleAttributeName: paragraph};
    textSize = [self boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX)
                                  options:(NSStringDrawingUsesLineFragmentOrigin |
                                           NSStringDrawingTruncatesLastVisibleLine)
                               attributes:attributes
                                  context:nil].size;
#endif
    
    return ceil(textSize.height);
}

- (CGFloat)widthWithFont:(UIFont *)font constrainedToHeight:(CGFloat)height
{
    UIFont *textFont = font ? : [UIFont systemFontOfSize:[UIFont systemFontSize]];
    
    CGSize textSize;
    
#if __IPHONE_OS_VERSION_MIN_REQUIRED < __IPHONE_7_0
    if ([self respondsToSelector:@selector(boundingRectWithSize:options:attributes:context:)]) {
        NSMutableParagraphStyle *paragraph = [[NSMutableParagraphStyle alloc] init];
        paragraph.lineBreakMode = NSLineBreakByWordWrapping;
        NSDictionary *attributes = @{NSFontAttributeName: textFont,
                                     NSParagraphStyleAttributeName: paragraph};
        textSize = [self boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, height)
                                      options:(NSStringDrawingUsesLineFragmentOrigin |
                                               NSStringDrawingTruncatesLastVisibleLine)
                                   attributes:attributes
                                      context:nil].size;
    } else {
        textSize = [self sizeWithFont:textFont
                    constrainedToSize:CGSizeMake(CGFLOAT_MAX, height)
                        lineBreakMode:NSLineBreakByWordWrapping];
    }
#else
    NSMutableParagraphStyle *paragraph = [[NSMutableParagraphStyle alloc] init];
    paragraph.lineBreakMode = NSLineBreakByWordWrapping;
    NSDictionary *attributes = @{NSFontAttributeName: textFont,
                                 NSParagraphStyleAttributeName: paragraph};
    textSize = [self boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, height)
                                  options:(NSStringDrawingUsesLineFragmentOrigin |
                                           NSStringDrawingTruncatesLastVisibleLine)
                               attributes:attributes
                                  context:nil].size;
#endif
    
    return ceil(textSize.width);
}

- (CGSize)sizeWithFont:(UIFont *)font constrainedToWidth:(CGFloat)width
{
    UIFont *textFont = font ? : [UIFont systemFontOfSize:[UIFont systemFontSize]];
    
    CGSize textSize;
    
#if __IPHONE_OS_VERSION_MIN_REQUIRED < __IPHONE_7_0
    if ([self respondsToSelector:@selector(boundingRectWithSize:options:attributes:context:)]) {
        NSMutableParagraphStyle *paragraph = [[NSMutableParagraphStyle alloc] init];
        paragraph.lineBreakMode = NSLineBreakByWordWrapping;
        NSDictionary *attributes = @{NSFontAttributeName: textFont,
                                     NSParagraphStyleAttributeName: paragraph};
        textSize = [self boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX)
                                      options:(NSStringDrawingUsesLineFragmentOrigin |
                                               NSStringDrawingTruncatesLastVisibleLine)
                                   attributes:attributes
                                      context:nil].size;
    } else {
        textSize = [self sizeWithFont:textFont
                    constrainedToSize:CGSizeMake(width, CGFLOAT_MAX)
                        lineBreakMode:NSLineBreakByWordWrapping];
    }
#else
    NSMutableParagraphStyle *paragraph = [[NSMutableParagraphStyle alloc] init];
    paragraph.lineBreakMode = NSLineBreakByWordWrapping;
    NSDictionary *attributes = @{NSFontAttributeName: textFont,
                                 NSParagraphStyleAttributeName: paragraph};
    textSize = [self boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX)
                                  options:(NSStringDrawingUsesLineFragmentOrigin |
                                           NSStringDrawingTruncatesLastVisibleLine)
                               attributes:attributes
                                  context:nil].size;
#endif
    
    return CGSizeMake(ceil(textSize.width), ceil(textSize.height));
}


- (CGSize)sizeWithFont:(UIFont *)font constrainedToHeight:(CGFloat)height
{
    UIFont *textFont = font ? : [UIFont systemFontOfSize:[UIFont systemFontSize]];
    
    CGSize textSize;
    
#if __IPHONE_OS_VERSION_MIN_REQUIRED < __IPHONE_7_0
    if ([self respondsToSelector:@selector(boundingRectWithSize:options:attributes:context:)]) {
        NSMutableParagraphStyle *paragraph = [[NSMutableParagraphStyle alloc] init];
        paragraph.lineBreakMode = NSLineBreakByWordWrapping;
        NSDictionary *attributes = @{NSFontAttributeName: textFont,
                                     NSParagraphStyleAttributeName: paragraph};
        textSize = [self boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, height)
                                      options:(NSStringDrawingUsesLineFragmentOrigin |
                                               NSStringDrawingTruncatesLastVisibleLine)
                                   attributes:attributes
                                      context:nil].size;
    } else {
        textSize = [self sizeWithFont:textFont
                    constrainedToSize:CGSizeMake(CGFLOAT_MAX, height)
                        lineBreakMode:NSLineBreakByWordWrapping];
    }
#else
    NSMutableParagraphStyle *paragraph = [[NSMutableParagraphStyle alloc] init];
    paragraph.lineBreakMode = NSLineBreakByWordWrapping;
    NSDictionary *attributes = @{NSFontAttributeName: textFont,
                                 NSParagraphStyleAttributeName: paragraph};
    textSize = [self boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, height)
                                  options:(NSStringDrawingUsesLineFragmentOrigin |
                                           NSStringDrawingTruncatesLastVisibleLine)
                               attributes:attributes
                                  context:nil].size;
#endif
    
    return CGSizeMake(ceil(textSize.width), ceil(textSize.height));
}

#pragma mark - Function

- (BOOL)isContainsEmoji {
    float systemVersion = [UIDevice currentDevice].systemName.floatValue;
    // If detected, it MUST contains emoji; otherwise it MAY not contains emoji.
    static NSMutableCharacterSet *minSet8_3, *minSetOld;
    // If detected, it may contains emoji; otherwise it MUST NOT contains emoji.
    static NSMutableCharacterSet *maxSet;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        minSetOld = [NSMutableCharacterSet new];
        [minSetOld addCharactersInString:@"u2139\u2194\u2195\u2196\u2197\u2198\u2199\u21a9\u21aa\u231a\u231b\u23e9\u23ea\u23eb\u23ec\u23f0\u23f3\u24c2\u25aa\u25ab\u25b6\u25c0\u25fb\u25fc\u25fd\u25fe\u2600\u2601\u260e\u2611\u2614\u2615\u261d\u261d\u263a\u2648\u2649\u264a\u264b\u264c\u264d\u264e\u264f\u2650\u2651\u2652\u2653\u2660\u2663\u2665\u2666\u2668\u267b\u267f\u2693\u26a0\u26a1\u26aa\u26ab\u26bd\u26be\u26c4\u26c5\u26ce\u26d4\u26ea\u26f2\u26f3\u26f5\u26fa\u26fd\u2702\u2705\u2708\u2709\u270a\u270b\u270c\u270c\u270f\u2712\u2714\u2716\u2728\u2733\u2734\u2744\u2747\u274c\u274e\u2753\u2754\u2755\u2757\u2764\u2795\u2796\u2797\u27a1\u27b0\u27bf\u2934\u2935\u2b05\u2b06\u2b07\u2b1b\u2b1c\u2b50\u2b55\u3030\u303d\u3297\u3299\U0001f004\U0001f0cf\U0001f170\U0001f171\U0001f17e\U0001f17f\U0001f18e\U0001f191\U0001f192\U0001f193\U0001f194\U0001f195\U0001f196\U0001f197\U0001f198\U0001f199\U0001f19a\U0001f201\U0001f202\U0001f21a\U0001f22f\U0001f232\U0001f233\U0001f234\U0001f235\U0001f236\U0001f237\U0001f238\U0001f239\U0001f23a\U0001f250\U0001f251\U0001f300\U0001f301\U0001f302\U0001f303\U0001f304\U0001f305\U0001f306\U0001f307\U0001f308\U0001f309\U0001f30a\U0001f30b\U0001f30c\U0001f30d\U0001f30e\U0001f30f\U0001f310\U0001f311\U0001f312\U0001f313\U0001f314\U0001f315\U0001f316\U0001f317\U0001f318\U0001f319\U0001f31a\U0001f31b\U0001f31c\U0001f31d\U0001f31e\U0001f31f\U0001f320\U0001f330\U0001f331\U0001f332\U0001f333\U0001f334\U0001f335\U0001f337\U0001f338\U0001f339\U0001f33a\U0001f33b\U0001f33c\U0001f33d\U0001f33e\U0001f33f\U0001f340\U0001f341\U0001f342\U0001f343\U0001f344\U0001f345\U0001f346\U0001f347\U0001f348\U0001f349\U0001f34a\U0001f34b\U0001f34c\U0001f34d\U0001f34e\U0001f34f\U0001f350\U0001f351\U0001f352\U0001f353\U0001f354\U0001f355\U0001f356\U0001f357\U0001f358\U0001f359\U0001f35a\U0001f35b\U0001f35c\U0001f35d\U0001f35e\U0001f35f\U0001f360\U0001f361\U0001f362\U0001f363\U0001f364\U0001f365\U0001f366\U0001f367\U0001f368\U0001f369\U0001f36a\U0001f36b\U0001f36c\U0001f36d\U0001f36e\U0001f36f\U0001f370\U0001f371\U0001f372\U0001f373\U0001f374\U0001f375\U0001f376\U0001f377\U0001f378\U0001f379\U0001f37a\U0001f37b\U0001f37c\U0001f380\U0001f381\U0001f382\U0001f383\U0001f384\U0001f385\U0001f386\U0001f387\U0001f388\U0001f389\U0001f38a\U0001f38b\U0001f38c\U0001f38d\U0001f38e\U0001f38f\U0001f390\U0001f391\U0001f392\U0001f393\U0001f3a0\U0001f3a1\U0001f3a2\U0001f3a3\U0001f3a4\U0001f3a5\U0001f3a6\U0001f3a7\U0001f3a8\U0001f3a9\U0001f3aa\U0001f3ab\U0001f3ac\U0001f3ad\U0001f3ae\U0001f3af\U0001f3b0\U0001f3b1\U0001f3b2\U0001f3b3\U0001f3b4\U0001f3b5\U0001f3b6\U0001f3b7\U0001f3b8\U0001f3b9\U0001f3ba\U0001f3bb\U0001f3bc\U0001f3bd\U0001f3be\U0001f3bf\U0001f3c0\U0001f3c1\U0001f3c2\U0001f3c3\U0001f3c4\U0001f3c6\U0001f3c7\U0001f3c8\U0001f3c9\U0001f3ca\U0001f3e0\U0001f3e1\U0001f3e2\U0001f3e3\U0001f3e4\U0001f3e5\U0001f3e6\U0001f3e7\U0001f3e8\U0001f3e9\U0001f3ea\U0001f3eb\U0001f3ec\U0001f3ed\U0001f3ee\U0001f3ef\U0001f3f0\U0001f400\U0001f401\U0001f402\U0001f403\U0001f404\U0001f405\U0001f406\U0001f407\U0001f408\U0001f409\U0001f40a\U0001f40b\U0001f40c\U0001f40d\U0001f40e\U0001f40f\U0001f410\U0001f411\U0001f412\U0001f413\U0001f414\U0001f415\U0001f416\U0001f417\U0001f418\U0001f419\U0001f41a\U0001f41b\U0001f41c\U0001f41d\U0001f41e\U0001f41f\U0001f420\U0001f421\U0001f422\U0001f423\U0001f424\U0001f425\U0001f426\U0001f427\U0001f428\U0001f429\U0001f42a\U0001f42b\U0001f42c\U0001f42d\U0001f42e\U0001f42f\U0001f430\U0001f431\U0001f432\U0001f433\U0001f434\U0001f435\U0001f436\U0001f437\U0001f438\U0001f439\U0001f43a\U0001f43b\U0001f43c\U0001f43d\U0001f43e\U0001f440\U0001f442\U0001f443\U0001f444\U0001f445\U0001f446\U0001f447\U0001f448\U0001f449\U0001f44a\U0001f44b\U0001f44c\U0001f44d\U0001f44e\U0001f44f\U0001f450\U0001f451\U0001f452\U0001f453\U0001f454\U0001f455\U0001f456\U0001f457\U0001f458\U0001f459\U0001f45a\U0001f45b\U0001f45c\U0001f45d\U0001f45e\U0001f45f\U0001f460\U0001f461\U0001f462\U0001f463\U0001f464\U0001f465\U0001f466\U0001f467\U0001f468\U0001f469\U0001f46a\U0001f46b\U0001f46c\U0001f46d\U0001f46e\U0001f46f\U0001f470\U0001f471\U0001f472\U0001f473\U0001f474\U0001f475\U0001f476\U0001f477\U0001f478\U0001f479\U0001f47a\U0001f47b\U0001f47c\U0001f47d\U0001f47e\U0001f47f\U0001f480\U0001f481\U0001f482\U0001f483\U0001f484\U0001f485\U0001f486\U0001f487\U0001f488\U0001f489\U0001f48a\U0001f48b\U0001f48c\U0001f48d\U0001f48e\U0001f48f\U0001f490\U0001f491\U0001f492\U0001f493\U0001f494\U0001f495\U0001f496\U0001f497\U0001f498\U0001f499\U0001f49a\U0001f49b\U0001f49c\U0001f49d\U0001f49e\U0001f49f\U0001f4a0\U0001f4a1\U0001f4a2\U0001f4a3\U0001f4a4\U0001f4a5\U0001f4a6\U0001f4a7\U0001f4a8\U0001f4a9\U0001f4aa\U0001f4ab\U0001f4ac\U0001f4ad\U0001f4ae\U0001f4af\U0001f4b0\U0001f4b1\U0001f4b2\U0001f4b3\U0001f4b4\U0001f4b5\U0001f4b6\U0001f4b7\U0001f4b8\U0001f4b9\U0001f4ba\U0001f4bb\U0001f4bc\U0001f4bd\U0001f4be\U0001f4bf\U0001f4c0\U0001f4c1\U0001f4c2\U0001f4c3\U0001f4c4\U0001f4c5\U0001f4c6\U0001f4c7\U0001f4c8\U0001f4c9\U0001f4ca\U0001f4cb\U0001f4cc\U0001f4cd\U0001f4ce\U0001f4cf\U0001f4d0\U0001f4d1\U0001f4d2\U0001f4d3\U0001f4d4\U0001f4d5\U0001f4d6\U0001f4d7\U0001f4d8\U0001f4d9\U0001f4da\U0001f4db\U0001f4dc\U0001f4dd\U0001f4de\U0001f4df\U0001f4e0\U0001f4e1\U0001f4e2\U0001f4e3\U0001f4e4\U0001f4e5\U0001f4e6\U0001f4e7\U0001f4e8\U0001f4e9\U0001f4ea\U0001f4eb\U0001f4ec\U0001f4ed\U0001f4ee\U0001f4ef\U0001f4f0\U0001f4f1\U0001f4f2\U0001f4f3\U0001f4f4\U0001f4f5\U0001f4f6\U0001f4f7\U0001f4f9\U0001f4fa\U0001f4fb\U0001f4fc\U0001f500\U0001f501\U0001f502\U0001f503\U0001f504\U0001f505\U0001f506\U0001f507\U0001f508\U0001f509\U0001f50a\U0001f50b\U0001f50c\U0001f50d\U0001f50e\U0001f50f\U0001f510\U0001f511\U0001f512\U0001f513\U0001f514\U0001f515\U0001f516\U0001f517\U0001f518\U0001f519\U0001f51a\U0001f51b\U0001f51c\U0001f51d\U0001f51e\U0001f51f\U0001f520\U0001f521\U0001f522\U0001f523\U0001f524\U0001f525\U0001f526\U0001f527\U0001f528\U0001f529\U0001f52a\U0001f52b\U0001f52c\U0001f52d\U0001f52e\U0001f52f\U0001f530\U0001f531\U0001f532\U0001f533\U0001f534\U0001f535\U0001f536\U0001f537\U0001f538\U0001f539\U0001f53a\U0001f53b\U0001f53c\U0001f53d\U0001f550\U0001f551\U0001f552\U0001f553\U0001f554\U0001f555\U0001f556\U0001f557\U0001f558\U0001f559\U0001f55a\U0001f55b\U0001f55c\U0001f55d\U0001f55e\U0001f55f\U0001f560\U0001f561\U0001f562\U0001f563\U0001f564\U0001f565\U0001f566\U0001f567\U0001f5fb\U0001f5fc\U0001f5fd\U0001f5fe\U0001f5ff\U0001f600\U0001f601\U0001f602\U0001f603\U0001f604\U0001f605\U0001f606\U0001f607\U0001f608\U0001f609\U0001f60a\U0001f60b\U0001f60c\U0001f60d\U0001f60e\U0001f60f\U0001f610\U0001f611\U0001f612\U0001f613\U0001f614\U0001f615\U0001f616\U0001f617\U0001f618\U0001f619\U0001f61a\U0001f61b\U0001f61c\U0001f61d\U0001f61e\U0001f61f\U0001f620\U0001f621\U0001f622\U0001f623\U0001f624\U0001f625\U0001f626\U0001f627\U0001f628\U0001f629\U0001f62a\U0001f62b\U0001f62c\U0001f62d\U0001f62e\U0001f62f\U0001f630\U0001f631\U0001f632\U0001f633\U0001f634\U0001f635\U0001f636\U0001f637\U0001f638\U0001f639\U0001f63a\U0001f63b\U0001f63c\U0001f63d\U0001f63e\U0001f63f\U0001f640\U0001f645\U0001f646\U0001f647\U0001f648\U0001f649\U0001f64a\U0001f64b\U0001f64c\U0001f64d\U0001f64e\U0001f64f\U0001f680\U0001f681\U0001f682\U0001f683\U0001f684\U0001f685\U0001f686\U0001f687\U0001f688\U0001f689\U0001f68a\U0001f68b\U0001f68c\U0001f68d\U0001f68e\U0001f68f\U0001f690\U0001f691\U0001f692\U0001f693\U0001f694\U0001f695\U0001f696\U0001f697\U0001f698\U0001f699\U0001f69a\U0001f69b\U0001f69c\U0001f69d\U0001f69e\U0001f69f\U0001f6a0\U0001f6a1\U0001f6a2\U0001f6a3\U0001f6a4\U0001f6a5\U0001f6a6\U0001f6a7\U0001f6a8\U0001f6a9\U0001f6aa\U0001f6ab\U0001f6ac\U0001f6ad\U0001f6ae\U0001f6af\U0001f6b0\U0001f6b1\U0001f6b2\U0001f6b3\U0001f6b4\U0001f6b5\U0001f6b6\U0001f6b7\U0001f6b8\U0001f6b9\U0001f6ba\U0001f6bb\U0001f6bc\U0001f6bd\U0001f6be\U0001f6bf\U0001f6c0\U0001f6c1\U0001f6c2\U0001f6c3\U0001f6c4\U0001f6c5"];
        
        maxSet = minSetOld.mutableCopy;
        [maxSet addCharactersInRange:NSMakeRange(0x20e3, 1)]; // Combining Enclosing Keycap (multi-face emoji)
        [maxSet addCharactersInRange:NSMakeRange(0xfe0f, 1)]; // Variation Selector
        [maxSet addCharactersInRange:NSMakeRange(0x1f1e6, 26)]; // Regional Indicator Symbol Letter
        
        minSet8_3 = minSetOld.mutableCopy;
        [minSet8_3 addCharactersInRange:NSMakeRange(0x1f3fb, 5)]; // Color of skin
    });
    
    // 1. Most of string does not contains emoji, so test the maximum range of charset first.
    if ([self rangeOfCharacterFromSet:maxSet].location == NSNotFound) return NO;
    
    // 2. If the emoji can be detected by the minimum charset, return 'YES' directly.
    if ([self rangeOfCharacterFromSet:((systemVersion < 8.3) ? minSetOld : minSet8_3)].location != NSNotFound) return YES;
    
    // 3. The string contains some characters which may compose an emoji, but cannot detected with charset.
    // Use a regular expression to detect the emoji. It's slower than using charset.
    static NSRegularExpression *regexOld, *regex8_3, *regex9_0;
    static dispatch_once_t onceTokenRegex;
    dispatch_once(&onceTokenRegex, ^{
        regexOld = [NSRegularExpression regularExpressionWithPattern:@"(©️|®️|™️|〰️|🇨🇳|🇩🇪|🇪🇸|🇫🇷|🇬🇧|🇮🇹|🇯🇵|🇰🇷|🇷🇺|🇺🇸)" options:kNilOptions error:nil];
        regex8_3 = [NSRegularExpression regularExpressionWithPattern:@"(©️|®️|™️|〰️|🇦🇺|🇦🇹|🇧🇪|🇧🇷|🇨🇦|🇨🇱|🇨🇳|🇨🇴|🇩🇰|🇫🇮|🇫🇷|🇩🇪|🇭🇰|🇮🇳|🇮🇩|🇮🇪|🇮🇱|🇮🇹|🇯🇵|🇰🇷|🇲🇴|🇲🇾|🇲🇽|🇳🇱|🇳🇿|🇳🇴|🇵🇭|🇵🇱|🇵🇹|🇵🇷|🇷🇺|🇸🇦|🇸🇬|🇿🇦|🇪🇸|🇸🇪|🇨🇭|🇹🇷|🇬🇧|🇺🇸|🇦🇪|🇻🇳)" options:kNilOptions error:nil];
        regex9_0 = [NSRegularExpression regularExpressionWithPattern:@"(©️|®️|™️|〰️|🇦🇫|🇦🇽|🇦🇱|🇩🇿|🇦🇸|🇦🇩|🇦🇴|🇦🇮|🇦🇶|🇦🇬|🇦🇷|🇦🇲|🇦🇼|🇦🇺|🇦🇹|🇦🇿|🇧🇸|🇧🇭|🇧🇩|🇧🇧|🇧🇾|🇧🇪|🇧🇿|🇧🇯|🇧🇲|🇧🇹|🇧🇴|🇧🇶|🇧🇦|🇧🇼|🇧🇻|🇧🇷|🇮🇴|🇻🇬|🇧🇳|🇧🇬|🇧🇫|🇧🇮|🇰🇭|🇨🇲|🇨🇦|🇨🇻|🇰🇾|🇨🇫|🇹🇩|🇨🇱|🇨🇳|🇨🇽|🇨🇨|🇨🇴|🇰🇲|🇨🇬|🇨🇩|🇨🇰|🇨🇷|🇨🇮|🇭🇷|🇨🇺|🇨🇼|🇨🇾|🇨🇿|🇩🇰|🇩🇯|🇩🇲|🇩🇴|🇪🇨|🇪🇬|🇸🇻|🇬🇶|🇪🇷|🇪🇪|🇪🇹|🇫🇰|🇫🇴|🇫🇯|🇫🇮|🇫🇷|🇬🇫|🇵🇫|🇹🇫|🇬🇦|🇬🇲|🇬🇪|🇩🇪|🇬🇭|🇬🇮|🇬🇷|🇬🇱|🇬🇩|🇬🇵|🇬🇺|🇬🇹|🇬🇬|🇬🇳|🇬🇼|🇬🇾|🇭🇹|🇭🇲|🇭🇳|🇭🇰|🇭🇺|🇮🇸|🇮🇳|🇮🇩|🇮🇷|🇮🇶|🇮🇪|🇮🇲|🇮🇱|🇮🇹|🇯🇲|🇯🇵|🇯🇪|🇯🇴|🇰🇿|🇰🇪|🇰🇮|🇰🇼|🇰🇬|🇱🇦|🇱🇻|🇱🇧|🇱🇸|🇱🇷|🇱🇾|🇱🇮|🇱🇹|🇱🇺|🇲🇴|🇲🇰|🇲🇬|🇲🇼|🇲🇾|🇲🇻|🇲🇱|🇲🇹|🇲🇭|🇲🇶|🇲🇷|🇲🇺|🇾🇹|🇲🇽|🇫🇲|🇲🇩|🇲🇨|🇲🇳|🇲🇪|🇲🇸|🇲🇦|🇲🇿|🇲🇲|🇳🇦|🇳🇷|🇳🇵|🇳🇱|🇳🇨|🇳🇿|🇳🇮|🇳🇪|🇳🇬|🇳🇺|🇳🇫|🇲🇵|🇰🇵|🇳🇴|🇴🇲|🇵🇰|🇵🇼|🇵🇸|🇵🇦|🇵🇬|🇵🇾|🇵🇪|🇵🇭|🇵🇳|🇵🇱|🇵🇹|🇵🇷|🇶🇦|🇷🇪|🇷🇴|🇷🇺|🇷🇼|🇧🇱|🇸🇭|🇰🇳|🇱🇨|🇲🇫|🇻🇨|🇼🇸|🇸🇲|🇸🇹|🇸🇦|🇸🇳|🇷🇸|🇸🇨|🇸🇱|🇸🇬|🇸🇰|🇸🇮|🇸🇧|🇸🇴|🇿🇦|🇬🇸|🇰🇷|🇸🇸|🇪🇸|🇱🇰|🇸🇩|🇸🇷|🇸🇯|🇸🇿|🇸🇪|🇨🇭|🇸🇾|🇹🇼|🇹🇯|🇹🇿|🇹🇭|🇹🇱|🇹🇬|🇹🇰|🇹🇴|🇹🇹|🇹🇳|🇹🇷|🇹🇲|🇹🇨|🇹🇻|🇺🇬|🇺🇦|🇦🇪|🇬🇧|🇺🇸|🇺🇲|🇻🇮|🇺🇾|🇺🇿|🇻🇺|🇻🇦|🇻🇪|🇻🇳|🇼🇫|🇪🇭|🇾🇪|🇿🇲|🇿🇼)" options:kNilOptions error:nil];
    });
    
    NSRange regexRange = [(systemVersion < 8.3 ? regexOld : systemVersion < 9.0 ? regex8_3 : regex9_0) rangeOfFirstMatchInString:self options:kNilOptions range:NSMakeRange(0, self.length)];
    return regexRange.location != NSNotFound;
}

- (NSString *)filterEmoji
{
	NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"[^\\u0020-\\u007E\\u00A0-\\u00BE\\u2E80-\\uA4CF\\uF900-\\uFAFF\\uFE30-\\uFE4F\\uFF00-\\uFFEF\\u0080-\\u009F\\u2000-\\u201f\r\n]" options:NSRegularExpressionCaseInsensitive error:nil];
	NSString *modifiedString = [regex stringByReplacingMatchesInString:self
                                                               options:0
                                                                 range:NSMakeRange(0, [self length])
                                                          withTemplate:@""];
	return modifiedString;
}

- (NSString *)removeHalfEmoji
{
    if (self.length > 0) {
        NSString *tmpStr = self;
        NSUInteger lenth = tmpStr.length;
        if (([tmpStr characterAtIndex:lenth-1]&0xfc00)  == 0xd800) {
            lenth--;
        }
        tmpStr = [tmpStr substringToIndex:lenth];
        return tmpStr;
    }
    return self;
}

- (NSString *)reservedNumberOnly
{
    NSCharacterSet *cs = [[NSCharacterSet characterSetWithCharactersInString:@"0123456789"] invertedSet];
    NSString *resultStr = [[self componentsSeparatedByCharactersInSet:cs] componentsJoinedByString:@""];
    //BOOL isChange = ![self isEqualToString:resultStr];
    return resultStr;
}

- (NSString *)reverse
{
    NSMutableString* reverseString = [[NSMutableString alloc] init];
    NSUInteger charIndex = [self length];
    while (charIndex > 0) {
        charIndex --;
        NSRange subStrRange = NSMakeRange(charIndex, 1);
        [reverseString appendString:[self substringWithRange:subStrRange]];
    }
    return reverseString;
}

- (BOOL)isContainsString:(NSString *)string
{
#if __IPHONE_OS_VERSION_MIN_REQUIRED < __IPHONE_8_0
    NSRange rang = [self rangeOfString:string];
    if (rang.location == NSNotFound) return NO;
    return YES;
#else
    return [self containsString:string];
#endif
}

- (BOOL)isAllNumber
{
    if (self.length > 0) {
        NSScanner *scan = [NSScanner scannerWithString:self];
        int val;
        return [scan scanInt:&val] && [scan isAtEnd];
    }
    return NO;
}

- (BOOL)isValidEmail
{
    NSString *emailPattern =
    @"(?:[a-z0-9!#$%\\&'*+/=?\\^_`{|}~-]+(?:\\.[a-z0-9!#$%\\&'*+/=?\\^_`{|}"
    @"~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\"
    @"x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[a-z0-9](?:[a-"
    @"z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\\[(?:(?:25[0-5"
    @"]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-"
    @"9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21"
    @"-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])";
    NSError *error = nil;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:emailPattern options:NSRegularExpressionCaseInsensitive error:&error];
    NSTextCheckingResult *match = [regex firstMatchInString:self options:0 range:NSMakeRange(0, [self length])];
    return match != nil;
}

#pragma mark - Json

- (NSDictionary *)dictionaryValue
{
    NSError *errorJson;
    NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:[self dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:&errorJson];
    if (errorJson != nil) {
        NSLog(@"fail to get dictioanry from JSON: %@, error: %@", self, errorJson);
    }
    return jsonDict;
}

+ (NSString *)stringValueFromJson:(id)arrayOrDic
{
    NSData *jsonData =[NSJSONSerialization dataWithJSONObject:arrayOrDic
                                                      options:NSJSONWritingPrettyPrinted
                                                        error:nil];
    NSString *strs=[[NSString alloc] initWithData:jsonData
                                         encoding:NSUTF8StringEncoding];
    return strs;
}

#pragma mark - HTML

- (NSString *)decodeHTMLCharacterEntities {
    if ([self rangeOfString:@"&"].location == NSNotFound) {
        return self;
    } else {
        NSMutableString *escaped = [NSMutableString stringWithString:self];
        NSArray *codes = [NSArray arrayWithObjects:
                          @"&nbsp;", @"&iexcl;", @"&cent;", @"&pound;", @"&curren;", @"&yen;", @"&brvbar;",
                          @"&sect;", @"&uml;", @"&copy;", @"&ordf;", @"&laquo;", @"&not;", @"&shy;", @"&reg;",
                          @"&macr;", @"&deg;", @"&plusmn;", @"&sup2;", @"&sup3;", @"&acute;", @"&micro;",
                          @"&para;", @"&middot;", @"&cedil;", @"&sup1;", @"&ordm;", @"&raquo;", @"&frac14;",
                          @"&frac12;", @"&frac34;", @"&iquest;", @"&Agrave;", @"&Aacute;", @"&Acirc;",
                          @"&Atilde;", @"&Auml;", @"&Aring;", @"&AElig;", @"&Ccedil;", @"&Egrave;",
                          @"&Eacute;", @"&Ecirc;", @"&Euml;", @"&Igrave;", @"&Iacute;", @"&Icirc;", @"&Iuml;",
                          @"&ETH;", @"&Ntilde;", @"&Ograve;", @"&Oacute;", @"&Ocirc;", @"&Otilde;", @"&Ouml;",
                          @"&times;", @"&Oslash;", @"&Ugrave;", @"&Uacute;", @"&Ucirc;", @"&Uuml;", @"&Yacute;",
                          @"&THORN;", @"&szlig;", @"&agrave;", @"&aacute;", @"&acirc;", @"&atilde;", @"&auml;",
                          @"&aring;", @"&aelig;", @"&ccedil;", @"&egrave;", @"&eacute;", @"&ecirc;", @"&euml;",
                          @"&igrave;", @"&iacute;", @"&icirc;", @"&iuml;", @"&eth;", @"&ntilde;", @"&ograve;",
                          @"&oacute;", @"&ocirc;", @"&otilde;", @"&ouml;", @"&divide;", @"&oslash;", @"&ugrave;",
                          @"&uacute;", @"&ucirc;", @"&uuml;", @"&yacute;", @"&thorn;", @"&yuml;", nil];
        
        NSUInteger i, count = [codes count];
        
        // Html
        for (i = 0; i < count; i++) {
            NSRange range = [self rangeOfString:[codes objectAtIndex:i]];
            if (range.location != NSNotFound) {
                [escaped replaceOccurrencesOfString:[codes objectAtIndex:i]
                                         withString:[NSString stringWithFormat:@"%C", (unichar)(160 + i)]
                                            options:NSLiteralSearch
                                              range:NSMakeRange(0, [escaped length])];
            }
        }
        
        // The following five are not in the 160+ range
        
        // @"&amp;"
        NSRange range = [self rangeOfString:@"&amp;"];
        if (range.location != NSNotFound) {
            [escaped replaceOccurrencesOfString:@"&amp;"
                                     withString:[NSString stringWithFormat:@"%C", 38]
                                        options:NSLiteralSearch
                                          range:NSMakeRange(0, [escaped length])];
        }
        
        // @"&lt;"
        range = [self rangeOfString:@"&lt;"];
        if (range.location != NSNotFound) {
            [escaped replaceOccurrencesOfString:@"&lt;"
                                     withString:[NSString stringWithFormat:@"%C", 60]
                                        options:NSLiteralSearch
                                          range:NSMakeRange(0, [escaped length])];
        }
        
        // @"&gt;"
        range = [self rangeOfString:@"&gt;"];
        if (range.location != NSNotFound) {
            [escaped replaceOccurrencesOfString:@"&gt;"
                                     withString:[NSString stringWithFormat:@"%C", 62]
                                        options:NSLiteralSearch
                                          range:NSMakeRange(0, [escaped length])];
        }
        
        // @"&apos;"
        range = [self rangeOfString:@"&apos;"];
        if (range.location != NSNotFound) {
            [escaped replaceOccurrencesOfString:@"&apos;"
                                     withString:[NSString stringWithFormat:@"%C", 39]
                                        options:NSLiteralSearch
                                          range:NSMakeRange(0, [escaped length])];
        }
        
        // @"&quot;"
        range = [self rangeOfString:@"&quot;"];
        if (range.location != NSNotFound) {
            [escaped replaceOccurrencesOfString:@"&quot;"
                                     withString:[NSString stringWithFormat:@"%C", 34]
                                        options:NSLiteralSearch
                                          range:NSMakeRange(0, [escaped length])];
        }
        
        // Decimal & Hex
        NSRange start, finish, searchRange = NSMakeRange(0, [escaped length]);
        i = 0;
        
        while (i < [escaped length]) {
            start = [escaped rangeOfString:@"&#"
                                   options:NSCaseInsensitiveSearch
                                     range:searchRange];
            
            finish = [escaped rangeOfString:@";"
                                    options:NSCaseInsensitiveSearch
                                      range:searchRange];
            
            if (start.location != NSNotFound && finish.location != NSNotFound &&
                finish.location > start.location) {
                NSRange entityRange = NSMakeRange(start.location, (finish.location - start.location) + 1);
                NSString *entity = [escaped substringWithRange:entityRange];
                NSString *value = [entity substringWithRange:NSMakeRange(2, [entity length] - 2)];
                
                [escaped deleteCharactersInRange:entityRange];
                
                if ([value hasPrefix:@"x"]) {
                    unsigned tempInt = 0;
                    NSScanner *scanner = [NSScanner scannerWithString:[value substringFromIndex:1]];
                    [scanner scanHexInt:&tempInt];
                    [escaped insertString:[NSString stringWithFormat:@"%C", (unichar)tempInt] atIndex:entityRange.location];
                } else {
                    [escaped insertString:[NSString stringWithFormat:@"%C", (unichar)[value intValue]] atIndex:entityRange.location];
                } i = start.location;
            } else { i++; }
            searchRange = NSMakeRange(i, [escaped length] - i);
        }
        
        return escaped;    // Note this is autoreleased
    }
}

- (NSString *)encodeHTMLCharacterEntities {
    NSMutableString *encoded = [NSMutableString stringWithString:self];
    
    // @"&amp;"
    NSRange range = [self rangeOfString:@"&"];
    if (range.location != NSNotFound) {
        [encoded replaceOccurrencesOfString:@"&"
                                 withString:@"&amp;"
                                    options:NSLiteralSearch
                                      range:NSMakeRange(0, [encoded length])];
    }
    
    // @"&lt;"
    range = [self rangeOfString:@"<"];
    if (range.location != NSNotFound) {
        [encoded replaceOccurrencesOfString:@"<"
                                 withString:@"&lt;"
                                    options:NSLiteralSearch
                                      range:NSMakeRange(0, [encoded length])];
    }
    
    // @"&gt;"
    range = [self rangeOfString:@">"];
    if (range.location != NSNotFound) {
        [encoded replaceOccurrencesOfString:@">"
                                 withString:@"&gt;"
                                    options:NSLiteralSearch
                                      range:NSMakeRange(0, [encoded length])];
    }
    
    return encoded;
}

#pragma mark - Encoding / Deconding
//http://useyourloaf.com/blog/how-to-percent-encode-a-url-string.html

- (NSString *)stringByAddingPercentEncodingForRFC3986 {
    NSString *unreserved = @"-._~/?";
    NSMutableCharacterSet *allowed = [NSMutableCharacterSet
                                      alphanumericCharacterSet];
    [allowed addCharactersInString:unreserved];
    return [self stringByAddingPercentEncodingWithAllowedCharacters:
            allowed];
}

- (NSString *)stringByAddingPercentEncodingForFormData:(BOOL)plusForSpace {
    NSString *unreserved = @"*-._";
    NSMutableCharacterSet *allowed = [NSMutableCharacterSet
                                      alphanumericCharacterSet];
    [allowed addCharactersInString:unreserved];
    if (plusForSpace) {
        [allowed addCharactersInString:@" "];
    }
    
    NSString *encoded = [self stringByAddingPercentEncodingWithAllowedCharacters:allowed];
    if (plusForSpace) {
        encoded = [encoded stringByReplacingOccurrencesOfString:@" "
                                                     withString:@"+"];
    }
    return encoded;
}

- (NSString *)stringByURLEncode {
    if ([self respondsToSelector:@selector(stringByAddingPercentEncodingWithAllowedCharacters:)]) {
        /**
         AFNetworking/AFURLRequestSerialization.m
         
         Returns a percent-escaped string following RFC 3986 for a query string key or value.
         RFC 3986 states that the following characters are "reserved" characters.
         - General Delimiters: ":", "#", "[", "]", "@", "?", "/"
         - Sub-Delimiters: "!", "$", "&", "'", "(", ")", "*", "+", ",", ";", "="
         In RFC 3986 - Section 3.4, it states that the "?" and "/" characters should not be escaped to allow
         query strings to include a URL. Therefore, all "reserved" characters with the exception of "?" and "/"
         should be percent-escaped in the query string.
         - parameter string: The string to be percent-escaped.
         - returns: The percent-escaped string.
         */
        static NSString * const kAFCharactersGeneralDelimitersToEncode = @":#[]@"; // does not include "?" or "/" due to RFC 3986 - Section 3.4
        static NSString * const kAFCharactersSubDelimitersToEncode = @"!$&'()*+,;=";
        
        NSMutableCharacterSet * allowedCharacterSet = [[NSCharacterSet URLQueryAllowedCharacterSet] mutableCopy];
        [allowedCharacterSet removeCharactersInString:[kAFCharactersGeneralDelimitersToEncode stringByAppendingString:kAFCharactersSubDelimitersToEncode]];
        static NSUInteger const batchSize = 50;
        
        NSUInteger index = 0;
        NSMutableString *escaped = @"".mutableCopy;
        
        while (index < self.length) {
            NSUInteger length = MIN(self.length - index, batchSize);
            NSRange range = NSMakeRange(index, length);
            // To avoid breaking up character sequences such as 👴🏻👮🏽
            range = [self rangeOfComposedCharacterSequencesForRange:range];
            NSString *substring = [self substringWithRange:range];
            NSString *encoded = [substring stringByAddingPercentEncodingWithAllowedCharacters:allowedCharacterSet];
            [escaped appendString:encoded];
            
            index += range.length;
        }
        return escaped;
    } else {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
        CFStringEncoding cfEncoding = CFStringConvertNSStringEncodingToEncoding(NSUTF8StringEncoding);
        NSString *encoded = (__bridge_transfer NSString *)
        CFURLCreateStringByAddingPercentEscapes(
                                                kCFAllocatorDefault,
                                                (__bridge CFStringRef)self,
                                                NULL,
                                                CFSTR("!#$&'()*+,/:;=?@[]"),
                                                cfEncoding);
        return encoded;
#pragma clang diagnostic pop
    }
}

- (NSString *)stringByURLDecode {
    if ([self respondsToSelector:@selector(stringByRemovingPercentEncoding)]) {
        return [self stringByRemovingPercentEncoding];
    } else {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
        CFStringEncoding en = CFStringConvertNSStringEncodingToEncoding(NSUTF8StringEncoding);
        NSString *decoded = [self stringByReplacingOccurrencesOfString:@"+"
                                                            withString:@" "];
        decoded = (__bridge_transfer NSString *)
        CFURLCreateStringByReplacingPercentEscapesUsingEncoding(
                                                                NULL,
                                                                (__bridge CFStringRef)decoded,
                                                                CFSTR(""),
                                                                en);
        return decoded;
#pragma clang diagnostic pop
    }
}

@end