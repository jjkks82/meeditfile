#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

// ==========================================
// 1. قسم تعديل الحساب (Spoofing)
// ==========================================
%hook AWEUserModel

// --- تعديل اليوزر نيم (الـ @) ---
- (NSString *)uniqueID {
    return @"Majood_King"; // اكتب اليوزر اللي تبيه بين علامات التنصيص
}
- (NSString *)shortID {
    return @"Majood_King";
}

// --- تعديل اسم العرض (الاسم العريض فوق) ---
- (NSString *)nickname {
    return @"مجود 👑"; // اكتب اسمك هنا
}

// --- تعديل عدد المتابعين (Followers) ---
- (NSNumber *)followerCount {
    return @(9999999); // رقم المتابعين (مثلاً 9 مليون وشوي)
}

// --- تعديل عدد اللي تتابعهم (Following) ---
- (NSNumber *)followingCount {
    return @(1); // رقم اللي تتابعهم
}

// --- تعديل عدد اللايكات اللي في حسابك (Likes) ---
- (NSNumber *)favoritingCount {
    return @(50000000); // 50 مليون لايك
}

// --- تفعيل التوثيق (العلامة الزرقاء) ---
- (BOOL)isVerifiedUser {
    return YES; // YES تعني مفعل، NO تعني معطل
}

%end


// ==========================================
// 2. قسم الميزات الإضافية (إخفاء الإعلانات)
// ==========================================
%hook AWEAwemeModel

// --- منع الإعلانات من الظهور في الفيد ---
- (BOOL)isAds {
    return NO;
}

%end
