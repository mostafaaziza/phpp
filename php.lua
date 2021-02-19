<?php 

ob_start();

define('API_KEY',"1242910527:AAFNvt38n1QGZTkXKPzyoPOl1DMfOgzI6Bw");
function bot($method,$datas=[]){
    $url = "https://api.telegram.org/bot".API_KEY."/".$method;
    $ch = curl_init();
    curl_setopt($ch,CURLOPT_URL,$url);
    curl_setopt($ch,CURLOPT_RETURNTRANSFER,true);
    curl_setopt($ch,CURLOPT_POSTFIELDS,$datas);
    $res = curl_exec($ch);
    if(curl_error($ch)){
        var_dump(curl_error($ch));
    }else{
        return json_decode($res);
    }
}

$update = json_decode(file_get_contents('php://input'));
$message = $update->message;
$chat_id = $message->chat->id;
$text = $message->text;
$name = $message->from->first_name;
$admin = "1183747742";
$fwd = $message->forward_from_chat->id;
$new_member = $update->message->new_chat_member; 
$left = $update->message->left_chat_member; 
$textmsg = $message->text;
$message_id = $message->message_id;
$rep = $message->reply_to_message; 
$rep_msg = $rep->message_id; 
$id_sudo = 1183747742;
$get = file_get_contents('file.txt');
$ex = explode("\n", $get);
$count = count($ex);
$type = $update->message->chat->type;
$re = $update->message->reply_to_message;
$re_id = $update->message->reply_to_message->from->id;
$re_user = $update->message->reply_to_message->from->username;
$user_id = $update->message->from->id;
$re_name = $update->message->reply_to_message->from->first_name;
$re_msgid = $update->message->reply_to_message->message_id;
$name = $message->from->name;
$username = $message->from->username;
$chat_id2 = $update->callback_query->message->chat->id;
$message_id = $update->message->message_id;
$id = $message->from->id;
$time = time() + (979 * 11 + 1 + 30);

/////////

if($text == "اغاني"){
bot('sendMessage',[
'chat_id'=>$chat_id,
'message_id'=>$message_id,
'text'=> "

• اهلا بيك ياحبيب قلبي ف قائمه الاغاني
🎶 ── 𝑨𝑳𝑨𝒁𝑰𝒁𝒀 ── 🎶
◈
◈ مهرجانات 🎶
◈ مسلم 🎶
◈ محمد منير 🎶
 
◈ 
🎶 ── 𝑨𝑳𝑨𝒁𝑰𝒁𝒀 ── 🎶





",
'parse_mode'=>"MARKDOWN",
'reply_markup'=>json_encode([
      'inline_keyboard'=>[
[

['text'=>"𝐌𝐎𝐒𝐓𝐀𝐅𝐀 𝐀𝐋𝐀𝐙𝐈𝐙𝐘" ,'url'=>"https://t.me/alazizy"]
],
]
])
]);
}


if($text == "منو"){
bot('sendmessage',[
'chat_id'=>$chat_id,
'message_id'=>$message_id,
'text'=> "
تعال :(

",
'parse_mode'=>"MARKDOWN",
'reply_markup'=>json_encode([
      'inline_keyboard'=>[
[
    ['text'=>"ＤＥＶＥＬＰＯＩＮＴ",'url'=>"https://t.me/alazizy"],
['text'=>"help" ,'url'=>"https://t.me/li5kilbot"]
],
]
])
]);
}





if($text == "هلو"){
bot('sendaudio',[
'chat_id'=>$chat_id, 
'audio'=>"https://t.me/tofywwww/218",
'reply_to_message_id'=>$message->message_id, 
]);
}

if($text == "id"){
bot( sendmessage ,[
 chat_id =>$chat_id,
 message_id =>$message_id,
 text =>"⚪ - ايديك :- $id

⚫ - ايدي المجموعه :- $chat_id",
 parse_mode =>"MARKDOWN",
 reply_markup =>json_encode([
       inline_keyboard =>[
[
[ text =>"ＤＥＶＥＬＰＯＩＮＴ" , url =>"https://t.me/alazizy"]
],
]
])
]);
}

if($text == "ايدي"){
bot( sendmessage ,[
 chat_id =>$chat_id,
 message_id =>$message_id,
 text =>"⚪ - ايديك :- $id

⚫ - ايدي المجموعه :- $chat_id

",
 parse_mode =>"MARKDOWN",
 reply_markup =>json_encode([
       inline_keyboard =>[
[
[ text =>"ＤＥＶＥＬＰＯＩＮＴ" , url =>"https://t.me/alazizy"]
],
]
])
]);
}

if($rep && $text=="تثبيت"){
bot('pinChatMessage',[
'chat_id'=>$chat_id,
'message_id'=>$rep_msg
]);
}

if($text == "دي"){
bot('sendaudio',[
'chat_id'=>$chat_id, 
'audio'=>"https://t.me/tofywwww/219",
'reply_to_message_id'=>$message->message_id, 
]);
}

if($text == "ههه" ){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>"دوِمٰ̲ہ ضۜہٰٰحہٰٰڪٰྀہٰٰٖتَہَٰڪٰྀہٰٰٖ 🙊😻" ,
'reply_to_message_id'=>$message->message_id,
]);
}

if($text == "🚶🐕"){
bot( sendaudio ,[
 chat_id =>$chat_id, 
 audio =>"https://t.me/tofywwww/246",
 reply_to_message_id =>$message->message_id, 
]);
}

if($text == "سيد فاقد"){
bot('sendaudio',[
'chat_id'=>$chat_id, 
'audio'=>"https://t.me/tofywwww/254",
'reply_to_message_id'=>$message->message_id, 
]);
}

if($text == "هه" ){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>" ھہآيِٰہ ھہمٰ̲ہ تَہَٰسٰٰٓمٰ̲ہئ ضۜہٰٰحہٰٰڪٰྀہٰٰٖھہ☹️ " ,
'reply_to_message_id'=>$message->message_id,
]);
}

if($text == "جوعان" ){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>" شِٰہٰٰبّہيِٰہڪٰྀہٰٰٖ شِٰہٰٰڪٰྀہٰٰٖد تَہَٰآڪٰྀہٰٰٖوِل وِمٰ̲ہآتَہَٰشِٰہٰٰبّہ؏ۤـہٰٰ😒 " ,
'reply_to_message_id'=>$message->message_id,
]);
}

if($text == "باي" ){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>" ِٰٰྀوِيِٰہنَِٰہٰ رآيِٰہحہٰٰ بّہ؏ۤـہٰٰد وِقྀ̲ہٰٰٰتَہَٰ 😔🌱 " ,
'reply_to_message_id'=>$message->message_id,
]);
}

if($text == "جكجاو" ){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>" خٰ̐ہليِٰہنَِٰہٰة نَِٰہٰآخٰ̐ہوِذِ رآحہٰٰتَہَٰنَِٰہٰآ 😹🙊 " ,
'reply_to_message_id'=>$message->message_id,
]);
}

if($text == "جاوو" ){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>" تَہََٰ؏ۤـہٰٰآّإآّإلّ آڪٰྀہٰٰٖلڪٰྀہٰٰٖ شِٰہٰٰيِٰہ قྀ̲ہٰٰٰبّہل لٱ تَہَٰروِحہٰٰ 🌝💛ِٰٰٰٰྀ " ,
'reply_to_message_id'=>$message->message_id,
]);
}


if($text == "كولي" ){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>"آنَِٰہٰيِٰہ ضۜہٰٰآيِٰہجْۧھہ آبّہقྀ̲ہٰٰٰى ھہنَِٰہٰآ ☹️🚶‍♀ " ,
'reply_to_message_id'=>$message->message_id,
]);
}

if($text == "🙂" ){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>" ؏ۤـہٰٰوِد صۛہٰٰآيِٰہر ثہٰٰڪٰྀہٰٰٖيِٰہل 😕 " ,
'reply_to_message_id'=>$message->message_id,
]);
}

if($text == "هاي" ){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>" ھہـآيِٰہآتَہَٰ يِٰہروِحہٰٰيِٰہ 😻👅" ,
'reply_to_message_id'=>$message->message_id,
]);
}

if($text == "😕" ){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>"ليِٰہشِٰہٰٰ ڪٰྀہٰٰٖآلبّہڪٰྀہٰٰٖ شِٰہٰٰڪٰྀہٰٰٖلڪٰྀہٰٰٖ مٰ̲ہوِ ؏ۤـہٰٰليِٰہنَِٰہٰھہ 🌝🎋 " ,
'reply_to_message_id'=>$message->message_id,
]);
}

if($text == "جوعانة" ){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>" ٰٰ😒 تَہََٰ؏ۤـہٰٰآّإآّإلّيِٰہ آڪٰྀہٰٰٖليِٰہنَِٰہٰيِٰہ 😹🙄   " ,
'reply_to_message_id'=>$message->message_id,
]);
}

if($text == "ها"){
bot( sendaudio ,[
 chat_id =>$chat_id, 
 audio =>"https://t.me/tofywwww/248",
 reply_to_message_id =>$message->message_id, 
]);
}

if($text == "😡"){
bot( sendaudio ,[
 chat_id =>$chat_id, 
 audio =>"https://t.me/tofywwww/247",
 reply_to_message_id =>$message->message_id, 
]);
}

if($text == "😔"){
bot( sendaudio ,[
 chat_id =>$chat_id, 
 audio =>"https://t.me/tofywwww/243",
 reply_to_message_id =>$message->message_id, 
]);
}

if($text == "🚶💔"){
bot( sendaudio ,[
 chat_id =>$chat_id, 
 audio =>"https://t.me/tofywwww/245",
 reply_to_message_id =>$message->message_id, 
]);
}

if($text == "🌚"){
bot( sendaudio ,[
 chat_id =>$chat_id, 
 audio =>"https://t.me/tofywwww/244",
 reply_to_message_id =>$message->message_id, 
]);
}

if($text == "مرحبا"){
bot( sendaudio ,[
 chat_id =>$chat_id, 
 audio =>"https://t.me/tofywwww/223",
 reply_to_message_id =>$message->message_id, 
]);
}

if($text == "بوت"){
bot( sendaudio ,[
 chat_id =>$chat_id, 
 audio =>"https://t.me/tofywwww/231",
 reply_to_message_id =>$message->message_id, 
]);
}

if($text == "خاصك"){
bot( sendaudio ,[
 chat_id =>$chat_id, 
 audio =>"https://t.me/tofywwww/230",
 reply_to_message_id =>$message->message_id, 
]);
}

if($text == "خاصج"){
bot( sendaudio ,[
 chat_id =>$chat_id, 
 audio =>"https://t.me/tofywwww/230",
 reply_to_message_id =>$message->message_id, 
]);
}

if($text == "😹😹"){
bot( sendaudio ,[
 chat_id =>$chat_id, 
 audio =>"https://t.me/tofywwww/229",
 reply_to_message_id =>$message->message_id, 
]);
}

if($text == "😹"){
bot( sendaudio ,[
 chat_id =>$chat_id, 
 audio =>"https://t.me/tofywwww/229",
 reply_to_message_id =>$message->message_id, 
]);
}

if($text == "8282828w8w"){
bot( sendaudio ,[
 chat_id =>$chat_id, 
 audio =>"https://t.me/tofywwww/232",
 reply_to_message_id =>$message->message_id, 
]);
}

if($text == "ضوجه"){
bot( sendaudio ,[
 chat_id =>$chat_id, 
 audio =>"https://t.me/tofywwww/233",
 reply_to_message_id =>$message->message_id, 
]);
}

if($text == "انجبي"){
bot( sendaudio ,[
 chat_id =>$chat_id, 
 audio =>"https://t.me/tofywwww/227",
 reply_to_message_id =>$message->message_id, 
]);
}

if($text == "باسم الكربلائي"){
bot( sendaudio ,[
 chat_id =>$chat_id, 
 audio =>"https://t.me/tofywwww/224",
 reply_to_message_id =>$message->message_id, 
]);
}

if($text == "حزين"){
bot( sendaudio ,[
 chat_id =>$chat_id, 
 audio =>"https://t.me/al_aziza1/5763",
 reply_to_message_id =>$message->message_id, 
]);
}

if($text == "يالله"){
bot( sendaudio ,[
 chat_id =>$chat_id, 
 audio =>"https://t.me/al_aziza1/5763",
 reply_to_message_id =>$message->message_id, 
]);
}

if($text == "حسين رعد"){
bot( sendaudio ,[
 chat_id =>$chat_id, 
 audio =>"https://t.me/al_aziza1/5763",
 reply_to_message_id =>$message->message_id, 
]);
}

if($text == "توش"){
bot( sendaudio ,[
 chat_id =>$chat_id, 
 audio =>"https://t.me/tofywwww/225",
 reply_to_message_id =>$message->message_id, 
]);
}

if($text == "تمام"){
bot( sendaudio ,[
 chat_id =>$chat_id, 
 audio =>"https://t.me/tofywwww/235",
 reply_to_message_id =>$message->message_id, 
]);
}

if($text == "احبج"){
bot( sendaudio ,[
 chat_id =>$chat_id, 
 audio =>"https://t.me/tofywwww/236",
 reply_to_message_id =>$message->message_id, 
]);
}

if($text == "نرتبط"){
bot( sendaudio ,[
 chat_id =>$chat_id, 
 audio =>"https://t.me/tofywwww/236",
 reply_to_message_id =>$message->message_id, 
]);
}

if($text == "مخنوك"){
bot( sendaudio ,[
 chat_id =>$chat_id, 
 audio =>"https://t.me/UUV12/80",
 reply_to_message_id =>$message->message_id, 
]);
}
if($text == "مخنوكة"){
bot( sendaudio ,[
 chat_id =>$chat_id, 
 audio =>"https://t.me/UUV12/79",
 reply_to_message_id =>$message->message_id, 
]);
}

if($text == "مخنوك"){
bot( sendaudio ,[
 chat_id =>$chat_id, 
 audio =>"https://t.me/UUV12/79",
 reply_to_message_id =>$message->message_id, 
]);
}

if($text == 'تفعيل'){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>"يشتغل بدون تفعيل حمبي",
]);
}
if($text == "شكو ماكو"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"سلامتك",
'reply_to_message_id'=>$message->$message_id,
]);
}
if($text == "شلونك"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"تمام",
'reply_to_message_id'=>$message->$message_id,
]);
}
if($text == "تحبني"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"اعشقك",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "انجب"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"اكيد",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "جذاب"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"لا",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "ها"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"وجعا",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "ولي"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"دي",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "احبك"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"واني هم",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "حلو"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"ٱنـﮩـت الاحـلا",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "😎"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"يلا عود انته فد نعال",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "😱"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"خير خوفتني ",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "منو اكثر واحد"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"خالتك",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "منو اكثر واحد"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"وك اسف 🙁",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "ابن الكلب"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"عيب ابني 🔥",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "كواد"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"عيب 😨�🔥",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "حيدر"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" ؤرده مال الله هاذا",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "قندره"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"😂بحلكك😂",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "هلو"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"هـﮩـڵآوات",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "هلا"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"✾  هـﮩـڵا ہبـﮩـک ",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "مرحبا"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"  مٌـﮩۚـرحـﮩۘـتين",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "كاسبر"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"راح يلتحق عوفه بنلخرا",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "☹️"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"لـﮩـضـوج פـٍـٍبيبي",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "ههه"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"دوم פـٍـٍبيبي",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "هههه"){
bot('sendMessage',[
'chat_id'=>$chat_id,

'text'=>"دوم פـٍـٍبيبي",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "ههههه"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"دوم פـٍـٍبيبي",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "هههههه"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"دوم פـٍـٍبيبي",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "😍"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"عود فرحان الوصخ",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "☺️"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"اكعد راحه سمير",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "💋"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"انته غير سافل",
'reply_to_message_id'=>$message->message_id, 
]);
}

if($text == "ممكن نتعرف"){
bot( sendaudio ,[
 chat_id =>$chat_id, 
 audio =>"https://t.me/tofywwww/236",
 reply_to_message_id =>$message->message_id, 
]);
}

if($text == "حلو"){
bot('sendaudio',[
'chat_id'=>$chat_id, 
'audio'=>"https://t.me/tofywwww/240",
'reply_to_message_id'=>$message->message_id, 
]);
}

if($text == "☹️"){
bot('sendaudio',[
'chat_id'=>$chat_id, 
'audio'=>"https://t.me/tofywwww/239",
'reply_to_message_id'=>$message->message_id, 
]);
}

if($text == "🌝"){
bot('sendaudio',[
'chat_id'=>$chat_id, 
'audio'=>"https://t.me/tofywwww/241",
'reply_to_message_id'=>$message->message_id, 
]);
}

if($text == "منورة"){
bot( sendaudio ,[
 chat_id =>$chat_id, 
 audio =>"https://t.me/tofywwww/242",
 reply_to_message_id =>$message->message_id, 
]);
}

if($text == "🚶" ){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>" مٰ̲ہتَہَٰڪٰྀہٰٰٖليِٰہ شِٰہٰٰ؏ۤـہٰٰنَِٰہٰدڪٰྀہٰٰٖ تَہَٰمٰ̲ہشِٰہٰٰيِٰہ لخٰ̐ہآطر آللھہ 🤔" ,
'reply_to_message_id'=>$message->message_id,
]);
}

if($text == "منور"){
bot( sendaudio ,[
 chat_id =>$chat_id, 
 audio =>"https://t.me/tofywwww/242",
 reply_to_message_id =>$message->message_id, 
]);
}

if($new_member){ 
bot('sendMessage',[ 
'chat_id'=>$chat_id, 
'message_id'=>$message->message_id, 
'text'=>"• نورت ياحبيب قلبي 🤍 
 ❬ ممنوع الالفاظ والبرايفت واللينكات ❭ 
 ⚠️
 ❬ غير كدة كلنا اخوات واصحاب ❭ ❤️ 
 √",
 reply_to_message_id =>$message->message_id,
'reply_markup'=>json_encode([
 'inline_keyboard'=>[
[
[ 'text' =>" قناه السورس", 'url' =>"https://t.me/BANDA1M"]
]
              ]
        ])
  ]);
}
if($left){ 
bot('sendMessage',[ 
'chat_id'=>$chat_id, 
'message_id'=>$message->message_id, 
'text'=>"يلا غور اطلعبرا..😹💛", 
 reply_to_message_id =>$message->message_id,
 'reply_markup'=>json_encode([
'inline_keyboard'=>[
[
['text'=>" قناه السورس",'url'=>"t.me/al_aziza1"]
]
]
])
]);
}

if($text == "هلو" or $text == "هلاو"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"هلاوات نورت ❤️",
'reply_to_message_id'=>$message->message_id, 
]);
}


if($rep && $text=="تثبيت"){
bot('pinChatMessage',[
'chat_id'=>$chat_id,
'message_id'=>$rep_msg
]);
}

$New_member = $message->new_chat_member;
$usser = $New_member->username;
$id = $New_member->id; 
$id_bot = 409827191;
if(preg_match('/^(.*)([Bb][Oo][Tt])/',$usser) and $New_member and $id != $id_bot){
bot('kickChatMember',[
'chat_id'=>$chat_id,
'user_id'=>$id
]);
}

if($text == "الوقت"){
bot('sendmessage',[
'chat_id'=>$chat_id,
'message_id'=>$message_id,
'text'=>"
الشهر :- " . date("n") . "\n" . " اليوم :- " . date("j") . "\n" . " الساعه :- " . date( g , $time) . "\n" . "الدقيقه :- " . date( i , $time) . "\n" . "",
'parse_mode'=>"MARKDOWN",
'reply_markup'=>json_encode([
      'inline_keyboard'=>[
[
['text'=>"قناه السورس " ,'url'=>"https://t.me/BANDA1M"]
],
]
])
]);
}

if($text == "🙈"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"عود يستحي الوصخ",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "😐"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"كبر لفك",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "😞"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"ع شنو ضايج",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "🚶"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"وين جاي وين مولي",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "ضوجه"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"واني شعليه مثلا شسؤيلك",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "😻"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"ع شنو فرحان😒",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "😞"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"يمه فدوه ضايج الحلو🙊",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "😹"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"شعجب هلكد تضحك😹",
'reply_to_message_id'=>$message->message_id, 
]);
}

if($text == "بمكن علاقه"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"دي😹سؤي ؤيه خالتك ",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "حبيتك"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"شنو من اول رد حبيتني😹😹",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "مشتاقلك"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"انته ليش اجذب؟😹",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "مشتاقلج"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"😹بدء الزحف😹",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "شكد عمرك"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"اسف مرتبط😹",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "🙄"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"عدل عيؤنك لصير احول😐",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "هلو باي"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"شحسيت من هيج كتبت😹",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "خره"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" بـحـلكڪ😒💦 ",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "نعال"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" اخلاقك حبي😹😻",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "تعال"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" وين اجي😕 ",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "السلام عليكم"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" وعليكم السلام ورحمه حته الله😒😹 ",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "مساء الخير"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" مساء النؤر حياتي ",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "صباح الخير"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" صباح الؤرد🙈 ",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "باي"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" سلمنه ع اهلك كلهم😹 ",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "تصبحون ع خير"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" وانته من اهلو ",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "هاي"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" هايات يرؤحي🙈😻",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "احم"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" اسـم الله😧اشربـ/ي دوة😓 ",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "وينك"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" موجود حبي☺️",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "اكلك"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" لتكول تره صطرتنه😹",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "اتفل"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" خووووختف💦💦",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "اموت عليك"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" 😻me to love🙈",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "شكو"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" لتدخل بما لا يعنيك😹🐸",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "اكلكم"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"😹لتكول😹",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "اوف"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" سلامتك من ال اوف",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "شونك"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" ع خودا😹 وانته",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "احجي عربي"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" لك بابا العربي ميرادله شي بس اقراه انكليزي😹",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "💔"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" ع شنو مكسؤر قلبك😒",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "تسلم"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" عياتو ولو😹🙈",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "شكرا"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" ولو😹",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "اجه العيد"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"😹 لعد متسبح😹",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "😡"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" يممه هدي اعصابك هديهه😹اهم شي صحتك😹",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "🌺"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" وانته عطرهه😻❤️",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "🐸"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" ساحف😹",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "😴"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" متولي تنام لعد😒😹",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "👳‍♀️"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" استر علينه شيخ😹😹",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "🤔"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" 😹بشنو دتفكر 😕",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "💦"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" بوجهك ياكلب بن الكلب",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "🤓"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" شدتحس😜",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "😏"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" عدل حلكك يول😂",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "انته بتحبني"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" 😹ولله ما ادري بس افكر😕",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "خاص"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" اجي وياكم😻",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "تكرهني"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"موووووت",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "اضحك"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"هههههههههههههه",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "ابجي"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"اهئ اهئ اهئ اهئ",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "من وين"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"بغداد",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "ع راسي"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"سالم راسك",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "فدوه"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"لخشمك يرؤحي",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "شنو احسن مسرح"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"كرياتين ووويلي يخبل",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "كرياتين"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"يخبل احسن نوعيه للشعر",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "موهير"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"يخلونه ما بعد الكرياتين حته الشعر يخبل يصير وسرح ولمعه بي ",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "عسل"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" مثلك😻",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "فديتك"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" فداك الي بالي😻",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "منو بالك"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" عباس ابو الغاز شبيك😻",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "استغفرلله"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" بركاتك مولاي♡♥️",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "راح اكفر"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"اشك حلكك اذا اسؤيهه",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "مداك"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" اجاوزك بسرعتي امري لله😻",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "امك شلونهه"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"مو البارحه جانت يم امك",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "ابوك شلونه"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" الحمدلله بخير😻",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "ها"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"ولطما الي تلطمك",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "اكلج"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"داحسك دتزحف",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "تخليني"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" وانته وين عدك😻",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "مطي"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" حسن اخلاقك حب",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "نعل"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" بحلكك كبد",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "اموري"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" العشق♡♥️",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "ضرغام"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"الغالي مالي♡♥️",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "بخير"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" عساك دوم انشالله",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "ليش احبك"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"♥️لان انته عشقي♥️",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "ليش اكرهك"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" لان ما احترمك😻",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "ضيف جديد"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"*اهلا وسهلا~♡",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "هلوو"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" يممممه هلا ب نبضي♡♥️😻",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "احبج"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" وليحب بلوه وين الله وقسمتي ترؤح يم عيؤؤنج الحلوه",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "شكد تحبني"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" بكد هوه الله بكد الكائنات",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "موال"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"☝🏿شكولي مال تحشيش ماخربها بلموال 😹❤️",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "صاكه"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" وينها خلي اكفش شعرها 😹😍 ",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "عشق"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" يمه اذوبــن 😌❤️ ",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "مرتي"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" يمه اذوبــن ♡♥️",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "ملابس"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" 🌚☝🏿 تريدهن من المول لو من باله ؟ ",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "مول"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" 😹☝🏿يريد يقطني ماشتريلك لوتموت ",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "باله"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>" 😹☝🏿 موحلوات عليك هم ماشتريلك
",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "اشو ماكو احد"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"موجودين حياتي-_-♥️",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "بعدك لو بطلت"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"بربك اكو واحد يعوف شغله -_-",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "ديي"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"انته اكبر زربه وبطل هاي اخلاقك زباله",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "اشو مختفي"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"وين مختفي بنلخرا غير موجود-_-",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "علو"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"اول شي كولهه عدل؟ثاني شي احجي",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "روجي"){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>"ولك هاذا واحد سافل وسخيف لتحجي وياهه نصيحه مني ولله ع مودك -_-",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "😐💔"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"شبيك كال خلقتك",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "حبك"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"اعشقك يروح الروح",
'reply_to_message_id'=>$message->message_id, 
]);
} 
if($text == "اكرهك"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"بس مو بكدي ههه",
'reply_to_message_id'=>$message->message_id, 
]);
} 
if($text == "ممكن نتعرف"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"لا اسف مرتبط  ",
'reply_to_message_id'=>$message->message_id, 
]);
} 
if($text == "😴"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"ولي نام اذا هيج نعسان😹😹",
'reply_to_message_id'=>$message->message_id, 
]);
} 
if($text == "🙄"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"باوع عدل مطي😹😕",
'reply_to_message_id'=>$message->message_id, 
]);
} 
if($text == "حبيتج"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"لي اجذب انته وشبسرعه حبيتهه بن الزاحف😹😹",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "غنيلي"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"صوتي خره مو مال اغاني",
'reply_to_message_id'=>$message->message_id, 
]);
} 
if($text == "بوسني"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"ٲٳمٌـۧ﴿🌝💋﴾ـۛويِّحًهٍہ💕⇣ֆ ",
'reply_to_message_id'=>$message->message_id, 
]);
} 
if($text == "بوسه قويه"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"ٲٳمٌممممممممممممممممممـۧ﴿🌝💋﴾ـۛويِّحًهٍہ💕⇣ֆ ",
'reply_to_message_id'=>$message->message_id, 
]);
} 
if($text == "تحب روجي"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"لاع خلي ولي وصخ😹",
'reply_to_message_id'=>$message->message_id, 
]);
} 
if($text == "شغل ضوه"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"ميحتاج اشغله هوه انته شمعه ",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "علي المنصوري"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"الدنيا وش الدنيا لو شح الحبيب وويلي😍😍",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "اني منو"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"شمدريني متكلي تره اني بوت مو شخص 😹😕",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "ضوجه"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"ولي اطلع شعليه اني جاي يمي تكول ضوجه😹😐",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "تحبيني"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"ها بده الزحف مو😹😕",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "شغل مولده"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"بانزين مابيهه ولي جيب واشغلهه ",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "جبت بانزين"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"تدلل هسه اشغله بس لم من كل عضو الف مال بانزين😹😹",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "ايفون"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"وويلي كون عدي بس ولو زباله يرادله ايتونز😹😕",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "شكد متابعينج"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"مليارات قابل مثلك فاشل",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "اشكرك"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"ولو😍😹",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "شغل ثلاجه"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"شغلتهه ولدزني بعد تريد كوم انته فتهمت😡😹 ",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "شغل بلازما"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"تعبت ولرب كوم انته فدوه😹😻😻",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "شغل المروحه"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"😻شغلتهه استادي🙈😻",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "رتب الكروب راح يجي خطار"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"رتبته من الصبح كعدت ب 6😹😹🙈",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "🙈"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"عود يستحي وجه القرد الوصخ😹😹😹",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "زباله"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"لشبهني بيك فدوه",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "شسمج"){
bot('sendMessage',[
'chat_id'=>$chat_id, 
'text'=>"✧ دّلّـﮩﮧـؤٰ୭شـۿﮧّ😻🌸 ℡",
'reply_to_message_id'=>$message->message_id, 
]);
}
if($text == "نعال"  ){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=> " بـﮩـوجـهـڪ 😐😂" ,
'reply_to_message_id'=>$message->message_id,
]);
}
if($text == "حروح اسبح"  ){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>" واخيراً 😹🌝"  ,
'reply_to_message_id'=>$message->message_id,
]);
}
if($text ==  "حروح اغسل" ){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>" واخيراً 😹🌝"  ,
'reply_to_message_id'=>$message->message_id,
]);
}
if($text ==   "حروح اطب للحمام" ){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>" واخيراً 😹🌝"  ,
'reply_to_message_id'=>$message->message_id,
]);
}
if($text ==   "حبيبتي" ){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>" منو هاي 😱 تخوني 😔☹️"  ,
'reply_to_message_id'=>$message->message_id,
]);
}
if($text ==  "كبلت" ){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>" بلخير 😂💔" ,
'reply_to_message_id'=>$message->message_id,
]);
}
if($text == "البوت عاوي" ){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>" اطردك ؟ 😒"  ,
'reply_to_message_id'=>$message->message_id,
]);
}
if($text ==  "منور" ){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=> " بـﮩـنورك حـﮩـبـﮩـي 😍🍷"  ,
'reply_to_message_id'=>$message->message_id,
]);
}
if($text == "حفلش"  ){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=> " افلش راسك"  ,
'reply_to_message_id'=>$message->message_id,
]);
}
if($text == "كردي"  ){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=> "والنعم منك ❤️" ,
'reply_to_message_id'=>$message->message_id,
]);
}
if($text == "🌝"  ){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=>"مــﮩﮩﮩــننوورر 🌝💙" ,
'reply_to_message_id'=>$message->message_id,
]);
}
if($text ==   "حلو" ){
bot('sendMessage',[
'chat_id'=>$chat_id,
'text'=> "ٱنـﮩـت الاحـلآ 🌚❤️"  ,
'reply_to_message_id'=>$message->message_id,
]);
}


?>