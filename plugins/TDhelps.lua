local function run(msg, matches)
local jiji = [[
➖➖➖➖➖➖➖
》Sudo Help
》for jijibot
➖➖➖➖➖➖➖
💢!add
❔نصب ربات در گروه
💢!rem
❔حذف ربات از گروه
💢!leave
❔خروج ربات از گروه
💢!creategroup (GPname)
❔ساختن گروه
💢!createsuper (GPname)
❔ساختن سوپر گروه
💢!banall @username
❔بن از لیست گروهای ربات
💢!unbanall @username
❔خارج کردن از بن لیست
💢!tosuper
❔تبدیل گپ به سوپر گپ
💢!support @username
❔افزودن کاربر به تیم پشتیبانی
(ربات در همه گروها به دستورات کاربر جواب خواهد داد)
💢!-support @username
❔حذف کاربر از تیم پشتیبانی
💢!import (link)
❔وارد شدن ربات به گروه با لینک
💢!setexpire (day)
❔تنظیم تاریخ انقضای گروه
💢!pattern (plugname)
❔نمایش پترن پلاگین ها
💢!get (plugname)
❔دریافت پلاگین در تلگرام
💢!p + plugname
❔فعال کردن پلاگین
💢!p - plugname
❔غیرفعال کردن پلاگین
💢!save plugname
❔افزودن پلاگین با ریپلی
💢!delplugin plugname
❔حذف پلاگین
(قبلا حذف پلاگین را غیرفعال کنید)
💢!reload
❔ریلود پلاگین ها
💢!broadcast (text)
❔ارسال پیام به همه گروها
💢!addcontact
❔افزودن مخاطب به اکانت ربات
💢!remcontact
❔حذف مخاطب
💢!markread (on/off)
❔تنظیم رید شدن پیام ها توسط ربات
💢!uptime
❔اپتایم انلاین بودن ربات
💢!setsudo
❔ارتقای مقام کاربری به عنوان سودو
💢!remsudo
❔تنزل مقام کاربر از مقام سودو
]]
local jiji = [[
➖➖➖➖➖➖➖
✔️لیست دستورات مدیریتی
➖➖➖➖➖➖➖ 
💢》#نشاندن زبان (فارسی یا انگلیسی)
❔تنظیم زبان گروه

💢》#انلاینی
❔سوال کردن از بات برای اطمینان ار انلاین بودنش

💢》#فیلتر (کلمه)
❔فیلتر(ممنوع)کردن کلمه ای خاص(مثلا:فحش)

 
💢》#حذف پیام ها (1-200)
❔حذف پیام های اخیر سوپرگروه

💢》#اینفو
❔اطلاعات شما و گروه
 
💢》#اعضای گروه
❔لیست اعضای گروه

💢》#ادمین ها
❔لیست ادمین های گروه

💢》#لیست مدیران
❔لیست مدیران ربات

💢》#اخراج (ایدی یا ریپلی)
❔اخراج کاربری از گروه

💢》#دعوت (ایدی)
❔دعوت کاربری با ایدی

💢》#بن (ایدی یا ریپلی)
❔ممنوع کردن کاربر از گروه

💢》#خ بن (ایدی)
❔خارج کردن از ممنوعیت از گروه

💢》#لیست بن
❔لیست افرادی که از گروه بن شده اند

💢》#ایدی
❔ایدی عددی شما

💢》#مدیر (ایدی یا ریپلی)
❔ارتقای رتبه کاربر به عنوان مدیر ربات

💢》#تنزل مدیر (ایدی یا ریپلی)
❔تنزل رتبه مدیر به عنوان ممبر معمولی
 
💢》#ادمین (ایدی یا ریپلی)
❔ارتقای رتبه کاربر به عنوان مدیر گروه

💢》#تنزل ادمین (ایدی یا ریپلی)
❔تنزل رتبه ادمین به عنوان ممبر معمولی

💢》#نشاندن اسم (نام گروه)
❔نشاندن اسم برای گروه

💢》#نشاندن عکس
❔نشاندن عکس برای گروه

💢》#لینک
❔گرفتن لینک گروه

💢》#لینک جدید
❔ساختن لینک جدید برای گروه

💢》#نشاندن لینک
❔نشاندن لینک گروه

💢》#قوانین
❔نمایش قوانین گروه

💢》#نشاندن قوانین (قوانین گروه)
❔تعیین قوانین گروه

💢》#ساکت کردن همه
❔ساکت کردن همه کاربران گروه(چت ممنوع)

💢》#ساکت کردن همه Xh Ym Zs
❔ساکت کردن کاربران برای زمانی مشخص(جای (X=ساعت)(Y=دقیقه)(Z=ثانیه)قرار دهید)
مثلا:صامت کردن همه 2h 1m 0s

💢》#مصوت کردن همه
❔خارج کردن از صامت(چت آزاد)

💢》#صامت (ایدی یا ریپلی)
❔ساکت کردن کاربری خاص

💢》#مصوت (ایدی یا ریپلی)
❔صدادارکردن کاربری خاص(خارج کردن از صامت)

💢》#لیست صامت شدگان
❔نمایش لیست افرادی که صامت شده اند

💢》#تنظیم حساسیت (5-20)
❔تنظیم حساسیت به اسپم

💢》#تنظیمات
❔نمایش تنظیمات گروه

💢》#حذف (قوانین ، درباره گروه ، لیست مدیران ، لیست صامت شدگان ، لیست فیلتر)
❔حذف هر یک از موارد داخل پرانتز

💢》#صاحب (ایدی یا ریپلی)
❔ارتقای کاربر به عنوان صاحب ربات
(صاحب ربات تنزل رتبه میابد)

💢》#ربات ها
❔لیست ربات های گروه

💢》#عمومی (باشد یا نباشد)
❔تنظیم عمومی بودن گروه

💢》#حذف دیلیت اکانتی ها
❔حذف کسانی که حساب کاربری خود را حذف کرده اند

➰شما میتوانید از '/' یا '!' یا '#' برای اجرای دستورات استفاده کنید.
]]
local t = [[
➖➖➖➖➖➖➖
✔️لیست دستورات قفلی:
➖➖➖➖➖➖➖
❌》قفل کردن لینک
✔️》بازکردن لینک
〽️در صورت قفل اگر ممبرها لینکی ارسال کنند لینک حذف خواهدشد.

❌》قفل کردن استیکر
✔️》بازکردن استیکر
〽️درصورت قفل ارسال استیکر ممنوع میشود.

❌》قفل کردن شکلک
✔️》بازکردن شکلک
〽️درصورت قفل ارسال شکلک ممنوع میشود.

❌》قفل کردن عربی
✔️》بازکردن عربی
〽️درصورت قفل چت عربی ممنوع میشود.

❌》قفل کردن انگلیسی
✔️》بازکردن انگلیسی
〽️درصورت قفل چت انگلیسی ممنوع میشود.

❌》قفل کردن مخاطب ها
✔️》بازکردن مخاطب ها
〽️درصورت قفل ارسال مخاطب (شرکردن شماره)ممنوع میشود.

❌》قفل کردن اسپم
✔️》بازکردن اسپم
〽️درصورت قفل کاربران با دادن اسپم(هرزنامه)از گروه حذف خواهند شد.

❌》قفل کردن راست به چپ
✔️》بازکردن راست به چپ
〽️درصورت قفل نوشتن راست به چپ ممنوع میشود.

❌》قفل کردن ورودوخروج
✔️》بازکردن ورودوخروج
〽️درصورت قفل ورود و خروج اعضا نمایش داده نمیشود.

❌》قفل کردن سختگیرانه
✔️》بازکردن سختگیرانه
〽️درصورت قفل اگر کاربری خلاف قوانین عمل کند از گروه حذف میشود.(مثلا اگرلینک قفل باشد کاربر با دادن لینک از گروه حذف میشود)

❌》قفل کردن ورود
✔️》بازکردن ورود
〽️درصورت قفل ورود به گروه ممنوع میشود.(با ورود از گروه حذف میشود)

❌》قفل کردن خروج
✔️》بازکردن خروج
〽️درصورت قفل خروج از گروه ممنوع میشود.(با خروج از گروه بن میشود)

❌》قفل کردن ممبر
✔️》بازکردن ممبر
〽️درصورت قفل ورود و خروج به گروه ممنوع میشود.(درصورت ورود از گروه حذف و درصورت خروج بن میشود)

❌》قفل کردن فلود
✔️》بازکردن فلود
〽️درصورت قفل دادن پی ام پشت سرهم و تکراری در گروه ممنوع میشود.

❌》قفل کردن ربات ها
✔️》بازکردن ربات ها
〽️درصورت قفل اد کردن ربات در گروه ممنوع میشود.

❌》قفل کردن فحش
✔️》بازکردن فحش
〽️درصورت قفل فحاشی در گروه ممنوع میشود.

❌》قفل کردن فوروارد
✔️》بازکردن فوروارد
〽️درصورت قفل فوروارد کردن در گروه ممنوع میشود.

❌》قفل کردن اپراتور
✔️》بازکردن اپراتور
〽️درصورت قفل تبلیغ شارژ ممنوع میشود.

❌》قفل کردن تگ
✔️》بازکردن تگ
〽️درصورت قفل ارسال تگ(#) در گروه ممنوع میشود.

❌》قفل کردن دستورات
✔️》بازکردن دستورات
〽️ممنوع کردن استفاده دستورات برای کاربران
 
〰 قفل 》ممنوعیت
❌》قفل کردن چت
✔️》بازکردن چت

❌》قفل کردن عکس
✔️》بازکردن عکس

❌》قفل کردن فایل
✔️》بازکردن فایل

❌》قفل کردن فیلم
✔️》بازکردن فیلم

❌》قفل کردن آهنگ
✔️》بازکردن آهنگ
]]
local telediamond3 = [[
➖➖➖➖➖➖➖
✔️لیست دستورات فان:
➖➖➖➖➖➖➖
💢》#درباره من
❔اطلاعاتی درباره شما

💢》#استیکر
❔تبدیل عکس به استیکر با ریپلی بر روی عکس

💢》#عکس
❔تبدیل استیکر به عکس با ریپلی برروی استیکر

💢》#گیف
❔تبدیل ویدیو به گیف با ریپلی بر روی ویدیو

💢》#آهنگ 
❔تبدیل وویس به اهنگ با ریپلی بر روی وویس

💢》#فیلم
❔تبدیل گیف به ویدیو با ریپلی بر روی گیف

💢》#وویس (متن)
❔تبدیل متن به وویس

💢》#هواشناسی (شهر)
❔هواشناسی(بجای شهر نام شهر مورد نظر را به انگلیسی بنویسید)

💢》#زمان
❔زمان بصورت استیکر

💢》#ترجمه فارسی (متن)
❔ترجمه انگلیسی به فارسی

💢》#معنی (کلمه)
❔معنی کلمات فارسی ومعنی اسامی فارسی

💢》#گیف (کلمه)
❔کلمه یا اسم شما بصورت گیف

💢》#ماشین حساب عدد(+-/*^)عدد
❔حساب اعمال اصلی ریاضی

➰بجای کلمه یا متن موارد دلخواه خود را بنویسید.
]]
local telediamond4 = [[
✔️لیست دستورات مدیریتی سوپر گروه:
🔱#info
〽️نمایش اطلاعات کلی در مورد سوپر گروه
🔱#setlang (fa,en)
〽️تعیین زبان گروه(fa=فارسی-en=انگلیسی)
🔱#who
〽️لیست کاربران گروه
🔱#me
〽️اطلاعاتی در باره شما در گروه 
🔱#admins
〽️لیست مدیران گروه
🔱#modlist
〽️لیست مدیران ربات
🔱#kick @username
〽️اخراج کاربر از گروه با آیدی یا ریپلی
🔱#invite @username
〽️دعوت کاربر به گروه
🔱#ban @username
〽️بن کردن کاربر با آیدی یا ریپلی
🔱#unban
〽️خارج کردن کاربر از بن لیست با آیدی یا ریپلی
🔱#id
〽️نمایش آیدی شما و آیدی سوپر گروه
🔱#id from
〽️گرفتن آیدی از پیام فوروارد شده با ریپلی
🔱#promote @username
〽️ترفیع رتبه کاربر به عنوان مدیر گروه با آیدی یا ریپلی
🔱#demote @username
〽️تنزل‌ رتبه مدیر به ممبر معمولی گروه با آیدی یا ریپلی
🔱#setname (groupname)
〽️تعیین نام گروه
🔱#setphoto
〽️تعیین عکس گروه
🔱#newlink
〽️ساخت لینک جدید برای گروه
🔱#setlink
〽️نشاندن لینک برای گروه
(بعد از زدن دستور لینک گروه را ارسال کنید.)
🔱#link
〽️گرفتن لینک گروه
🔱#rules
〽️نمایش قوانین گروه
🔱#setrules text
〽️تعیین قوانین گروه
🔱#mute [all|audio|gifs|photo|video|service]
〽️صامت کردن 🔅همه 🔅صداها 🔅گیف ها 🔅عکس 🔅ویدیو 🔅سرویس
🔱#muteall Xh Ym Zs
〽️صامت کردن همه کاربران تا زمانی مشخص
مانند:!muteall 2h 12m 56s
🔱#unmute [all|audio|gifs|photo|video|service]
〽️خارج کردن از صامت
🔱#setflood [value]
〽️تنظیم حساسیت اسپم(جای [value] عددی بین 1-20قراردهید)
🔱#settings
〽️تنظیمات گروه
🔱#silent @username
〽️ساکت کردن کاربری با آیدی یا ریپلی
🔱#unsilent @username
〽️خارج کردن کاربر از لیست صامت با آیدی یا ریپلی
🔱#silentlist
〽️لیست افراد صامت شده
🔱#mutelist
〽️لیست افراد صامت
🔱#banlist
〽️لیست افراد بن شده
🔱#filterlist
〽️لیست کلمات فیلتر
🔱#mutelist
〽️لیست افراد صامت
🔱#clean [rules|about|modlist|silentlist|filterlist]
〽️پاک کردن 🔅قوانین 🔅اطلاعات 🔅لیست مدیران 🔅لیست کاربران صامت 🔅لیست کلمات فیلتر
🔱#clean msg [value]
〽️حذف پیام های اخیر گروه (جای value عددی بین 1-200)

✨توضیحات:

➰جای @username آیدی کاربر را قرار بدید.

➰با ریپلی یعنی بر روی پیام کاربر ریپلی(جواب دادن)کرده و دستور را وارد کنید.

➰در صامت کردن زمان دار بجای X ساعت بجای Y دقیقه و بجای Z ثانیه را قرار بدید.
]]
local telediamond5 = [[
✔️لیست دستورات فان سوپر گروه:

🔱#sticker
〽️تبدیل عکس به استیکر با ریپلی بر روی عکس
🔱#photo
〽️تبدیل استیکر به عکس با ریپلی برروی استیکر
🔱#png
〽️تبدیل عکس به فرمت png
🔱#gif
〽️تبدیل ویدیو به گیف با ریپلی بر روی ویدیو
🔱#audio 
〽️تبدیل وویس به اهنگ با ریپلی بر روی وویس
🔱#video
〽️تبدیل گیف به ویدیو با ریپلی بر روی گیف
🔱#voice text
〽️تبدیل متن به وویس
🔱#weather city
〽️هوا شناسی(بجای city نام شهر مورد نظر را بنویسید)
🔱#time
〽️زمان بصورت استیکر
🔱#mean text
〽معنی کلمات انگلیسی٬ و فارسی ومعنی اسامی فارسی

✨بجای text کلمه مورد نظر خود را بنویسید.
]]
local telediamond6 = [[
✔️لیست دستورات قفلی سوپر گروه:
🔱#lock text 
🔱#unlock text
1)✖️links
2)✖️flood
3)✖️spam
4)✖️Arabic
5)✖️member
6)✖️rtl
7)✖️sticker
8)✖️contacts
9)✖️strict
10)✖️tag
11)✖️username
12)✖️fwd
13)✖️cmd
14)✖️fosh
15)✖️tgservice
16)✖️leave
17)✖️join
18)✖️emoji
19)✖️english
20)✖️media
21)✖️operator
22)✖️bots
23)✖️edit
 〽️قفل کردن
〽️باز کردن قفل
1)✖️لینک
2)✖️پی ام تکراری
3)✖️اسپم
4)✖️عربی
5)✖️عضو
6)✖️اسم های بلند
7)✖️استیکر
8)✖️مخاطب ها
9)✖️سخت گیری
10)✖️تگ
11)✖️آیدی (@username)
12)✖️فوروراد
13)✖️دستورات
14)✖️فوش
15)✖️نمایش ورود و خروج
16)✖️ترک کردن گروه
17)✖️ورود به گروه
18)✖️شکلک
19)✖️انگلیسی
20)✖️رسانه(عکس و فیلم و...)
21)✖️اپراتور(تبلیغ شارژ رایگان)
22)✖️ربات ها
23)✖️ویرایش پیام
🌟بجای text گزینه مورد نظرتان را قرار بدین(گزینه های انگلیسی)
 با قفل هر کدام انجام یا فرستادن آن در گروه ممنوع میشود.

✨توضیحات:
➰قفل لینک:با قفل لینک ارسال لینک در گروه برای ممبرها ممنوع میشود

➰قفل اسپم:با قفل اسپم کسی قادر به خراب کردن گروه نخواهد بود و در صورت دادن پی ام پشت سرهم برای خراب کردن گروه خودکار خواهد شد.

➰قفل انگلیسی:کسی قادر به چت انگلیسی نخواهد بود

➰قفل عضو:کسی قادر به ورود به گروه نخواهد بود

➰قفل سخت گیری:در صورتی که یکی از گزینه های بالا قفل باشد کاربر با انجام آن خودکار حذف میشود.
مثلا وقتی لینک قفل باشد درصورتی که کاربر لینک ارسال کند هم لینک و هم کاربر در صورت قفل بودن سخت گیری حذف خواهند شد.
]]
local telediamond7 = [[
̴D̴̴i̴̴a̴̴m̴̴o̴̴n̴̴d̴ ̴C̴̴o̴̴m̴̴m̴̴a̴̴n̴̴d̴̴s̴ :

✔️برای دیدن دستورات مورد نظر خود مورد دلخواه را ارسال کنید :

➰دستورات فارسی:
☆دستورات قفلی
🎗》#راهنمای قفلی
☆دستورات فان
🎗》#راهنمای فان
☆دستورات مدیریتی
🎗》#راهنمای مدیریتی

➖➖➖➖➖➖➖
➰English Commands:

☆دستورات قفلی
🎗》#lockhelp
☆دستورات فان
🎗》#funhelp
☆دستورات مدیریتی
🎗》#modhelp

Join us:
✔️  @titannatilink1
]]
    if matches[1] == 'راهنمای مدیریتی' and is_momod(msg) then
        return telediamond  
  elseif matches[1] == 'sudohelp' and is_sudo(msg) or matches[1] == 'راهنمای سودو' and is_sudo(msg) then
    return telediamondsudo
  elseif matches[1] == 'راهنمای قفلی' and is_momod(msg) then
    return telediamond2
  elseif matches[1] == 'راهنمای فان' and is_momod(msg) then
    return telediamond3
  elseif matches[1] == 'modhelp' and is_momod(msg) then
    return telediamond4
  elseif matches[1] == 'funhelp' and is_momod(msg) then
    return telediamond5
  elseif matches[1] == 'lockhelp' and is_momod(msg) then
    return telediamond6
  elseif matches[1] == 'help' and is_momod(msg) or matches[1] == 'راهنما' and is_momod(msg) then
    return telediamond7
  end
end

return {
      description = '',
      usage = '',
      patterns = {
    '^[!#/](راهنمای مدیریتی)$',
    '^[!#/](modhelp)$',
    '^[!#/](راهنمای قفلی)$',
    '^[!#/](lockhelp)$',
  '^[!#/](راهنمای فان)$',
    '^[!#/](funhelp)$',
    '^[!#/](help)$',
  '^[!#/](راهنما)$',
    '^[!#/](sudohelp)$',
  '^[!#/](راهنمای سودو)$',
      },
      run = run,
}

-- by @mohammadrezajiji 
-- ch @titanantilink1
