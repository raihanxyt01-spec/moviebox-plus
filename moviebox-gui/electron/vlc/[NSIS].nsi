; NSIS script (UTF-8) NSIS-3 Unicode
; Install

Unicode true
SetCompressor /SOLID lzma
SetCompressorDictSize 8

; --------------------
; HEADER SIZE: 1210924
; START HEADER SIZE: 300
; MAX STRING LENGTH: 1024
; STRING CHARS: 278697

OutFile [NSIS].exe
!include WinMessages.nsh

LicenseBkColor /windows


; --------------------
; LANG TABLES: 53
; LANG STRINGS: 133

Name "VLC media player"
BrandingText "VideoLAN VLC media player"

; LANG: 1066
LangString LSTR_0 1066 "VideoLAN VLC media player"
LangString LSTR_1 1066 "Cài đặt $(LSTR_2)"
LangString LSTR_2 1066 "VLC media player"
LangString LSTR_3 1066 "Dung lượng hiện có: "
LangString LSTR_4 1066 "Dung lượng yêu cầu: "
LangString LSTR_5 1066 "Không thể ghi: "
LangString LSTR_8 1066 "Không thể tìm thấy biểu tượng: "
LangString LSTR_9 1066 "Không thể nạp: "
LangString LSTR_10 1066 "Tạo thư mục: "
LangString LSTR_11 1066 "Tạo lối tắt: "
LangString LSTR_12 1066 "Tạo trình gỡ bỏ: "
LangString LSTR_13 1066 "Xóa tập tin: "
LangString LSTR_14 1066 "Xóa khi khởi động lại: "
LangString LSTR_15 1066 "Lỗi khi tạo lối tắt: "
LangString LSTR_16 1066 "Lỗi khi tạo: "
LangString LSTR_17 1066 "Lỗi khi giải nén dữ liệu! Có thể trình cài đặt đã bị hỏng?"
LangString LSTR_19 1066 "ExecShell: "
LangString LSTR_20 1066 "Thực thi: "
LangString LSTR_21 1066 "Trích xuất: "
LangString LSTR_22 1066 "Trích xuất: lôi khi ghi vào tập tin "
LangString LSTR_23 1066 "Trình cài đặt bị hỏng: mã tác vụ bất hợp lệ"
LangString LSTR_24 1066 "Không có OLE cho: "
LangString LSTR_25 1066 "Thư mục đầu ra: "
LangString LSTR_26 1066 "Xóa thư mục: "
LangString LSTR_29 1066 "Đã bỏ qua: "
LangString LSTR_30 1066 "Sao chép Chi tiết vào Clipboard"
LangString LSTR_32 1066 B
LangString LSTR_33 1066 " K"
LangString LSTR_34 1066 " M"
LangString LSTR_35 1066 " G"
LangString LSTR_36 1066 "Được khuyến nghị"
LangString LSTR_37 1066 "Tối thiểu"
LangString LSTR_38 1066 "Đầy đủ"
LangString LSTR_39 1066 "Lỗi khi mở tập tin để ghi: $\r$\n$\r$\n$0$\r$\n$\r$\nNhấn “Hủy bỏ” để ngừng việc cài đặt,$\r$\n“Thử lại” để thử lần nữa, hoặc$\r$\n“Bỏ qua” để bỏ qua tập tin này."
LangString LSTR_40 1066 0
LangString LSTR_41 1066 "Chào mừng đến với Trợ lí Cài đặt $(LSTR_132)"
LangString LSTR_42 1066 "MS Shell Dlg"
LangString LSTR_43 1066 "Trình trợ lí sẽ hướng dẫn bạn việc cài đặt $(LSTR_132).$\r$\n$\r$\nBạn nên đóng tất cả các chương trình khác trước khi bắt đầu cài đặt. Điều này có thể giúp cập nhật các tập tin hệ thống mà không cần phải khởi động lại máy tính.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1066 "Bây giờ bạn đã nhận thức được các quyền của bạn. Click Tiếp để tiếp tục."
LangString LSTR_45 1066 "&Tiến >"
LangString LSTR_46 1066 "Thỏa thuận Giấy phép"
LangString LSTR_47 1066 "Vui lòng xem xét các điều khoản giấy phép trước khi cài đặt $(LSTR_132)."
LangString LSTR_48 1066 "Ấn Page Down để xem phần còn lại của thỏa thuận."
LangString LSTR_49 1066 "Chọn thành phần"
LangString LSTR_50 1066 "Chọn các tính năng của $(LSTR_132) mà bạn muốn cài đặt."
LangString LSTR_51 1066 "Mô tả"
LangString LSTR_52 1066 "Rê chuột lên trên một thành phần để thấy mô tả của nó."
LangString LSTR_53 1066 "Chọn thư mục cài đặt"
LangString LSTR_54 1066 "Chọn thư mục để cài đặt $(LSTR_132)."
LangString LSTR_55 1066 "Cài đặt"
LangString LSTR_56 1066 "Vui lòng đợi trong khi $(LSTR_132) đang được cài đặt."
LangString LSTR_57 1066 "Cài đặt hoàn tất"
LangString LSTR_58 1066 "Việc cài đặt đã hoàn tất thành công."
LangString LSTR_59 1066 "Cài đặt bị hủy"
LangString LSTR_60 1066 "Việc cài đặt không hoàn tất thành công."
LangString LSTR_61 1066 "&Hoàn thành"
LangString LSTR_62 1066 "Hoàn tất Cài đặt $(LSTR_132)"
LangString LSTR_63 1066 "$(LSTR_132) đã được cài đặt vào máy tính của bạn.$\r$\n$\r$\nNhấn “Hoàn thành” để đóng Trình trợ lí."
LangString LSTR_64 1066 "&Chạy $(LSTR_132)"
LangString LSTR_65 1066 "Đi đến trang web của VideoLAN trình phát phương tiện VLC"
LangString LSTR_66 1066 8
LangString LSTR_67 1066 "Bạn có thật sự muốn thoát trình Cài đặt $(LSTR_2) không?"
LangString LSTR_68 1066 Phát
LangString LSTR_69 1066 "VLC có vẻ đang chạy và sẽ được đóng ngay."
LangString LSTR_70 1066 "Trình cài đặt này không thể đóng VLC, hãy đóng nó thủ công."
LangString LSTR_71 1066 "Cài đặt bị huỷ!"
LangString LSTR_72 1066 "Trình phát phương tiện (bắt buộc)"
LangString LSTR_73 1066 "Đang kiểm tra các tiến trình..."
LangString LSTR_74 1066 "Phát bằng trình phát phương tiện VLC"
LangString LSTR_75 1066 "Lối tắt trên menu Bắt đầu"
LangString LSTR_76 1066 "Lối tắt trên Desktop"
LangString LSTR_77 1066 "Web plugins"
LangString LSTR_78 1066 "ActiveX plugin"
LangString LSTR_79 1066 "Phát các đĩa"
LangString LSTR_80 1066 "Phát bộ phim DVD"
LangString LSTR_81 1066 "Phát CD âm thanh"
LangString LSTR_82 1066 "Phát bộ phim VCD"
LangString LSTR_83 1066 "Phát bộ phim SVCD"
LangString LSTR_84 1066 "Phát DVD âm thanh"
LangString LSTR_85 1066 "Phát các tệp video"
LangString LSTR_86 1066 "Phát các tệp âm thanh"
LangString LSTR_87 1066 "Phát Blu-ray"
LangString LSTR_88 1066 "Sự liên kết loại tệp"
LangString LSTR_89 1066 "Các tệp âm thanh"
LangString LSTR_90 1066 "Các tệp video"
LangString LSTR_91 1066 Khác
LangString LSTR_92 1066 "Context Menus"
LangString LSTR_93 1066 "Thêm vào danh sách phát của trình phát phương tiện VLC"
LangString LSTR_94 1066 "Xoá cài đặt và bộ nhớ đệm"
LangString LSTR_95 1066 "Bản thân trình phát phương tiện"
LangString LSTR_96 1066 "Thêm biểu tượng vào menu bắt đầu để dễ truy cập"
LangString LSTR_97 1066 "Thêm biểu tượng vào Desktop để dễ truy cập"
LangString LSTR_98 1066 "The VLC ActiveX plugin"
LangString LSTR_99 1066 "DVD and CD playback registration"
LangString LSTR_100 1066 "Sets VLC media player as the default application for the specified file type"
LangString LSTR_101 1066 "Add context menu items ('Play With VLC' and 'Add To VLC's Playlist')"
LangString LSTR_102 1066 "Xoá cài đặt và tệp bộ nhớ đệm của trình phát phương tiện VLC còn sót lại từ các lần cài đặt trước"
LangString LSTR_103 1066 "Đã được cài đặt"
LangString LSTR_104 1066 "Chọn cách bạn muốn cài đặt VLC."
LangString LSTR_105 1066 "Một phiên bản cũ hơn của VLC được cài đặt trên hệ thống của bạn. Chọn hoạt động bạn muốn thực hiện và click Tiếp để tiếp tục."
LangString LSTR_106 1066 "Nâng cấp VLC dùng cài đặt trước (được khuyến nghị)"
LangString LSTR_107 1066 "Thay đổi cài đặt (nâng cao)"
LangString LSTR_108 1066 "Một phiên bản mới hơn của VLC đã được cài đặt! Việc hạ cấp xuống một phiên bản cũ hơn không được khuyến nghị. Chọn hoạt động bạn muốn thực hiện và click Tiếp để tiếp tục."
LangString LSTR_109 1066 "Hạ cấp VLC dùng cài đặt trước (được khuyến nghị)"
LangString LSTR_110 1066 "Chọn tuỳ chọn bảo trì để thực hiện."
LangString LSTR_111 1066 "VLC 3.0.24 đã được cài đặt. Chọn hoạt động bạn muốn thực hiện và click Tiếp để tiếp tục."
LangString LSTR_112 1066 "Thêm/Gỡ bỏ/Cài đặt lại các thành phần"
LangString LSTR_113 1066 "Gỡ cài đặt VLC"
LangString LSTR_114 1066 "Tùy biến"
LangString LSTR_115 1066 "Hủy bỏ"
LangString LSTR_116 1066 "< &Lùi"
LangString LSTR_117 1066 "Nhấn Tiến để tiếp tục."
LangString LSTR_118 1066 "Chọn thành phần mà bạn muốn cài đặt và không chọn các thành phần mà bạn không muốn cài đặt. $_CLICK"
LangString LSTR_119 1066 "Chọn kiểu cài đặt:"
LangString LSTR_120 1066 "Hoặc, chọn thành phần phụ mà bạn muốn cài đặt:"
LangString LSTR_121 1066 "Chọn thành phần để cài đặt:"
LangString LSTR_122 1066 "Trình trợ lí sẽ cài đặt $(LSTR_132) vào thư mục sau. Để cài đặt vào một thư mục khác, hãy nhấn Duyệt để chọn thư mục. $_CLICK"
LangString LSTR_123 1066 "Thư mục đích"
LangString LSTR_124 1066 Du&yệt...
LangString LSTR_125 1066 "Chọn thư mục để cài đặt $(LSTR_132):"
LangString LSTR_126 1066 "&Cài đặt"
LangString LSTR_127 1066 "Nhấn “Cài đặt” để bắt đầu việc cài đặt."
LangString LSTR_128 1066 "&Hiện chi tiết"
LangString LSTR_129 1066 "Hoàn thành"
LangString LSTR_130 1066 " "
LangString LSTR_131 1066 Đón&g
LangString LSTR_132 1066 "VLC media player"


; LANG: 1081
LangString LSTR_0 1081 "VideoLAN VLC media player"
LangString LSTR_1 1081 "$(LSTR_2) सेटअप"
LangString LSTR_2 1081 "VLC media player"
LangString LSTR_3 1081 "उपलब्ध जगह: "
LangString LSTR_4 1081 "अपेक्षित जगह: "
LangString LSTR_5 1081 "नहीं लिख सकते: "
LangString LSTR_8 1081 "प्रतीक नहीं ढूंढ सके: "
LangString LSTR_9 1081 "लोड नहीं कर सके: "
LangString LSTR_10 1081 "फोल्डर बनाएं: "
LangString LSTR_11 1081 "शॉर्टकट बनाएं: "
LangString LSTR_12 1081 "अनइंस्टालर बनाया: "
LangString LSTR_13 1081 "फाइल हटाएं: "
LangString LSTR_14 1081 "रीबूट करने पर हटाएं: "
LangString LSTR_15 1081 "शॉर्टकट बनाने में त्रुटि: "
LangString LSTR_16 1081 "बनाने में त्रुटि: "
LangString LSTR_17 1081 "डेटा असंपीड़ित करने पर त्रुटि! दूषित इंस्टालर?"
LangString LSTR_19 1081 "शेल निष्पादित करें: "
LangString LSTR_20 1081 "निष्पादित करें: $\""
LangString LSTR_21 1081 "निकालें: "
LangString LSTR_22 1081 "निकालें: फाइल में लिखते समय त्रुटि "
LangString LSTR_23 1081 "इंस्टालर दूषित: अवैध ऑपकोड"
LangString LSTR_24 1081 "इसके लिए कोई OLE नहीं: "
LangString LSTR_25 1081 "आउटपुट फोल्डर: "
LangString LSTR_26 1081 "फोल्डर निकालें: "
LangString LSTR_29 1081 "छोड़ा गया: "
LangString LSTR_30 1081 "क्लिपबोर्ड पर विवरण कॉपी करें"
LangString LSTR_32 1081 B
LangString LSTR_33 1081 " K"
LangString LSTR_34 1081 " M"
LangString LSTR_35 1081 " G"
LangString LSTR_36 1081 अनुशंसित
LangString LSTR_37 1081 न्यूनतम
LangString LSTR_38 1081 पूरा
LangString LSTR_39 1081 "लिखने के लिए फ़ाइल खोलने में त्रुटि: $\r$\n$\r$\n$0$\r$\n$\r$\nइंस्टालेशन रोकने के लिए निरस्त करें पर क्लिक करें,$\r$\nफिर से प्रयास करने के लिए पुनः प्रयास करें, या$\r$\nइस फाइल को छोड़ने के लिए नजरंदाज करें।"
LangString LSTR_40 1081 0
LangString LSTR_41 1081 "$(LSTR_132) सेटअप में आपका स्वागत है"
LangString LSTR_42 1081 "MS Shell Dlg"
LangString LSTR_43 1081 "सेटअप $(LSTR_132) के इंस्टालेशन के दौरान आपका मार्गदर्शन करेगा।$\r$\n$\r$\nयह सिफारिश की जाती है कि सेटअप शुरू करने से पहले आप अन्य सभी अनुप्रयोग बंद कर दें। इससे आपके कंप्यूटर को रीबूट किए बिना प्रासंगिक सिस्टम फ़ाइलों को अपडेट करना संभव हो जाएगा।$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1081 "अब आप अपने अधिकारों से परिचित हैं. जारी रखने के लिए 'आगे' क्लिक करें."
LangString LSTR_45 1081 "&आगे >"
LangString LSTR_46 1081 "लाइसेंस समझौता"
LangString LSTR_47 1081 "$(LSTR_132) इनस्टॉल करने से पहले लाइसेंस शर्तों की समीक्षा करें।"
LangString LSTR_48 1081 "शेष समझौता देखने के लिए पेज नीचे करें को दबाएं।"
LangString LSTR_49 1081 "घटक चुनें"
LangString LSTR_50 1081 "$(LSTR_132) की वे विशेषताएं चुनें जो आप इनस्टॉल करना चाहते हैं।"
LangString LSTR_51 1081 विवरण
LangString LSTR_52 1081 "उस घटक पर अपना माउस रखें जिसका आप विवरण देखना चाहते हैं।"
LangString LSTR_53 1081 "इनस्टॉल करने का स्थान चुनें"
LangString LSTR_54 1081 "वह फोल्डर चुनें जिसमें $(LSTR_132) को इनस्टॉल करना है।"
LangString LSTR_55 1081 "इनस्टॉल कर रहे हैं"
LangString LSTR_56 1081 "$(LSTR_132) इनस्टॉल होने तक प्रतीक्षा करें।"
LangString LSTR_57 1081 "इंस्टालेशन सम्पन्न"
LangString LSTR_58 1081 "सेटअप सफलतापूर्वक पूर्ण हुआ।"
LangString LSTR_59 1081 "इंस्टालेशन निरस्त किया गया"
LangString LSTR_60 1081 "सेटअप सफलतापूर्वक पूर्ण नहीं हुआ।"
LangString LSTR_61 1081 "&समाप्त करें"
LangString LSTR_62 1081 "$(LSTR_132) का सेटअप पूरा कर रहे हैं"
LangString LSTR_63 1081 "आपके कंप्यूटर पर $(LSTR_132) को इनस्टॉल कर दिया गया है।$\r$\n$\r$\nसेटअप बंद करने के लिए समाप्त करें पर क्लिक करें।"
LangString LSTR_64 1081 "$(LSTR_132) &चलाएं"
LangString LSTR_65 1081 "VideoLAN VLC मीडिया प्लेयर वेबसाइट पर जाएं"
LangString LSTR_66 1081 8
LangString LSTR_67 1081 "क्या आप वाकई $(LSTR_2) का सेटअप छोड़ना चाहते हैं?"
LangString LSTR_68 1081 चलायें
LangString LSTR_69 1081 "वीएलसी अभी चल रहा है और अब बंद किया जाएगा."
LangString LSTR_70 1081 "यह इंस्टॉलर VLC को बंद करने में असमर्थ था, कृपया इसे आप बंद करें."
LangString LSTR_71 1081 "स्थापना निरस्त किया गया!"
LangString LSTR_72 1081 "मीडिया प्लेयर (आवश्यक)"
LangString LSTR_73 1081 "जाँच प्रक्रियाएँ..."
LangString LSTR_74 1081 "वीएलसी मीडिया प्लेयर में बजाएं"
LangString LSTR_75 1081 "स्टार्ट मेनू शॉर्टकट"
LangString LSTR_76 1081 "डेस्कटॉप शॉर्टकट"
LangString LSTR_77 1081 "वेब प्लगइन्स"
LangString LSTR_78 1081 "ActiveX प्लगइन"
LangString LSTR_79 1081 "डिस्क प्लेबैक"
LangString LSTR_80 1081 "डीवीडी फिल्म चलाएं"
LangString LSTR_81 1081 "ऑडियो सीडी चलाएं"
LangString LSTR_82 1081 "वीसीडी फिल्म चलाएं"
LangString LSTR_83 1081 "एसवीसीडी फिल्म चलाएं"
LangString LSTR_84 1081 "ऑडियो डीवीडी चलाएं"
LangString LSTR_85 1081 "वीडियो फ़ाइलों को चलाएं"
LangString LSTR_86 1081 "ऑडियो फ़ाइलें चलाएं"
LangString LSTR_87 1081 "ब्लू-रे चलाएं"
LangString LSTR_88 1081 "फ़ाइल प्रकार संघ"
LangString LSTR_89 1081 "ऑडियो फ़ाइलें"
LangString LSTR_90 1081 "वीडियो फ़ाइलें"
LangString LSTR_91 1081 अन्य
LangString LSTR_92 1081 "प्रसंग मेनू"
LangString LSTR_93 1081 "वीएलसी मीडिया प्लेयर के प्लेलिस्ट में जोड़ें"
LangString LSTR_94 1081 "प्राथमिकताएं एवं कैश हटाएं"
LangString LSTR_95 1081 "स्वयं ये मीडिया प्लेयर"
LangString LSTR_96 1081 "सरल पहुँच के लिए अपने प्रारंभ मेनू में आइकन जोड़ता है"
LangString LSTR_97 1081 "सरल पहुँच के लिए अपने डेस्कटॉप पर आइकन जोड़ता है"
LangString LSTR_98 1081 "VLC ActiveX प्लगइन"
LangString LSTR_99 1081 "डीवीडी और सीडी प्लेबैक पंजीकरण"
LangString LSTR_100 1081 "निर्दिष्ट फ़ाइल प्रकार के लिए डिफ़ॉल्ट ऐप्लिकेशन के रूप में VLC मीडिया प्लेयर सेट करता है"
LangString LSTR_101 1081 "संदर्भ मेनू पंक्तियाँ जोड़ें ('VLC के साथ बजाएं' और 'VLC की प्लेलिस्ट में जोड़ें')"
LangString LSTR_102 1081 "पिछले स्थापना में बची VLC मीडिया प्लेयर की प्राथमिकताएँ और कैश फ़ाइलें हटाएं"
LangString LSTR_103 1081 "पहले से स्थापित है"
LangString LSTR_104 1081 "चुनें कि आप VLC को कैसे स्थापित करना चाहते हैं."
LangString LSTR_105 1081 "आपके सिस्टम पर VLC का पुराना संस्करण स्थापित है. वह प्रक्रिया चुनें जिसे आप निष्पादित करना चाहते हैं और जारी रखने के लिए 'अगला' क्लिक करें."
LangString LSTR_106 1081 "पिछली सेटिंग्स का उपयोग करके VLC अपग्रेड करें (अनुशंसित) "
LangString LSTR_107 1081 "सेटिंग्स बदलें (उन्नत)"
LangString LSTR_108 1081 "VLC का एक नया संस्करण पहले से स्थापित है! आपको पुराने संस्करण में डाउनग्रेड करने की अनुशंसा नहीं की जाती है. वह प्रक्रिया चुनें जिसे आप निष्पादित करना चाहते हैं और जारी रखने के लिए 'अगला' क्लिक करें. "
LangString LSTR_109 1081 "पिछली सेटिंग्स का उपयोग करके VLC को डाउनग्रेड करें (अनुशंसित) "
LangString LSTR_110 1081 "प्रदर्शन करने के लिए रख-रखाव विकल्प चुनें."
LangString LSTR_111 1081 "VLC 3.0.24 पहले से स्थापित है. वह प्रक्रिया चुनें जिसे आप निष्पादित करना चाहते हैं और जारी रखने के लिए 'अगला' क्लिक करें."
LangString LSTR_112 1081 "घटकों को जोड़ें/निकालें/पुनर्स्थापित करें"
LangString LSTR_113 1081 "VLC की स्थापना रद्द करें"
LangString LSTR_114 1081 कस्टम
LangString LSTR_115 1081 "रद्द करें"
LangString LSTR_116 1081 "< &पीछे"
LangString LSTR_117 1081 "जारी रखने के लिए आगे पर क्लिक करें।"
LangString LSTR_118 1081 "आप जो घटक इनस्टॉल करना चाहते हैं उन्हें चेक करें और आप जो घटक इनस्टॉल नहीं करना चाहते हैं उन्हें अनचेक करें। $_CLICK"
LangString LSTR_119 1081 "इनस्टॉल के प्रकार का चयन करें:"
LangString LSTR_120 1081 "या उन वैकल्पिक घटकों का चयन करें जिन्हें आप इनस्टॉल करना चाहते हैं:"
LangString LSTR_121 1081 "इनस्टॉल करने के लिए घटकों का चयन करें:"
LangString LSTR_122 1081 "सेटअप $(LSTR_132) को निम्नलिखित फोल्डर में इनस्टॉल करेगा। किसी भिन्न फोल्डर में इनस्टॉल करने के लिए ब्राउज करें पर क्लिक करें और किसी अन्य फोल्डर का चयन करें। $_CLICK"
LangString LSTR_123 1081 "गंतव्य फोल्डर"
LangString LSTR_124 1081 "ब्रा&उज करें..."
LangString LSTR_125 1081 "$(LSTR_132) को जिस फोल्डर में इनस्टॉल करना है उसका चयन करें:"
LangString LSTR_126 1081 "&इनस्टॉल करें"
LangString LSTR_127 1081 "इंस्टालेशन शुरू करने के लिए इनस्टॉल करें पर क्लिक करें।"
LangString LSTR_128 1081 "&विवरण दिखाएं"
LangString LSTR_129 1081 सम्पन्न
LangString LSTR_130 1081 " "
LangString LSTR_131 1081 "&बंद करें"
LangString LSTR_132 1081 "VLC media player"


; LANG: 1155
LangString LSTR_0 1155 "VideoLAN VLC media player"
LangString LSTR_1 1155 "Assistente d’installazione di $(LSTR_2)"
LangString LSTR_2 1155 "VLC media player"
LangString LSTR_3 1155 "Spaziu dispunibule :"
LangString LSTR_4 1155 "Spaziu richiestu :"
LangString LSTR_5 1155 "Ùn pò micca scrive :"
LangString LSTR_8 1155 "Impussibule di truvà un simbolu :"
LangString LSTR_9 1155 "Impussibule di caricà :"
LangString LSTR_10 1155 "Creazione di u cartulare :"
LangString LSTR_11 1155 "Creazione di l’accurtatoghju :"
LangString LSTR_12 1155 "Creazione di l’assistente di disinstallazione :"
LangString LSTR_13 1155 "Squassatura di schedariu :"
LangString LSTR_14 1155 "Squassatura à l’avviu di l’urdinatore :"
LangString LSTR_15 1155 "Sbagliu durante a creazione di l’accurtatoghju :"
LangString LSTR_16 1155 "Sbagliu durante a creazione di :"
LangString LSTR_17 1155 "Sbagliu durante a scumprezzione di i dati ! Stalladore alteratu ?"
LangString LSTR_19 1155 "ExecShell :"
LangString LSTR_20 1155 "Eseguisce :"
LangString LSTR_21 1155 "Estrazzione :"
LangString LSTR_22 1155 "Estrazzione : sbagliu di scrittura ver di u schedariu"
LangString LSTR_23 1155 "Stalladore alteratu : opcode micca accettevule"
LangString LSTR_24 1155 "Alcunu OLE per :"
LangString LSTR_25 1155 "Cartulare di destinazione :"
LangString LSTR_26 1155 "Cacciatura di u cartulare :"
LangString LSTR_29 1155 "Tralasciatu :"
LangString LSTR_30 1155 "Cupià i detaglii ver di u preme’papei"
LangString LSTR_32 1155 o
LangString LSTR_33 1155 " K"
LangString LSTR_34 1155 " M"
LangString LSTR_35 1155 " G"
LangString LSTR_36 1155 Ricumandatu
LangString LSTR_37 1155 Minimu
LangString LSTR_38 1155 Cumpletu
LangString LSTR_39 1155 "Sbagliu durante l’accessu in scrittura di u schedariu : $\r$\n$\r$\n$0$\r$\n$\r$\nSciglite Interrompe per piantà l’installazione,$\r$\nTorna per pruvà torna, o$\r$\nIgnurà per ignurà stu schedariu."
LangString LSTR_40 1155 0
LangString LSTR_41 1155 "Benvenuta in l’assistente d’installazione di $(LSTR_132)m"
LangString LSTR_42 1155 "MS Shell Dlg"
LangString LSTR_43 1155 "L’assistente d’installazione hà da aiutavvi à installà $(LSTR_132).$\r$\n$\r$\nHè ricumandatu di chjode tutte l’altre appiecazioni nanzu di avvià st’assistente. Quessu permetterà di mudificà i schedarii di u sistema senza riavvià l’urdinatore.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1155 "Avà site cognitu di i vostri diritti. Sceglie Seguente per cuntinuà."
LangString LSTR_45 1155 "&Seguente >"
LangString LSTR_46 1155 "Cuntrattu di licenza"
LangString LSTR_47 1155 "Ci vole à leghje i termini di a licenza nanzu d’installà $(LSTR_132)."
LangString LSTR_48 1155 "Sciglite Pagina Seguente per fighjà a seguita di u ducumentu."
LangString LSTR_49 1155 "Sciglite i cumpunenti"
LangString LSTR_50 1155 "Sciglite e funzioni di $(LSTR_132) chì voi vulete installà."
LangString LSTR_51 1155 Discrizzione
LangString LSTR_52 1155 "Piazzà u topu nant’à un cumpunentu per fighjà a so discrizzione."
LangString LSTR_53 1155 "Sciglite u cartulare d’installazione"
LangString LSTR_54 1155 "Sciglite u cartulare induve installà $(LSTR_132)."
LangString LSTR_55 1155 "Installazione in corsu"
LangString LSTR_56 1155 "Aspettate per piacè chì $(LSTR_132) sia installatu."
LangString LSTR_57 1155 "Installazione compia"
LangString LSTR_58 1155 "L’installazione hè compia bè."
LangString LSTR_59 1155 "Installazione interrotta"
LangString LSTR_60 1155 "L’installazione ùn hè micca compia bè."
LangString LSTR_61 1155 &Piantà
LangString LSTR_62 1155 "Fine d’installazione di $(LSTR_132)"
LangString LSTR_63 1155 "$(LSTR_132) hè statu installatu nant’à l’urdinatore.$\r$\n$\r$\nSciglite Piantà per chjode l’assistente."
LangString LSTR_64 1155 "&Eseguisce $(LSTR_132)"
LangString LSTR_65 1155 "Visità u situ Web VLC media player di VideoLAN"
LangString LSTR_66 1155 8
LangString LSTR_67 1155 "Site sicuru di vulè chità l’assistente d’installazione di $(LSTR_2) ?"
LangString LSTR_68 1155 Sunà
LangString LSTR_69 1155 "VLC pare dighjà in funzione è hà da esse chjosu."
LangString LSTR_70 1155 "Stu stalladore ùn hà micca pussutu chjode VLC, ci vole à fallu manualmente."
LangString LSTR_71 1155 "Installazione interrotta !"
LangString LSTR_72 1155 "Lettore di media (richiestu)"
LangString LSTR_73 1155 "Cuntrollu di i prucedimenti…"
LangString LSTR_74 1155 "Sunà cù VLC media player"
LangString LSTR_75 1155 "Accurtatoghjiu di u listinu « Démarrer »"
LangString LSTR_76 1155 "Accurtatoghju di scagnu"
LangString LSTR_77 1155 "Estensioni web"
LangString LSTR_78 1155 "Estensione ActiveX"
LangString LSTR_79 1155 "Ripruduzzione di dischi"
LangString LSTR_80 1155 "Sunà un filmu DVD"
LangString LSTR_81 1155 "Sunà un CD audio"
LangString LSTR_82 1155 "Sunà un filmu VCD"
LangString LSTR_83 1155 "Sunà un filmu SVCD"
LangString LSTR_84 1155 "Sunà un DVD audio"
LangString LSTR_85 1155 "Sunà schedarii video"
LangString LSTR_86 1155 "Sunà schedarii audio"
LangString LSTR_87 1155 "Sunà Blu-ray"
LangString LSTR_88 1155 "Associi da tipu di schedariu"
LangString LSTR_89 1155 "Schedarii Audio"
LangString LSTR_90 1155 "Schedarii Video"
LangString LSTR_91 1155 Altru
LangString LSTR_92 1155 "Listini cuntestuali"
LangString LSTR_93 1155 "Aghjunghje à a lista di lettura di VLC media player"
LangString LSTR_94 1155 "Squassà e preferenze è l’impiatta"
LangString LSTR_95 1155 "U lettore di media istessu"
LangString LSTR_96 1155 "Aghjunghje l’icone à u vostru listinu d’avviu per un usu più faciule"
LangString LSTR_97 1155 "Aghjunghje l'icona à u vostru scagnu per un usu più faciule"
LangString LSTR_98 1155 "L'estensione VLC per ActiveX"
LangString LSTR_99 1155 "Ripruduzzione diretta di DVD è CD"
LangString LSTR_100 1155 "Definisce VLC media player cum'è appiecazione predefinita per u tipu di schedariu specificatu"
LangString LSTR_101 1155 "Aghjunghje l'elementi di listinu di cuntestu ('Sunà cù VLC' è 'Aghjunghje à a lista di lettura VLC')"
LangString LSTR_102 1155 "Squassà e preferenze è i schedarii d'impiatta di VLC media player lasciati da e vechje installazioni"
LangString LSTR_103 1155 "Dighjà installatu"
LangString LSTR_104 1155 "Sceglie cumu vulete installà VLC."
LangString LSTR_105 1155 "Una versione più vechja di VLC hè installata nant’à u vostru sistema. Selezziunà l’operazione chì ci vole à fà è cliccà Seguente per cuntinuà."
LangString LSTR_106 1155 "Mudernizà VLC impieghendu e preferenze arregistrate (ricumandatu)"
LangString LSTR_107 1155 "Cambià e preferenze (modu espertu)"
LangString LSTR_108 1155 "Una versione più ricente di VLC hè dighjà installata ! Ùn hè micca ricumandatu di cambià per una versione più vechja. Selezziunà l’operazione chì ci vole à fà è cliccà Seguente per cuntinuà."
LangString LSTR_109 1155 "Invechjà VLC impieghendu e preferenze arregistrate (ricumandatu)"
LangString LSTR_110 1155 "Sceglie l’ozzione di mantenenza ch’ellu ci vole à fà."
LangString LSTR_111 1155 "VLC 3.0.24 hè dighjà installata. Selezziunà l’operazione chì ci vole à fà è cliccà Seguente per cuntinuà."
LangString LSTR_112 1155 "Aghjunghje/Caccià/Reinstallà i cumpunenti"
LangString LSTR_113 1155 "Desinstallà VLC"
LangString LSTR_114 1155 Persunalizata
LangString LSTR_115 1155 Abbandunà
LangString LSTR_116 1155 "< &Precedente"
LangString LSTR_117 1155 "Sciglite Seguente per cuntinuà."
LangString LSTR_118 1155 "Selezziunà i cumpunenti chì voi vulete installà è viutà a casella di quelli ch’ellu ùn ci vole micca à installà. $_CLICK"
LangString LSTR_119 1155 "Selezziunà u tipu d’installazione :"
LangString LSTR_120 1155 "Osinnò, selezziunà i cumpunenti addizziunali chì voi vulete installà :"
LangString LSTR_121 1155 "Selezziunà i cumpunenti à installà :"
LangString LSTR_122 1155 "L’assistente hà da installà $(LSTR_132) in quessu cartulare. Per installà in un altru cartulare, sciglite Sfuglià è selezziunà un altru cartulare. $_CLICK"
LangString LSTR_123 1155 "Cartulare di destinazione"
LangString LSTR_124 1155 &Sfuglià...
LangString LSTR_125 1155 "Selezziunà u cartulare d’installazione di $(LSTR_132) :"
LangString LSTR_126 1155 &Installà
LangString LSTR_127 1155 "Sciglite Installà per principià l’installazione."
LangString LSTR_128 1155 "Affissà i &ditaglii"
LangString LSTR_129 1155 Compiu
LangString LSTR_130 1155 " "
LangString LSTR_131 1155 &Chjode
LangString LSTR_132 1155 "VLC media player"


; LANG: 9997
LangString LSTR_0 9997 "VideoLAN VLC media player"
LangString LSTR_1 9997 "Instalación de $(LSTR_2)"
LangString LSTR_2 9997 "VLC media player"
LangString LSTR_3 9997 "Espaciu disponible: "
LangString LSTR_4 9997 "Espaciu requeríu: "
LangString LSTR_5 9997 "Nun pudo escribise: "
LangString LSTR_8 9997 "Nun pudo atopase símbolu: "
LangString LSTR_9 9997 "Nun pudo cargase: "
LangString LSTR_10 9997 "Criar direutoriu: "
LangString LSTR_11 9997 "Criar accesu direutu: "
LangString LSTR_12 9997 "Criar desinstalador: "
LangString LSTR_13 9997 "Desaniciar ficheru: "
LangString LSTR_14 9997 "Desaniciar al reaniciu: "
LangString LSTR_15 9997 "Fallu criando accesu direutu: "
LangString LSTR_16 9997 "Fallu criando: "
LangString LSTR_17 9997 "¡Error descomprimiendo datos! ¿Instalador corruptu?"
LangString LSTR_19 9997 "Executar comandu: "
LangString LSTR_20 9997 "Executar: "
LangString LSTR_21 9997 "Estrayer: "
LangString LSTR_22 9997 "Extrayer: fallu escribiendo al ficheru "
LangString LSTR_23 9997 "Instalador corruptu: códigu d'operación non válidu"
LangString LSTR_24 9997 "Ensin OLE pa: "
LangString LSTR_25 9997 "Direutoriu de salida: "
LangString LSTR_26 9997 "Desaniciar direutoriu: "
LangString LSTR_29 9997 "Omitíu: "
LangString LSTR_30 9997 "Copiar Detalles al Cartafueyu"
LangString LSTR_32 9997 B
LangString LSTR_33 9997 " K"
LangString LSTR_34 9997 " M"
LangString LSTR_35 9997 " G"
LangString LSTR_36 9997 Recomiéndase
LangString LSTR_37 9997 Mínima
LangString LSTR_38 9997 Completa
LangString LSTR_39 9997 "Error abriendo ficheru pa escritura: $\r$\n$\t$\"$0$\"$\r$\nCalca albortar p'anular la instalación,$\r$\nreintentar pa volver a intentar escribir el ficheru, u$\r$\nomitir pa inorar esti ficheru"
LangString LSTR_40 9997 0
LangString LSTR_41 9997 "Bienveníu al Asistente d'Instalación de $(LSTR_132)"
LangString LSTR_42 9997 "MS Shell Dlg"
LangString LSTR_43 9997 "Esti programa instalará $(LSTR_132) nel to ordenador.$\r$\n$\r$\nEncamiéntase que zarres toles demás aplicaciones enantes d'aniciar la instalación. Esto faerá posible anovar ficheros rellacionaos col sistema ensin tener que reaniciar el to ordenador.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 9997 "Agora que yes consciente de los tos drechos, calca Siguiente pa siguir."
LangString LSTR_45 9997 "&Siguiente >"
LangString LSTR_46 9997 "Alcuerdu de llicencia"
LangString LSTR_47 9997 "Por favor revisa los términos de la llicencia enantes d'instalar $(LSTR_132)."
LangString LSTR_48 9997 "Calca Avanzar Páxina pa ver el restu del alcuerdu."
LangString LSTR_49 9997 "Seleición de componentes"
LangString LSTR_50 9997 "Seleicione qué carauterístiques de $(LSTR_132) deseyes instalar."
LangString LSTR_51 9997 Descripción
LangString LSTR_52 9997 "Allugue'l mur enriba d'un componente pa ver la so descripción."
LangString LSTR_53 9997 "Escoyer llugar d'instalación"
LangString LSTR_54 9997 "Escueye'l direutoriu pa instalar $(LSTR_132)."
LangString LSTR_55 9997 Instalando
LangString LSTR_56 9997 "Por favor espera mientres $(LSTR_132) s'instala."
LangString LSTR_57 9997 "Instalación Completada"
LangString LSTR_58 9997 "La instalación completóse correutamente."
LangString LSTR_59 9997 "Instalación Desaniciada"
LangString LSTR_60 9997 "La instalación nun se completó correutamente."
LangString LSTR_61 9997 &Finar
LangString LSTR_62 9997 "Completando l'Asistente d'Instalación de $(LSTR_132)"
LangString LSTR_63 9997 "$(LSTR_132) foi instaláu nel to sistema.$\r$\n$\r$\nCalca Finar pa zarrar esti asistente."
LangString LSTR_64 9997 "&Executar $(LSTR_132)"
LangString LSTR_65 9997 "Visita'l sitiu VideoLAN VLC"
LangString LSTR_66 9997 8
LangString LSTR_67 9997 "¿De xuru que quies colar de la instalación de $(LSTR_2)?"
LangString LSTR_68 9997 Reproducir
LangString LSTR_69 9997 "VLC entá ta executándose y va zarrase agora"
LangString LSTR_70 9997 "Esti instalador nun pudo zarrar VLC, por favor, failo tu."
LangString LSTR_71 9997 "Instalación encaboxada"
LangString LSTR_72 9997 "Reproductor multimedia (ríquese)"
LangString LSTR_73 9997 "Comprobando procesos..."
LangString LSTR_74 9997 "Reproducir con VLC"
LangString LSTR_75 9997 "Atayu nel menú d'aniciu"
LangString LSTR_76 9997 "Atayu nel escritoriu"
LangString LSTR_77 9997 "Plugins web"
LangString LSTR_78 9997 "Plugin d'ActiveX"
LangString LSTR_79 9997 "Reproducción de discos"
LangString LSTR_80 9997 "Reproducir película DVD"
LangString LSTR_81 9997 "Reproducir CD d'audiu"
LangString LSTR_82 9997 "Reproducir película VCD"
LangString LSTR_83 9997 "Reproducir película SVCD"
LangString LSTR_84 9997 "Reproducir DVD d'audiu"
LangString LSTR_85 9997 "Reproducir ficheros de videu"
LangString LSTR_86 9997 "Reproducir ficheros d'audiu"
LangString LSTR_87 9997 "Play Blu-ray"
LangString LSTR_88 9997 "Asociaciones de tribes de ficheru"
LangString LSTR_89 9997 "Ficheros d'audiu"
LangString LSTR_90 9997 "Ficheros de videu"
LangString LSTR_91 9997 Otros
LangString LSTR_92 9997 "Menús contestuales"
LangString LSTR_93 9997 "Amestar a la llista de VLC"
LangString LSTR_94 9997 "Desaniciar caché y preferencies"
LangString LSTR_95 9997 "El propiu reproductor"
LangString LSTR_96 9997 "Amiesta iconos al menú Aniciu pa un accesu fácil"
LangString LSTR_97 9997 "Amiesta iconos al Escritoriu pa un accesu fácil"
LangString LSTR_98 9997 "El complementu VLC d'ActiveX"
LangString LSTR_99 9997 "Rexistru de reproducción DVD y CD"
LangString LSTR_100 9997 "Afitar el Reproductor multimedia VLC como aplicación predefinida pa la triba de ficheru especificada"
LangString LSTR_101 9997 "Amiesta opciones nel menú contestual («Reproducir con VLC» y «Amestar a la llista de VLC»)"
LangString LSTR_102 9997 "Desanicia los ficheros de caché y preferencies del reproductor multimedia VLC d'instalaciones anteriores"
LangString LSTR_103 9997 "Yá ta instaláu"
LangString LSTR_104 9997 "Seleiciona cómo quies instalar VLC"
LangString LSTR_105 9997 "Hai instalada una versión más antigua de VLC nel sistema. Seleiciona la operación que quies facer y primi Siguiente pa continuar"
LangString LSTR_106 9997 "Anovar VLC usando les siguientes preferencies (recomiéndase)"
LangString LSTR_107 9997 "Camudar preferencies (avanzáu)"
LangString LSTR_108 9997 "Hai instalada una versión más nueva de VLC nel sistema. Nun se recomienda qu'instales una versión más vieya. Seleiciona la operación que quies facer y primi Siguiente pa continuar."
LangString LSTR_109 9997 "Baxar VLC de versión usando les preferencies anteriores (recomiéndase)"
LangString LSTR_110 9997 "Seleiciona la opción de caltenmientu a facer"
LangString LSTR_111 9997 "VLC 3.0.24 yá ta instaláu. Seleiciona la operación que quies facer, y primi Siguiente pa continuar."
LangString LSTR_112 9997 "Amestar/Desaniciar/Reinstalar componentes"
LangString LSTR_113 9997 "Desinstalar VLC"
LangString LSTR_114 9997 Personalizada
LangString LSTR_115 9997 Encaboxar
LangString LSTR_116 9997 "< &Atrás"
LangString LSTR_117 9997 "Calca Siguiente pa siguir."
LangString LSTR_118 9997 "Conseña los componentes que deseyes instalar y desconseña los componentes que nun quies instalar. $_CLICK"
LangString LSTR_119 9997 "Tipos d'instalación:"
LangString LSTR_120 9997 "O selecciona los componentes opcionales que deseyes instalar:"
LangString LSTR_121 9997 "Seleiciona los componentes a instalar:"
LangString LSTR_122 9997 "El programa d'instalación instalará $(LSTR_132) nel siguiente direutoriu. Pa instalar nun direutoriu distintu, calca Restolar y seleiciona otru direutoriu. $_CLICK"
LangString LSTR_123 9997 "Direutoriu de Destín"
LangString LSTR_124 9997 &Restolar...
LangString LSTR_125 9997 "Seleiciona'l direutoriu nel qu'instalará $(LSTR_132):"
LangString LSTR_126 9997 &Instalar
LangString LSTR_127 9997 "Calca Instalar pa entamar la instalación."
LangString LSTR_128 9997 "Ver &detalles"
LangString LSTR_129 9997 Completáu
LangString LSTR_130 9997 " "
LangString LSTR_131 9997 &Zarrar
LangString LSTR_132 9997 "VLC media player"


; LANG: 2068
LangString LSTR_0 2068 "VideoLAN VLC media player"
LangString LSTR_1 2068 "$(LSTR_2) installasjon"
LangString LSTR_2 2068 "VLC media player"
LangString LSTR_3 2068 "Ledig plass: "
LangString LSTR_4 2068 "Naudsynt plass: "
LangString LSTR_5 2068 "Kan ikkje skriva: "
LangString LSTR_8 2068 "Kunne ikkje finna symbol: "
LangString LSTR_9 2068 "Kunne ikkje lasta: "
LangString LSTR_10 2068 "Lag mappe: "
LangString LSTR_11 2068 "Lag snarveg: "
LangString LSTR_12 2068 "Avinstallasjon laga: "
LangString LSTR_13 2068 "Slett fil: "
LangString LSTR_14 2068 "Slett ved omstart: "
LangString LSTR_15 2068 "Feil under oppretting av snarveg: "
LangString LSTR_16 2068 "Feil under oppretting av: "
LangString LSTR_17 2068 "Feil under utpakking av data! Installasjonsprogrammet kan vera skadd."
LangString LSTR_19 2068 "ExecShell: "
LangString LSTR_20 2068 "Køyra: "
LangString LSTR_21 2068 "Pakk ut: "
LangString LSTR_22 2068 "Pakk ut: Feil under skriving til fil "
LangString LSTR_23 2068 "Installasjonsprogrammet er skadd: ukjend kode"
LangString LSTR_24 2068 "Ingen OLE for: "
LangString LSTR_25 2068 "Ut-mappe: "
LangString LSTR_26 2068 "Fjern mappe: "
LangString LSTR_29 2068 "Hoppa over: "
LangString LSTR_30 2068 "Kopier detaljar til utklyppstavla"
LangString LSTR_32 2068 B
LangString LSTR_33 2068 " K"
LangString LSTR_34 2068 " M"
LangString LSTR_35 2068 " G"
LangString LSTR_36 2068 Tilrådd
LangString LSTR_37 2068 Minimum
LangString LSTR_38 2068 Full
LangString LSTR_39 2068 "Feil under opning av fil for skriving: $\r$\n$\t\$\"$0\$\"$\r$\nTrykk Avbryt for å avbryta installasjonen,$\r$\nPrøv igjen for å prøva igjen, eller$\r$\nIgnorer for å hoppa over denne fila"
LangString LSTR_40 2068 0
LangString LSTR_41 2068 "Velkommen til $(LSTR_132) innstallasjonsvegvisar"
LangString LSTR_42 2068 "MS Shell Dlg"
LangString LSTR_43 2068 "Denne vegvisaren vil leie deg gjennom installeringa av $(LSTR_132).$\n$\nDet er tilrådd at du avsluttar alle andre program før du held fram. Dette vil la installeringsprogrammet oppdatera systemfiler utan at du må starta datamaskinen på nytt.$\n$\n$_CLICK"
LangString LSTR_44 2068 "Du er no klar over rettane dine. Trykk neste for å fortsetja."
LangString LSTR_45 2068 "&Neste >"
LangString LSTR_46 2068 Lisensavtale
LangString LSTR_47 2068 "Les gjennom lisensavtalen før du startar installeringa av $(LSTR_132)."
LangString LSTR_48 2068 "Trykk Page Down-knappen for å sjå resten av lisensavtala."
LangString LSTR_49 2068 "Vel komponentar"
LangString LSTR_50 2068 "Vel kva delar av $(LSTR_132) du ynskjer å installera."
LangString LSTR_51 2068 Beskriving
LangString LSTR_52 2068 "Beveg musa over komponentene for å sjå beskrivinga."
LangString LSTR_53 2068 "Vel installasjonsmappe"
LangString LSTR_54 2068 "Vel kva mappe du vil installera $(LSTR_132) i."
LangString LSTR_55 2068 Installerer
LangString LSTR_56 2068 "Vent mens $(LSTR_132) blir installert."
LangString LSTR_57 2068 "Installeringa er fullført"
LangString LSTR_58 2068 "Installeringa vart fullført."
LangString LSTR_59 2068 "Installeringa vart avbroten"
LangString LSTR_60 2068 "Installeringa vart ikkje fullført."
LangString LSTR_61 2068 &Fullfør
LangString LSTR_62 2068 "Installering fullført"
LangString LSTR_63 2068 "$(LSTR_132) er installert og klar til bruk.$\n$\nTrykk på «Fullfør» for å avslutte installeringa."
LangString LSTR_64 2068 "&Køyr $(LSTR_132)"
LangString LSTR_65 2068 "Besøk VideoLANs nettside for VLC mediaspelar"
LangString LSTR_66 2068 8
LangString LSTR_67 2068 "Er du viss på at du vil avslutta installeringa av $(LSTR_2)?"
LangString LSTR_68 2068 Spel
LangString LSTR_69 2068 "Det ser ut til at VLC køyrer, og vil no latast att."
LangString LSTR_70 2068 "Denne installeraren klarte ikkje å lata att VLC, ver snill og lat att manuelt."
LangString LSTR_71 2068 "Installering avbroten!"
LangString LSTR_72 2068 "Media Player (påkravd)"
LangString LSTR_73 2068 "Kontrollerer prosessar…"
LangString LSTR_74 2068 "Spel med VLC mediaspelar"
LangString LSTR_75 2068 Startmeny-snarveg
LangString LSTR_76 2068 Skrivebord-snarveg
LangString LSTR_77 2068 Web-programtillegg
LangString LSTR_78 2068 ActiveX-programtillegg
LangString LSTR_79 2068 Plate-avspeling
LangString LSTR_80 2068 "Spel DVD-film"
LangString LSTR_81 2068 "Spel lyd-CD"
LangString LSTR_82 2068 "Spel VCD-film"
LangString LSTR_83 2068 "Spel SVCD-film"
LangString LSTR_84 2068 "Spel lyd-DVD"
LangString LSTR_85 2068 "Spel videofiler"
LangString LSTR_86 2068 "Spel lydfiler"
LangString LSTR_87 2068 "Spel Blu-ray"
LangString LSTR_88 2068 Filetype-tilknytingar
LangString LSTR_89 2068 Lydfiler
LangString LSTR_90 2068 Videofiler
LangString LSTR_91 2068 Anna
LangString LSTR_92 2068 Kontekstmenyar
LangString LSTR_93 2068 "Legg til i VLC mediaspelar si speleliste"
LangString LSTR_94 2068 "Slett innstillingar og snøgglager"
LangString LSTR_95 2068 "Mediaspelaren i seg sjølv"
LangString LSTR_96 2068 "Legg til ikon i startmenyen for enklare tilgang"
LangString LSTR_97 2068 "Legg til ikon på skrivebordet for enkel tilgang"
LangString LSTR_98 2068 "VLC ActiveX-programtillegg"
LangString LSTR_99 2068 "DVD- og CD-avspelingsregistrering"
LangString LSTR_100 2068 "Vel VLC mediaspelar som standardprogram for denne filtypen."
LangString LSTR_101 2068 "Legg til kontekstmenyelement ('Spel av med VLC' og 'Legg til i VLCs speleliste')"
LangString LSTR_102 2068 "Slettar innstillingar og mellomlagringsfiler i VLC mediaspelar som vart til overs frå førre installering."
LangString LSTR_103 2068 "Allereie installert"
LangString LSTR_104 2068 "Vel korleis du vil installera VLC."
LangString LSTR_105 2068 "Ein eldre versjon av VLC er installert på systemet ditt. Vel handlinga du vil utføra og trykk Neste for å fortsetja."
LangString LSTR_106 2068 "Oppgrader VLC med tidlegare innstillingar (tilrådd)"
LangString LSTR_107 2068 "Endra innstillingar (avansert)"
LangString LSTR_108 2068 "Ein nyare versjon av VLC er allereie installert! Det er ikkje tilrådd at du nedgraderer til ein eldre versjon. Vel handlinga du vil utføra og trykk Neste for å fortsetja."
LangString LSTR_109 2068 "Nedgrader VLC med tidlegare innstillingar (tilrådd)"
LangString LSTR_110 2068 "Vel vedlikehaldsinnstillinga som skal utførast."
LangString LSTR_111 2068 "VLC 3.0.24 er allereie installert. Vel handlinga du vil utføra og trykk Neste for å fortsetja."
LangString LSTR_112 2068 "Legg til/Fjern/Installer komponetar på nytt"
LangString LSTR_113 2068 "Avinstaller VLC"
LangString LSTR_114 2068 Eigendefinert
LangString LSTR_115 2068 Avbryt
LangString LSTR_116 2068 "< &Attende"
LangString LSTR_117 2068 "Trykk Neste for å halda fram."
LangString LSTR_118 2068 "Merk komponentane du vil installera og fjern merkinga for dei du ikkje vil installera. $_CLICK"
LangString LSTR_119 2068 "Vel kva måte du vil installera på:"
LangString LSTR_120 2068 "Eller merk dei valfrie komponentane du ynskjer å installera:"
LangString LSTR_121 2068 "Merk komponentar du vil installera:"
LangString LSTR_122 2068 "$(LSTR_132) vil verta installert i fylgjande mappe. For å velja ei anna mappe, trykk Bla gjennom. $_CLICK"
LangString LSTR_123 2068 Målmappe
LangString LSTR_124 2068 "Bla &gjennom ..."
LangString LSTR_125 2068 "Vel mappe du vil installera $(LSTR_132) i:"
LangString LSTR_126 2068 &Installer
LangString LSTR_127 2068 "Trykk Installer for å starta installasjonen."
LangString LSTR_128 2068 "Syn &detaljar"
LangString LSTR_129 2068 Ferdig
LangString LSTR_130 2068 " "
LangString LSTR_131 2068 "&Lat att"
LangString LSTR_132 2068 "VLC media player"


; LANG: 1150
LangString LSTR_0 1150 "VideoLAN VLC media player"
LangString LSTR_1 1150 "Staliañ ha kefluniañ $(LSTR_2)"
LangString LSTR_2 1150 "VLC media player"
LangString LSTR_3 1150 "Egor kantenn vak : "
LangString LSTR_4 1150 "Egor kantenn rekis : "
LangString LSTR_5 1150 "N'haller ket skrivañ : "
LangString LSTR_8 1150 "N'haller ket kavout ur simbolenn : "
LangString LSTR_9 1150 "N'haller ket kargañ : "
LangString LSTR_10 1150 "Krouiñ kavlec'h : "
LangString LSTR_11 1150 "Krouiñ berradenn : "
LangString LSTR_12 1150 "Skoazeller distaliañ krouet : "
LangString LSTR_13 1150 "Dilemel restr : "
LangString LSTR_14 1150 "Dilemel en ur adloc'hañ : "
LangString LSTR_15 1150 "Fazi en ur grouiñ berradenn : "
LangString LSTR_16 1150 "Fazi en ur grouiñ : "
LangString LSTR_17 1150 "Fazi en ur ziwaskañ stlenn ! Skoazeller staliañ gwastet ?"
LangString LSTR_19 1150 "ExecShell : "
LangString LSTR_20 1150 "Lañsañ : "
LangString LSTR_21 1150 "Eztennañ : "
LangString LSTR_22 1150 "Eztennañ : fazi en ur skrivañ restr "
LangString LSTR_23 1150 "Skoazeller staliañ gwastet : opcode direizh"
LangString LSTR_24 1150 "OLE ebet evit : "
LangString LSTR_25 1150 "Kavlec'h ec'hank : "
LangString LSTR_26 1150 "Dilemel ar c'havlec'h : "
LangString LSTR_29 1150 "Laosket a-gostez: "
LangString LSTR_30 1150 "Kopiañ ar munudoù er golver"
LangString LSTR_32 1150 E
LangString LSTR_33 1150 " K"
LangString LSTR_34 1150 " M"
LangString LSTR_35 1150 " G"
LangString LSTR_36 1150 Aliet
LangString LSTR_37 1150 Minimum
LangString LSTR_38 1150 Klok
LangString LSTR_39 1150 "Fazi en ur zigeriñ ur restr evit skrivañ : $\r$\n$\r$\n$0$\r$\n$\r$\nKlikit war « Paouez » evit paouez gant ar staliañ,$\r$\n« Adober » evit eseañ en-dro, pe$\r$\n« Tremen » evit leuskel a-gostez ar restr-mañ."
LangString LSTR_40 1150 0
LangString LSTR_41 1150 "Degemer mat e skoazeller staliañ $(LSTR_132)"
LangString LSTR_42 1150 "MS Shell Dlg"
LangString LSTR_43 1150 "Sturiet e viot gant ar skoazeller-mañ evit staliañ $(LSTR_132).$\r$\n$\r$\nGwelloc'h eo serriñ pep arload oberiant er reizhiad a-raok mont pelloc'h gant ar skoazeller-mañ. Evel-se e c'heller nevesaat ar restroù reizhiad hep rankout adloc'hañ hoc'h urzhiataer.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1150 "Kelaouet oc’h bremañ diwar-benn ho kwirioù. Klikit war Da-Heul evit kenderc’hel."
LangString LSTR_45 1150 "&War-lerc'h >"
LangString LSTR_46 1150 "Lañvaz emglev"
LangString LSTR_47 1150 "Bezit aketus en ur lenn pep term eus al lañvaz a-raok staliañ $(LSTR_132), mar plij."
LangString LSTR_48 1150 "Pouezit war « Pajenn a-raok » evit lenn ar pajennoù eus al lañvaz da-heul."
LangString LSTR_49 1150 "Dibab elfennoù"
LangString LSTR_50 1150 "Dibabit pe elfenn(où) $(LSTR_132) a fell deoc'h staliañ."
LangString LSTR_51 1150 Deskrivadenn
LangString LSTR_52 1150 "Lakait ho logodenn a-zioc'h an elfenn evit gwelout he deskrivadenn."
LangString LSTR_53 1150 "Dibabit al lec'hiadur staliañ"
LangString LSTR_54 1150 "Dibabit ar c'havlec'h ma vo lakaet $(LSTR_132) ennañ."
LangString LSTR_55 1150 "O staliañ"
LangString LSTR_56 1150 "Gortozit mar plij, emañ $(LSTR_132) o vezañ staliet."
LangString LSTR_57 1150 "Echu eo gant ar staliañ"
LangString LSTR_58 1150 "Kaset eo bet da benn mat ar staliañ."
LangString LSTR_59 1150 "Staliañ paouezet"
LangString LSTR_60 1150 "N'eo ket bet kaset da benn mat ar staliañ."
LangString LSTR_61 1150 &Echuiñ
LangString LSTR_62 1150 "Oc'h echuiñ staliañ $(LSTR_132) gant ar skoazeller"
LangString LSTR_63 1150 "Staliet eo bet $(LSTR_132) war hoc'h urzhiataer.$\r$\n$\r$\nKlikit war « Echuiñ » evit serriñ ar skoazeller-mañ."
LangString LSTR_64 1150 "&Lañsañ $(LSTR_132)"
LangString LSTR_65 1150 "Mont da welet lec’hienn al lenner media VideoLAN VLC"
LangString LSTR_66 1150 8
LangString LSTR_67 1150 "Ha sur oc'h e fell deoc'h kuitaat staliañ $(LSTR_2) ?"
LangString LSTR_68 1150 Lenn
LangString LSTR_69 1150 "VLC a seblant mont en-dro hag e vo serret bremañ."
LangString LSTR_70 1150 "Ne oa ket gouest ar stalier da serriñ VLC, grit gant an dorn mar plij."
LangString LSTR_71 1150 "Staliadur dilezet!"
LangString LSTR_72 1150 "Lenner Media (rekiset)"
LangString LSTR_73 1150 "O wiriañ an argerzhoù..."
LangString LSTR_74 1150 "Lenn gant VLC media player"
LangString LSTR_75 1150 "Kregiñ gant Roll ar Berradennoù Klavier"
LangString LSTR_76 1150 "Berradenn ar Burev"
LangString LSTR_77 1150 "Lugantoù ar genrouedad"
LangString LSTR_78 1150 "Lugant ActiveX"
LangString LSTR_79 1150 "Lenn ar pladennoù"
LangString LSTR_80 1150 "Lenn ur film DVD"
LangString LSTR_81 1150 "Lenn ur bladenn aodio CD"
LangString LSTR_82 1150 "Lenn ur bladenn film VCD"
LangString LSTR_83 1150 "Lenn ur bladenn film SVCD"
LangString LSTR_84 1150 "Lenn pladennoù aodio DVD"
LangString LSTR_85 1150 "Lenn restroù video"
LangString LSTR_86 1150 "Lenn restroù aodio"
LangString LSTR_87 1150 "Lenn Blu-ray"
LangString LSTR_88 1150 "Kevreadigezhioù an doareoù restr"
LangString LSTR_89 1150 "Restroù Aodio"
LangString LSTR_90 1150 "Restroù Video"
LangString LSTR_91 1150 "Traoù all"
LangString LSTR_92 1150 "Lañserioù Kemperzhel"
LangString LSTR_93 1150 "Ouzhpennañ da roll-lenn al lenner media VLC"
LangString LSTR_94 1150 "Lemel ar gwellvezioù hag ar grubuilh"
LangString LSTR_95 1150 "Al lenner media en e-unan"
LangString LSTR_96 1150 "Ouzhpennañ arlunioù d'ho lañser loc’hañ evit ur moned aes"
LangString LSTR_97 1150 "Ouzhpennañ un arlun d'ho purev evit ur moned aes"
LangString LSTR_98 1150 "Lugant VLC ActiveX"
LangString LSTR_99 1150 "Enrollañ al lenn ar pladennoù DVD ha CD"
LangString LSTR_100 1150 "Termeniñ al lenner liesvedia VLC evel arload dre ziouer evit an doare restr spisaet"
LangString LSTR_101 1150 "Ouzhpennañ elfennoù lañser kemperzhel ('Lenn gant VLC' ha 'Ouzhpennañ da roll-lenn VLC')"
LangString LSTR_102 1150 "Dilemel gwellvezioù VLC media player ha restroù krubuilh ar staliadurioù kent"
LangString LSTR_103 1150 "Staliet dija"
LangString LSTR_104 1150 "Dibabit penaos e fell deoc’h staliañ VLC."
LangString LSTR_105 1150 "Ur stumm koshoc’h eus VLC a zo staliet war ho reizhiad. Dibabit an oberiadenn a fell deoc’h lañsañ anezhi ha klikit war Da Heul evit kenderc’hel."
LangString LSTR_106 1150 "Hizivaat VLC en ur ober gant an arventennoù kent (erbedet)"
LangString LSTR_107 1150 "Kemm an arventennoù (araokaet)"
LangString LSTR_108 1150 "Ur stumm nevesoc’h eus VLC a zo staliet dija! N'eo ket erbedet ec'h argilfec'h betek ur stumm koshoc’h. Dibabit an oberiadenn a fell deoc’h lañsañ ha klikit war Da Heul evit kenderc’hel."
LangString LSTR_109 1150 "Argilañ VLC en ur ober gant an arventennoù kent (erbedet)"
LangString LSTR_110 1150 "Dibabit an dibarzh trezalc’h da ober."
LangString LSTR_111 1150 "Staliet eo VLC 3.0.24 dija. Dibabit an oberiadenn a fell deoc’h lañsañ ha klikit war Da Heul evit kenderc’hel."
LangString LSTR_112 1150 "Ouzhpennañ/Lemel/Adstaliañ parzhioù"
LangString LSTR_113 1150 "Distaliañ VLC"
LangString LSTR_114 1150 "Diouzh ho kiz"
LangString LSTR_115 1150 Nullañ
LangString LSTR_116 1150 "< &Kent"
LangString LSTR_117 1150 "Klikit war « War-lerc'h » evit mont war-raok."
LangString LSTR_118 1150 "Dibabit an elfennoù a fell deoc'h staliañ pe diziuzit an elfennoù a fell deoc'h leuskel a-gostez. $_CLICK"
LangString LSTR_119 1150 "Dibabit pe seurt staliañ a vo :"
LangString LSTR_120 1150 "Pe dibabit an elfennoù diret a fell deoc'h staliañ :"
LangString LSTR_121 1150 "Dibabit an elfennoù da staliañ :"
LangString LSTR_122 1150 "Staliet e vo $(LSTR_132) gant ar goulev-mañ er c'havlec'h da-heul. Mar fell deoc'h dibab ur c'havlec'h all, klikit war « Furchal » ha dibabit ur c'havlec'h all. $_CLICK"
LangString LSTR_123 1150 "Kavlec'h bukenn"
LangString LSTR_124 1150 F&urchal...
LangString LSTR_125 1150 "Dibabit ar c'havlec'h e vo diazezet $(LSTR_132) ennañ :"
LangString LSTR_126 1150 &Staliañ
LangString LSTR_127 1150 "Klikit war « Staliañ » evit kregiñ gant ar staliadur."
LangString LSTR_128 1150 "Muioc'h a &ditouroù"
LangString LSTR_129 1150 "Echu eo"
LangString LSTR_130 1150 " "
LangString LSTR_131 1150 &Serriñ
LangString LSTR_132 1150 "VLC media player"


; LANG: 1169
LangString LSTR_0 1169 "VideoLAN VLC media player"
LangString LSTR_1 1169 "A’ stàladh $(LSTR_2)"
LangString LSTR_2 1169 "VLC media player"
LangString LSTR_3 1169 "Àite ri fhaighinn: "
LangString LSTR_4 1169 "Àite air a bheil feum: "
LangString LSTR_5 1169 "Cha ghabh sgrìobhadh ann: "
LangString LSTR_8 1169 "Cha deach an samhla a lorg: "
LangString LSTR_9 1169 "Cha b’ urrainn dhuinn a luchdadh: "
LangString LSTR_10 1169 "Cruthaich pasgan: "
LangString LSTR_11 1169 "Cruthaich ath-ghoirid: "
LangString LSTR_12 1169 "Dì-stàlaichear air a chruthachadh: "
LangString LSTR_13 1169 "Sguab às dhan fhaidhle: "
LangString LSTR_14 1169 "Sguab às leis an ath-thòiseachadh: "
LangString LSTR_15 1169 "Mearachd le cruthachadh na h-ath-ghoirid: "
LangString LSTR_16 1169 "Mearachd le cruthachadh: "
LangString LSTR_17 1169 "Thachair mearachd a’ dì-dhùmhlachadh an dàta! ’S dòcha gu bheil an t-inneal-stàlaidh coirbte."
LangString LSTR_19 1169 "ExecShell: "
LangString LSTR_20 1169 "Cuir àithne an gnìomh: "
LangString LSTR_21 1169 "Dì-dhùmhlaich: "
LangString LSTR_22 1169 "Dì-dhùmhlachadh: mearachd a’ sgrìobhadh gu faidhle "
LangString LSTR_23 1169 "Stàlaichear coirbte: opcode mì-dhligheach"
LangString LSTR_24 1169 "Chan eil OLE ann airson: "
LangString LSTR_25 1169 "Pasgan às-chuir: "
LangString LSTR_26 1169 "Thoir pasgan air falbh: "
LangString LSTR_29 1169 "Air leum a ghearradh: "
LangString LSTR_30 1169 "Cuir lethbhreac dhen mhion-fhiosrachadh san stòr-bhòrd"
LangString LSTR_32 1169 B
LangString LSTR_33 1169 " K"
LangString LSTR_34 1169 " M"
LangString LSTR_35 1169 " G"
LangString LSTR_36 1169 "Na mholamaid"
LangString LSTR_37 1169 "Uiread as lugha dheth"
LangString LSTR_38 1169 Slàn
LangString LSTR_39 1169 "Thachair mearachd a’ fosgladh an fhaidhle a chum sgrìobhaidh: $\r$\n$\r$\n$0$\r$\n$\r$\nBriog air “Sguir dheth” gus sgur dhen stàladh, air$\r$\n“Feuch ris a-rithist” gus feuchainn ris a-rithist no air$\r$\n“Leig seachad” gus leum a ghearradh thairis air an fhaidhle seo."
LangString LSTR_40 1169 0
LangString LSTR_41 1169 "Fàilte gu stàladh $(LSTR_132)"
LangString LSTR_42 1169 "MS Shell Dlg"
LangString LSTR_43 1169 "Stiùiridh sinn tron stàladh aig $(LSTR_132) thu.$\r$\n$\r$\nMholamaid gun dùin thu a h-uile aplacaid eile mus tòisich thu air an stàladh. Mar sin, ’s urrainn dhuinn faidhlichean iomchaidh an t-siostaim ùrachadh gun fheum air ath-thòiseachadh a’ choimpiutair agad.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1169 "Tha thu eòlach air do chòraichean a-nis. Briog air $\"Air adhart$\" airson leantainn air adhart."
LangString LSTR_45 1169 "Air adha&rt >"
LangString LSTR_46 1169 "Aonta ceadachais"
LangString LSTR_47 1169 "An doir thu sùil air teirmichean a’ cheadachais mus stàlaich thu $(LSTR_132)?"
LangString LSTR_48 1169 "Brùth air Page Down gus an corr dhen aonta a shealltainn."
LangString LSTR_49 1169 "Tagh co-phàirtean"
LangString LSTR_50 1169 "Tagh na gleusan aig $(LSTR_132) a tha thu airson stàladh."
LangString LSTR_51 1169 Tuairisgeul
LangString LSTR_52 1169 "Cuir an luchag agad air co-phàirt gus a tuairisgeul a shealltainn."
LangString LSTR_53 1169 "Tagh ionad an stàlaidh"
LangString LSTR_54 1169 "Tagh am pasgan san dèid $(LSTR_132) a stàladh."
LangString LSTR_55 1169 "’Ga stàladh"
LangString LSTR_56 1169 "Fuirich ort fhad ’s a tha $(LSTR_132) ’ga stàladh."
LangString LSTR_57 1169 "Stàladh deiseil"
LangString LSTR_58 1169 "Tha an stàladh deiseil."
LangString LSTR_59 1169 "Chaidh sgur dhen stàladh"
LangString LSTR_60 1169 "Cha deach an stàladh a choileanadh."
LangString LSTR_61 1169 &Crìochnaich
LangString LSTR_62 1169 "A’ coileanadh an stàlaidh aig $(LSTR_132)"
LangString LSTR_63 1169 "Chaidh $(LSTR_132) a stàladh air a’ choimpiutair agad.$\r$\n$\r$\nBriog air “Crìochnaich” gus an t-inneal-stàlaidh a dhùnadh."
LangString LSTR_64 1169 "&Ruith $(LSTR_132)"
LangString LSTR_65 1169 "Tadhail air an làrach-lìn aig cluicheadair mheadhanan VLC le VideoLAN"
LangString LSTR_66 1169 8
LangString LSTR_67 1169 "A bheil thu cinnteach gu bheil thu airson an stàladh aig $(LSTR_2) fhàgail?"
LangString LSTR_68 1169 Cluich
LangString LSTR_69 1169 "Tha coltas gu bheil VLC a' dol agus thèid a dhùnadh an-dràsta."
LangString LSTR_70 1169 "Cha b' urrainn dhan stàlaichear VLC a dhùnadh, feuch is dùin e thu fhèin."
LangString LSTR_71 1169 "Sguireadh dhen stàladh!"
LangString LSTR_72 1169 "Cluicheadair mheadhanan (riatanach)"
LangString LSTR_73 1169 "A' sgrùdadh an adhartais..."
LangString LSTR_74 1169 "Cluich le cluicheadair mheadhanan VLC"
LangString LSTR_75 1169 "Ath-ghoirid sa chlàr-taice tòiseachaidh"
LangString LSTR_76 1169 "Ath-ghoirid air an deasg"
LangString LSTR_77 1169 Plugain-lìn
LangString LSTR_78 1169 "Plugan ActiveX"
LangString LSTR_79 1169 "Cluich dhiosgan"
LangString LSTR_80 1169 "Cluich film DVD"
LangString LSTR_81 1169 "Cluich CD fuaime"
LangString LSTR_82 1169 "Cluich film VCD"
LangString LSTR_83 1169 "Cluich film SVCD"
LangString LSTR_84 1169 "Cluich DVD fuaime"
LangString LSTR_85 1169 "Cluich faidhlichean video"
LangString LSTR_86 1169 "Cluich faidhlichean fuaime"
LangString LSTR_87 1169 "Cluich Blu-ray"
LangString LSTR_88 1169 "Dàimhean nam faidhle"
LangString LSTR_89 1169 "Faidhlichean fuaime"
LangString LSTR_90 1169 "Faidhlichean video"
LangString LSTR_91 1169 Eile
LangString LSTR_92 1169 "Clàran-taice co-theacsail"
LangString LSTR_93 1169 "Cuir ri liosta-chluiche cluicheadair mheadhanan VLC"
LangString LSTR_94 1169 "Sguab às na roghainnean is an tasgadan"
LangString LSTR_95 1169 "Cluicheadair nam meadhanan e fhèin."
LangString LSTR_96 1169 "Cuir ìomhaigheagan ris a' chlàr-taice tòiseachaidh airson grad-inntrigeadh"
LangString LSTR_97 1169 "Cuir ìomhaigheagan air an deasg airson grad-inntrigeadh"
LangString LSTR_98 1169 "Am plugan ActiveX"
LangString LSTR_99 1169 "Clàradh airson cluich DVDan is CDan"
LangString LSTR_100 1169 "Suidhichidh seo cluicheadair mheadhanan VLC mar an aplacaid bhunaiteach airson a leithid ud a dh'fhaidhle."
LangString LSTR_101 1169 "Cuir buill cho-theacsail ris a' chlàr-taice ($\"Cluich le VLC$\" agus $\"Cuir ri liosta-chluiche VLC$\")"
LangString LSTR_102 1169 "Sguabaidh seo às roghainnean is faidhlichean san tasgadan aig VLC a tha air fhàgail o stàlaidhean roimhe"
LangString LSTR_103 1169 "Air a stàladh mu thràth"
LangString LSTR_104 1169 "Cuir romhad mar a stàlaichear VLC dhut."
LangString LSTR_105 1169 "Tha tionndadh nas sine de VLC stàlaichte air an t-siostam agad. Tagh an gnìomh a bu toigh leat dèanamh is briog air $\"Air adhart$\" gus leantainn air adhart."
LangString LSTR_106 1169 "Àrdaich VLC, a' cleachdadh nan seann-roghainnean (mholamaid seo)"
LangString LSTR_107 1169 "Atharraich na roghainnean (adhartach)"
LangString LSTR_108 1169 "Tha tionndadh nas ùire de VLC stàlaichte mu thràth! Cha mholamaid dhut tionndadh nas sine a chur 'na àite. Tagh an gnìomh a bu toigh leat dèanamh is briog air $\"Air adhart$\" gus leantainn air adhart."
LangString LSTR_109 1169 "Ìslich VLC a' cleachdadh nan seann-roghainnean (mholamaid seo)"
LangString LSTR_110 1169 "Tagh an obair-ghlèidhidh a tha ri dhèanamh."
LangString LSTR_111 1169 "Tha VLC 3.0.24 air a stàladh mu thràth. Tagh an gnìomh a bu toigh leat dèanamh is briog air $\"Air adhart$\" gus leantainn air adhart."
LangString LSTR_112 1169 "Cuir ris/Thoir air falbh/Ath-stàlaich co-phàirtean"
LangString LSTR_113 1169 "Dì-stàlaich VLC"
LangString LSTR_114 1169 Gnàthaichte
LangString LSTR_115 1169 "Sguir dheth"
LangString LSTR_116 1169 "< Air ai&s"
LangString LSTR_117 1169 "Briog air “Air adhart” gus leantainn air adhart."
LangString LSTR_118 1169 "Thoir cromag ann am bogsaichean nan co-phàirtean a tha thu airson stàladh is thoir air falbh i o bhogsaichean nan co-phàirtean nach eil thu ag iarraidh. $_CLICK"
LangString LSTR_119 1169 "Tagh an seòrsa dhen stàladh:"
LangString LSTR_120 1169 "No tagh na co-phàirtean roghainneil a tha thu airson stàladh:"
LangString LSTR_121 1169 "Tagh na co-phàirtean a tha thu airson stàladh:"
LangString LSTR_122 1169 "Thèid $(LSTR_132) a stàladh sa phasgan seo. Gus stàladh ann am pasgan eile, briog air “Rùraich” is tagh pasgan eile. $_CLICK"
LangString LSTR_123 1169 Pasgan-uidhe
LangString LSTR_124 1169 &Rùraich…
LangString LSTR_125 1169 "Tagh am pasgan san dèid $(LSTR_132) a stàladh:"
LangString LSTR_126 1169 &Stàlaich
LangString LSTR_127 1169 "Briog air “Stàlaich” gus tòiseachadh air an stàladh."
LangString LSTR_128 1169 &Mion-fhiosrachadh
LangString LSTR_129 1169 Coileanta
LangString LSTR_130 1169 " "
LangString LSTR_131 1169 &Dùin
LangString LSTR_132 1169 "VLC media player"


; LANG: 1057
LangString LSTR_0 1057 "VideoLAN VLC media player"
LangString LSTR_1 1057 "Instalasi Program $(LSTR_2)"
LangString LSTR_2 1057 "VLC media player"
LangString LSTR_3 1057 "Ruang yang tersedia:   "
LangString LSTR_4 1057 "Ruang yang dibutuhkan: "
LangString LSTR_5 1057 "Tidak bisa menulis pada berkas: "
LangString LSTR_8 1057 "Tidak dapat menemukan simbol: "
LangString LSTR_9 1057 "Tidak dapat memuat: "
LangString LSTR_10 1057 "Membuat tempat menyimpan berkas: "
LangString LSTR_11 1057 "Membuat shortcut: "
LangString LSTR_12 1057 "Program penghapusan yang dibuat: "
LangString LSTR_13 1057 "Menghapus berkas: "
LangString LSTR_14 1057 "Akan dihapus saat reboot: "
LangString LSTR_15 1057 "Tidak dapat membuat shortcut: "
LangString LSTR_16 1057 "Ada kesalahan saat membuat: "
LangString LSTR_17 1057 "Ada kesalahan saat membuka data! Program Instalasi tidak lengkap?"
LangString LSTR_19 1057 "Perintah: "
LangString LSTR_20 1057 "Menjalankan: "
LangString LSTR_21 1057 "Proses ekstraksi berkas: "
LangString LSTR_22 1057 "Ekstraksi: ada kesalahan saat menulis ke berkas "
LangString LSTR_23 1057 "Program instalasi rusak: kode program tidak lengkap"
LangString LSTR_24 1057 "OLE tidak ditemukan: "
LangString LSTR_25 1057 "Lokasi tujuan: "
LangString LSTR_26 1057 "Menghapus lokasi penyimpanan: "
LangString LSTR_29 1057 "Dilewati: "
LangString LSTR_30 1057 "Salin perincian ke Clipboard"
LangString LSTR_32 1057 B
LangString LSTR_33 1057 " K"
LangString LSTR_34 1057 " M"
LangString LSTR_35 1057 " G"
LangString LSTR_36 1057 Direkomendasikan
LangString LSTR_37 1057 Minimum
LangString LSTR_38 1057 Penuh
LangString LSTR_39 1057 "Tidak dapat membuka berkas untuk menulis: $\r$\n$\t$\"$0$\"$\r$\nTekan tombol Abort untuk membatalkan instalasi,$\r$\nRetry untuk mencoba lagi, atau$\r$\nIgnore untuk melewati file ini."
LangString LSTR_40 1057 0
LangString LSTR_41 1057 "Selamat datang di program instalasi $(LSTR_132)"
LangString LSTR_42 1057 "MS Shell Dlg"
LangString LSTR_43 1057 "Program ini akan membantu anda dalam proses instalasi $(LSTR_132).$\r$\n$\r$\nAnda sangat disarankan untuk menutup program lainnya sebelum memulai proses instalasi. Hal ini diperlukan agar berkas yang terkait dapat diperbarui tanpa harus booting ulang komputer anda.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1057 "Anda sekarang sadar atas hak anda. Klik Lanjut untuk melanjutkan."
LangString LSTR_45 1057 "&Lanjut >"
LangString LSTR_46 1057 "Perihal Lisensi"
LangString LSTR_47 1057 "Silahkan membaca perihal lisensi sebelum memulai proses instalasi $(LSTR_132)."
LangString LSTR_48 1057 "Tekan tombol Page Down untuk melihat pernyataan berikutnya."
LangString LSTR_49 1057 "Pilih Komponen"
LangString LSTR_50 1057 "Pilih komponen fitur tambahan dari $(LSTR_132) yang ingin di instal."
LangString LSTR_51 1057 Deskripsi
LangString LSTR_52 1057 "Tunjuk ke salah satu komponen untuk melihat deskripsi tentang komponen itu."
LangString LSTR_53 1057 "Pilih Lokasi Instalasi"
LangString LSTR_54 1057 "Pilih lokasi untuk instalasi program $(LSTR_132)."
LangString LSTR_55 1057 "Proses instalasi "
LangString LSTR_56 1057 "Mohon tunggu sejenak, instalasi program $(LSTR_132) sedang berlangsung."
LangString LSTR_57 1057 "Instalasi Selesai"
LangString LSTR_58 1057 "Seluruh proses instalasi sudah paripurna."
LangString LSTR_59 1057 "Instalasi Dibatalkan"
LangString LSTR_60 1057 "Proses instalasi tidak selesai dengan sempurna."
LangString LSTR_61 1057 &Selesai
LangString LSTR_62 1057 "Menutup Instalasi Program $(LSTR_132)"
LangString LSTR_63 1057 "$(LSTR_132) sudah di instal di komputer anda.$\r$\n$\r$\nTekan tombol Selesai untuk menutup program."
LangString LSTR_64 1057 "&Jalankan $(LSTR_132)"
LangString LSTR_65 1057 "Kunjungi situs web VideoLAN pemutar media VLC"
LangString LSTR_66 1057 8
LangString LSTR_67 1057 "Apakah anda yakin ingin menghentikan proses instalasi $(LSTR_2)?"
LangString LSTR_68 1057 Putar
LangString LSTR_69 1057 "Sepertinya VLC masih berjalan dan saat ini akan ditutup."
LangString LSTR_70 1057 "Pemasang ini tidak dapat menutup VLC, silahkan lakukan secara manual."
LangString LSTR_71 1057 "Pemasangan dibatalkan!"
LangString LSTR_72 1057 "Pemutar Media (dibutuhkan)"
LangString LSTR_73 1057 "Memeriksa proses..."
LangString LSTR_74 1057 "Putar dengan pemutar media VLC"
LangString LSTR_75 1057 "Pintasan Menu Mulai"
LangString LSTR_76 1057 "Pintasan Desktop"
LangString LSTR_77 1057 "Pengaya Web"
LangString LSTR_78 1057 "Pengaya ActiveX"
LangString LSTR_79 1057 "Pemutaran Diska"
LangString LSTR_80 1057 "Putar film DVD"
LangString LSTR_81 1057 "Putar CD audio"
LangString LSTR_82 1057 "Putar film VCD"
LangString LSTR_83 1057 "Putar film SVCD"
LangString LSTR_84 1057 "Putar DVD audio"
LangString LSTR_85 1057 "Putar berkas video"
LangString LSTR_86 1057 "Putar berkas audio"
LangString LSTR_87 1057 "Putar Blu-ray"
LangString LSTR_88 1057 "Asosiasi jenis berkas"
LangString LSTR_89 1057 "Berkas Audio"
LangString LSTR_90 1057 "Berkas Video"
LangString LSTR_91 1057 "Berkas Lainnya"
LangString LSTR_92 1057 "Menu Konteks"
LangString LSTR_93 1057 "Tambahkan ke daftar putar pemutar media VLC"
LangString LSTR_94 1057 "Hapus preferensi dan tembolok"
LangString LSTR_95 1057 "Pemutar media itu sendiri"
LangString LSTR_96 1057 "Tambahkan ikon pada menu mulai anda untuk kemudahan akses"
LangString LSTR_97 1057 "Tambahkan ikon ke destop anda untuk kemudahan akses"
LangString LSTR_98 1057 "Pengaya ActiveX VLC"
LangString LSTR_99 1057 "Registrasi pemutaran CD dan DVD"
LangString LSTR_100 1057 "Setel pemutar media VLC sebagai aplikasi baku untuk jenis berkas tertentu"
LangString LSTR_101 1057 "Tambahkan butir menu konteks ('Putar dengan VLC' dan 'Tambahkan Ke Daftar Putar VLC')"
LangString LSTR_102 1057 "Hapus preferensi  pemutar media dan tembolok VLC yang tertinggal dari pemasangan sebelumya"
LangString LSTR_103 1057 "Sudah Dipasang"
LangString LSTR_104 1057 "Pilih bagaimana Anda memasang VLC."
LangString LSTR_105 1057 "Versi VLC yang lebih lama terpasang di sistem Anda. Pilih operasi yang ingin Anda laksanakan dan klik Lanjut untuk melanjutkan."
LangString LSTR_106 1057 "Mutakhirkan VLC menggunakan pengaturan sebelumnya (direkomendasikan)"
LangString LSTR_107 1057 "Ubah pengaturan (lanjutan)"
LangString LSTR_108 1057 "Versi VLC yang terbaru sudah terpasang! Tidak direkomendasikan menurunkan ke versi yang lebih lama. Pilih operasi yang ingin Anda lakukan dan klik Lanjut untuk melanjutkan."
LangString LSTR_109 1057 "Turunkan versi VLC menggunakan pengaturan sebelumnya (direkomendasikan)"
LangString LSTR_110 1057 "Pilih opsi pemeliharaan untuk dijalankan."
LangString LSTR_111 1057 "VLC 3.0.24 sudah terpasang. Pilih operasi yang ingin Anda lakukan dan klik Lanjut untuk melanjutkan."
LangString LSTR_112 1057 "Tambah/Buang/Pasang Ulang komponen"
LangString LSTR_113 1057 "Copot VLC"
LangString LSTR_114 1057 "Tentukan Sendiri"
LangString LSTR_115 1057 Batalkan
LangString LSTR_116 1057 "< &Mundur"
LangString LSTR_117 1057 "Tekan tombol Lanjut untuk melanjutkan."
LangString LSTR_118 1057 "Beri tanda centang pada komponen yang akan di instal and hilangkan tanda centang pada komponen yang tidak perlu di instal. $_CLICK"
LangString LSTR_119 1057 "Pilih tipe instalasi:"
LangString LSTR_120 1057 "Atau, pilih komponen tambahan yang akan di instal:"
LangString LSTR_121 1057 "Pilih komponen-komponen yang akan di instal:"
LangString LSTR_122 1057 "Program $(LSTR_132) akan di instal pada lokasi berikut. Untuk memilih lokasi, tekan tombol Cari kemudian pilih lokasi yang anda kehendaki. $_CLICK"
LangString LSTR_123 1057 "Lokasi instalasi"
LangString LSTR_124 1057 Ca&ri...
LangString LSTR_125 1057 "Pilih lokasi instalasi program $(LSTR_132):"
LangString LSTR_126 1057 &Instal
LangString LSTR_127 1057 "Tekan tombol Instal untuk memulai instalasi."
LangString LSTR_128 1057 "Lihat &perincian"
LangString LSTR_129 1057 Selesai
LangString LSTR_130 1057 " "
LangString LSTR_131 1057 &Tutup
LangString LSTR_132 1057 "VLC media player"


; LANG: 1062
LangString LSTR_0 1062 "VideoLAN VLC media player"
LangString LSTR_1 1062 "'$(LSTR_2)' Uzstādīšana"
LangString LSTR_2 1062 "VLC media player"
LangString LSTR_3 1062 "Pieejamais diska apjoms: "
LangString LSTR_4 1062 "Nepieciešamais diska apjoms: "
LangString LSTR_5 1062 "Nevar ierakstīt: "
LangString LSTR_8 1062 "Simbols nav atrasts: "
LangString LSTR_9 1062 "Nav iespējams ielādēt: "
LangString LSTR_10 1062 "Izveido mapi: "
LangString LSTR_11 1062 "Izveido saīsni: "
LangString LSTR_12 1062 "Izveidots atinstalētājs: "
LangString LSTR_13 1062 "Dzēš failu: "
LangString LSTR_14 1062 "Dzēst pēc pārstartēšanas: "
LangString LSTR_15 1062 "Kļūda veidojot saīsni: "
LangString LSTR_16 1062 "Kļūda veidojot: "
LangString LSTR_17 1062 "Kļūda atkompresējot datus! Bojāta instalācija?"
LangString LSTR_19 1062 "Izpilda čaulā: "
LangString LSTR_20 1062 "Izpilda: "
LangString LSTR_21 1062 "Atspiež: "
LangString LSTR_22 1062 "Atspiešana: kļūda rakstot failā "
LangString LSTR_23 1062 "Instalācija bojāta: nederīgs CRC kods"
LangString LSTR_24 1062 "Nav OLE priekš: "
LangString LSTR_25 1062 "Izvades mape: "
LangString LSTR_26 1062 "Dzēš mapi: "
LangString LSTR_29 1062 "Izlaists: "
LangString LSTR_30 1062 "Iekopēt detaļas starpliktuvē"
LangString LSTR_32 1062 B
LangString LSTR_33 1062 " K"
LangString LSTR_34 1062 " M"
LangString LSTR_35 1062 " G"
LangString LSTR_36 1062 Ieteicamais
LangString LSTR_37 1062 Minimālais
LangString LSTR_38 1062 Pilnais
LangString LSTR_39 1062 "Kļūda atverot failu rakstīšanai: $\r$\n$\t$\"$0$\"$\r$\nNospiediet 'Atcelt', lai atceltu uzstādīšanas procesu,$\r$\n'Mēģināt vēlreiz', lai atkārtoti mēģinātu rakstīt failā vai$\r$\n'Ignorēt', lai izlaistu šī faila uzstādīšanu"
LangString LSTR_40 1062 0
LangString LSTR_41 1062 "Esiet sveicināti '$(LSTR_132)' uzstādīšanas vednī"
LangString LSTR_42 1062 "MS Shell Dlg"
LangString LSTR_43 1062 "Šis uzstādīšanas vednis jums palīdzēs veikt '$(LSTR_132)' uzstādīšanu.$\r$\n$\r$\nĻoti ieteicams aizvērt citas programmas pirms šīs programmas uzstādīšanas veikšanas. Tas ļaus atjaunot svarīgus sistēmas failus bez datora pārstartēšanas.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1062 "Tagad jūs esat apzinājies savas tiesības. Noklikšķiniet uz Tālāk, lai turpinātu."
LangString LSTR_45 1062 "&Tālāk >"
LangString LSTR_46 1062 "Licences līgums"
LangString LSTR_47 1062 "Lūdzu izlasiet licences līgumu pirms '$(LSTR_132)' uzstādīšanas."
LangString LSTR_48 1062 "Spiediet 'Page Down', lai aplūkotu visu līgumu."
LangString LSTR_49 1062 "Izvēlieties komponentus"
LangString LSTR_50 1062 "Izvēlieties nepieciešamās '$(LSTR_132)' sastāvdaļas, kuras uzstādīt."
LangString LSTR_51 1062 Apraksts
LangString LSTR_52 1062 "Novietojiet peles kursoru uz komponenta, lai tiktu parādīts tā apraksts."
LangString LSTR_53 1062 "Izvēlieties uzstādīšanas mapi"
LangString LSTR_54 1062 "Izvēlieties mapi, kurā uzstādīt '$(LSTR_132)'."
LangString LSTR_55 1062 "Notiek uzstādīšana"
LangString LSTR_56 1062 "Lūdzu uzgaidiet, kamēr notiek '$(LSTR_132)' uzstādīšana."
LangString LSTR_57 1062 "Uzstādīšana pabeigta"
LangString LSTR_58 1062 "Uzstādīšana noritēja veiksmīgi."
LangString LSTR_59 1062 "Uzstādīšana atcelta"
LangString LSTR_60 1062 "Uzstādīšana nenoritēja veiksmīgi."
LangString LSTR_61 1062 &Pabeigt
LangString LSTR_62 1062 "Tiek pabeigta '$(LSTR_132)' uzstādīšana"
LangString LSTR_63 1062 "'$(LSTR_132)' tika veiksmīgi uzstādīta jūsu datorā.$\r$\n$\r$\nNospiediet 'Pabeigt', lai aizvērtu vedni."
LangString LSTR_64 1062 "P&alaist '$(LSTR_132)'"
LangString LSTR_65 1062 "Apmeklēt VideoLAN VLC mediju atskaņotāja tīmekļa vietni"
LangString LSTR_66 1062 8
LangString LSTR_67 1062 "Vai tiešām vēlaties pārtraukt '$(LSTR_2)' uzstādīšanu?"
LangString LSTR_68 1062 Atskaņot
LangString LSTR_69 1062 "Izskatās, ka VLC darbojas, un nu tiks aizvērts."
LangString LSTR_70 1062 "Instalētājs nespēja aizvērt VLC. Lūdzu, izdariet to pašrocīgi."
LangString LSTR_71 1062 "Instalācija pārtraukta!"
LangString LSTR_72 1062 "Mediju atskaņotājs (nepieciešams)"
LangString LSTR_73 1062 "Pārbauda processus..."
LangString LSTR_74 1062 "Atskaņot ar VLC mediju atskaņotāju"
LangString LSTR_75 1062 "Sākuma izvēlnes saīsne"
LangString LSTR_76 1062 "Darbvirsmas saīsne"
LangString LSTR_77 1062 "Tīmekļa spraudņi"
LangString LSTR_78 1062 "ActiveX spraudnis"
LangString LSTR_79 1062 "Disku atskaņošana"
LangString LSTR_80 1062 "Atskaņot DVD filmu"
LangString LSTR_81 1062 "Atskaņot audio CD"
LangString LSTR_82 1062 "Atskaņot VCD filmu"
LangString LSTR_83 1062 "Atskaņot SVCD filmu"
LangString LSTR_84 1062 "Atskaņot audio DVD"
LangString LSTR_85 1062 "Atskaņot video datnes"
LangString LSTR_86 1062 "Atskaņot audio datnes"
LangString LSTR_87 1062 "Atskaņot Blu-ray"
LangString LSTR_88 1062 "Datņu tipu asociācijas"
LangString LSTR_89 1062 "Audio datnes"
LangString LSTR_90 1062 "Video datnes"
LangString LSTR_91 1062 Citi
LangString LSTR_92 1062 "Konteksta izvēlnes"
LangString LSTR_93 1062 "Pievienot VLC mediju atskaņotāja atskaņošanas sarakstam"
LangString LSTR_94 1062 "Dzēst iestatījumus un kešatmiņu"
LangString LSTR_95 1062 "Pats mediju atskaņotājs"
LangString LSTR_96 1062 "Vieglākai piekļuvei pievieno ikonas jūsu sākuma izvēlnei"
LangString LSTR_97 1062 "Vieglākai piekļuvei pievieno ikonu jūsu darbvirsmai"
LangString LSTR_98 1062 "VLC ActiveX spraudnis"
LangString LSTR_99 1062 "DVD un CD atskaņošanas reģistrācija"
LangString LSTR_100 1062 "Iestata VLC mediju atskaņotāju kā noklusējuma lietotni norādītajam datnes tipam"
LangString LSTR_101 1062 "Pievienot konteksta izvēlnes vienumus ('Atskaņot ar VLC' un 'Pievienot VLC atskaņošanas sarakstam')"
LangString LSTR_102 1062 "Dzēš VLC mediju atskaņotāja iestatījumus un kešatmiņas datņu atlikumus no iepriekšējām instalācijām"
LangString LSTR_103 1062 "Jau instalēts"
LangString LSTR_104 1062 "Izvēlieties, kā jūs vēlaties instalēt VLC."
LangString LSTR_105 1062 "Jūsu sistēmā ir instalēta vecāka VLC versija. Atlasiet darbību, ko jūs vēlaties izpildīt, un klikšķiniet Tālāk, lai turpinātu."
LangString LSTR_106 1062 "Jaunināt VLC, izmantojot iepriekšējos iestatījumus (ieteicams)"
LangString LSTR_107 1062 "Mainīt iestatījumus (pieredzējušiem)"
LangString LSTR_108 1062 "Jaunāka VLC versija jau ir instalēta! Nav ieteicams, ka jūs pazemināt uz vecāku VLC versiju. Atlasiet darbību, ko jūs vēlaties izpildīt, un klikšķiniet Tālāk, lai turpinātu."
LangString LSTR_109 1062 "Pazemināt VLC versiju, izmantojot iepriekšējos iestatījumus (ieteicams)"
LangString LSTR_110 1062 "Izvēlieties izpildāmo uzturēšanas opciju."
LangString LSTR_111 1062 "VLC 3.0.24 ir jau instalēts. Atlasiet darbību, ko jūs vēlaties izpildīt, un klikšķiniet Tālāk, lai turpinātu."
LangString LSTR_112 1062 "Pievienot/noņemt/atkārtoti instalēt komponentus"
LangString LSTR_113 1062 "Noņemt VLC"
LangString LSTR_114 1062 Pielāgots
LangString LSTR_115 1062 Atcelt
LangString LSTR_116 1062 "< &Atpakaļ"
LangString LSTR_117 1062 "Spiediet 'Tālāk', lai turpinātu."
LangString LSTR_118 1062 "Izvēlieties, kurus komponentus vēlaties uzstādīt un neiezīmējiet tos, kurus nevēlaties uzstādīt. $_CLICK"
LangString LSTR_119 1062 "Izvēlieties uzstādīšanas veidu:"
LangString LSTR_120 1062 "Vai arī – izvēlieties tikai nepieciešamos komponentus, kurus vēlaties uzstādīt:"
LangString LSTR_121 1062 "Izvēlieties uzstādāmos komponentus:"
LangString LSTR_122 1062 "'$(LSTR_132)' tiks uzstādīta šajā mapē. Lai to uzstādītu citā mapē, nospiediet 'Pārlūkot' un izvēlieties citu mapi. $_CLICK"
LangString LSTR_123 1062 "Uzstādīšanas mape"
LangString LSTR_124 1062 Pā&rlūkot...
LangString LSTR_125 1062 "Izvēlieties mapi, kurā uzstādīt '$(LSTR_132)':"
LangString LSTR_126 1062 &Uzstādīt
LangString LSTR_127 1062 "Spiediet 'Uzstādīt', lai sāktu uzstādīšanas procesu."
LangString LSTR_128 1062 "Parādīt &detaļas"
LangString LSTR_129 1062 "Uzstādīšana pabeigta"
LangString LSTR_130 1062 " "
LangString LSTR_131 1062 Ai&zvērt
LangString LSTR_132 1062 "VLC media player"


; LANG: 1039
LangString LSTR_0 1039 "VideoLAN VLC media player"
LangString LSTR_1 1039 "$(LSTR_2) Uppsetning"
LangString LSTR_2 1039 "VLC media player"
LangString LSTR_3 1039 "Tiltækt rými: "
LangString LSTR_4 1039 "Nauðsynlegt rými: "
LangString LSTR_5 1039 "Get ei skrifað: "
LangString LSTR_8 1039 "Fann ekki tákn: "
LangString LSTR_9 1039 "Gat ekki hlaðið inn: "
LangString LSTR_10 1039 "Búa til skráarsafn: "
LangString LSTR_11 1039 "Búa til flýtileið: "
LangString LSTR_12 1039 "Bjó til fjarlægingarhjálp: "
LangString LSTR_13 1039 "Eyða skrá: "
LangString LSTR_14 1039 "Eyða við endurræsingu: "
LangString LSTR_15 1039 "Villa við gerð flýtileiðar: "
LangString LSTR_16 1039 "Villa við gerð: "
LangString LSTR_17 1039 "Villa við afþjöppun gagna! Biluð uppsetningarhjálp?"
LangString LSTR_19 1039 "Keyrslugluggi: "
LangString LSTR_20 1039 "Keyra: "
LangString LSTR_21 1039 "Færa út: "
LangString LSTR_22 1039 "Færa út: villa við að skrifa í skrá "
LangString LSTR_23 1039 "Uppsetningarhjálp biluð: rangur stýrikóði"
LangString LSTR_24 1039 "Engin OLE fyrir: "
LangString LSTR_25 1039 "Útskráarsafn: "
LangString LSTR_26 1039 "Fjarlægja skráarsafn: "
LangString LSTR_29 1039 "Sleppt: "
LangString LSTR_30 1039 "Afrita upplýsingar til skrifbrettis"
LangString LSTR_32 1039 B
LangString LSTR_33 1039 " K"
LangString LSTR_34 1039 " M"
LangString LSTR_35 1039 " G"
LangString LSTR_36 1039 "Mælt með"
LangString LSTR_37 1039 Lágmarks
LangString LSTR_38 1039 Allt
LangString LSTR_39 1039 "Villa við að skrifa í skrá: $\r$\n$\r$\n$0$\r$\n$\r$\nSmelltu á 'Hætta við' til að stoppa uppsetninguna,$\r$\n'Reyna aftur' til að gera aðra tilraun, eða$\r$\n'Hunsa' til sleppa þessari skrá."
LangString LSTR_40 1039 0
LangString LSTR_41 1039 "Velkominn til $(LSTR_132) uppsetningarhjálparinnar"
LangString LSTR_42 1039 "MS Shell Dlg"
LangString LSTR_43 1039 "Þessi hjálp mun leiða þig í gegnum uppsetninguna á $(LSTR_132).$\r$\n$\r$\nMælt er með því að þú lokir öllum öðrum forritum áður en uppsetningin hefst. Þetta mun gera uppsetningarforritinu kleyft að uppfæra kerfiskrár án þess að endurræsa tölvuna.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1039 "Núna veistu hvar þú stendur. Smelltu á Næsta til að halda áfram."
LangString LSTR_45 1039 "&Áfram >"
LangString LSTR_46 1039 Notandaleyfissamningur
LangString LSTR_47 1039 "Vinsamlegast skoðaðu Notandaleyfissamninginn vel áður en uppsetning á $(LSTR_132) hefst."
LangString LSTR_48 1039 "Smelltu á 'PageDown' takkann á lyklaborðinu til að sjá afganginn af samningnum."
LangString LSTR_49 1039 "Velja íhluti"
LangString LSTR_50 1039 "Veldu hvaða $(LSTR_132) íhluti þú vilt setja upp."
LangString LSTR_51 1039 Lýsing
LangString LSTR_52 1039 "Færðu músina yfir íhlut til að fá lýsinguna á honum."
LangString LSTR_53 1039 "Veldu uppsetningarskáarsafn"
LangString LSTR_54 1039 "Veldu það skráarsafn sem þú vilt setja $(LSTR_132) upp í."
LangString LSTR_55 1039 "Set upp"
LangString LSTR_56 1039 "Vinsamlegast dokaðu við meðan $(LSTR_132) er sett upp."
LangString LSTR_57 1039 "Uppsetningu lokið"
LangString LSTR_58 1039 "Uppsetning tókst."
LangString LSTR_59 1039 "Hætt við uppsetningu"
LangString LSTR_60 1039 "Uppsetningu lauk ekki sem skildi."
LangString LSTR_61 1039 &Ljúka
LangString LSTR_62 1039 "Ljúka $(LSTR_132) uppsetningarhjálpinni"
LangString LSTR_63 1039 "$(LSTR_132) er nú upp sett á tölvunni þinni.$\r$\n$\r$\nSmelltu á 'Ljúka' til að loka þessari hjálp."
LangString LSTR_64 1039 "&Keyra $(LSTR_132)"
LangString LSTR_65 1039 "Heimsækja vef VideoLAN VLC margmiðlunarspilarans"
LangString LSTR_66 1039 8
LangString LSTR_67 1039 "Ertu viss um að þú viljir loka $(LSTR_2) uppsetningarhjálpinni?"
LangString LSTR_68 1039 Spila
LangString LSTR_69 1039 "VLC virðist vera í gangi og verður núna lokað."
LangString LSTR_70 1039 "Uppsetningarforritið gat ekki lokað VLC, þú verður að gera það handvirkt."
LangString LSTR_71 1039 "Hætt við uppsetningu!"
LangString LSTR_72 1039 "Margmiðlunarspilari (krafist)"
LangString LSTR_73 1039 "Athuga ferli..."
LangString LSTR_74 1039 "Spila með VLC spilaranum"
LangString LSTR_75 1039 "Tengill í aðalvalmynd"
LangString LSTR_76 1039 "Tengill á skjáborð"
LangString LSTR_77 1039 Vefíforrit
LangString LSTR_78 1039 "ActiveX íforrit"
LangString LSTR_79 1039 "Afspilun diska"
LangString LSTR_80 1039 "Spila DVD-mynd"
LangString LSTR_81 1039 "Spila CD-hljóðdisk"
LangString LSTR_82 1039 "Spila VCD-mynd"
LangString LSTR_83 1039 "Spila SVCD-mynd"
LangString LSTR_84 1039 "Spila DVD-hljóðdisk"
LangString LSTR_85 1039 "Spila myndskeiðaskrár"
LangString LSTR_86 1039 "Spila hljóðskrár"
LangString LSTR_87 1039 "Spila Blu-ray"
LangString LSTR_88 1039 Skráavensl
LangString LSTR_89 1039 Hljóðskrár
LangString LSTR_90 1039 Myndskeiðasskrár
LangString LSTR_91 1039 Annað
LangString LSTR_92 1039 Samhengisvalmyndir
LangString LSTR_93 1039 "Bæta á spilunarlista VLC"
LangString LSTR_94 1039 "Eyða kjörstillingum og skyndiminni"
LangString LSTR_95 1039 "Sjálfur margmiðlunarspilarinn"
LangString LSTR_96 1039 "Bætir táknmyndum á aðalvalmyndina til að auðvelda aðgengi"
LangString LSTR_97 1039 "Bætir táknmyndum á skjáborðið til að auðvelda aðgengi"
LangString LSTR_98 1039 "VLC ActiveX íforrit"
LangString LSTR_99 1039 "Skráning á  afspilun DVD og CD"
LangString LSTR_100 1039 "Stillir VLC-margmiðlunarspilarann sem sjálfgefið forrit fyrir tilgreindar skráategundir"
LangString LSTR_101 1039 "Bæta við línum í samhengisvalmynd ('Spila með VLC' og 'Setja á spilunarlista VLC')"
LangString LSTR_102 1039 "Eyðir kjörstillingum VLC og skrám í skyndiminni sem gætu verið afgangs eftir fyrri uppsetningar"
LangString LSTR_103 1039 "Þegar uppsett"
LangString LSTR_104 1039 "Veldu hvernig þú vilt setja upp VLC ."
LangString LSTR_105 1039 "Eldri útgáfa VLC er uppsett á kerfinu þínu. Veldu þá aðgerð sem þú vilt framkvæma og smelltu á Næsta til að halda áfram."
LangString LSTR_106 1039 "Uppfæra VLC með fyrri stillingum (mælt með þessu)"
LangString LSTR_107 1039 "Breyta stillingum (ítarlegt)"
LangString LSTR_108 1039 "Nýrri útgáfa VLC er þegar uppsett! Ekki er mælt með því að niðurfæra í eldri útgáfu. Veldu þá aðgerð sem þú vilt framkvæma og smelltu á Næsta til að halda áfram."
LangString LSTR_109 1039 "Niðurfæra VLC með fyrri stillingum (mælt með þessu)"
LangString LSTR_110 1039 "Veldu þá viðhaldsaðgerð sem þú vilt framkvæma."
LangString LSTR_111 1039 "VLC 3.0.24 er þegar uppsett. Veldu þá aðgerð sem þú vilt framkvæma og smelltu á Næsta til að halda áfram."
LangString LSTR_112 1039 "Bæta við/Fjarlægja/Enduruppsetja forritseiningar"
LangString LSTR_113 1039 "Henda VLC út"
LangString LSTR_114 1039 Sjálfval
LangString LSTR_115 1039 "Hætta við"
LangString LSTR_116 1039 "< &Til baka"
LangString LSTR_117 1039 "Smelltu á 'Áfram' til að halda áfram."
LangString LSTR_118 1039 "Hakaðu við þá íhluti sem þú vilt setja upp og taktu hakið af þeim íhlutum sem þú vilt ekki setja upp. $_CLICK"
LangString LSTR_119 1039 "Veldu tegund uppsetningar:"
LangString LSTR_120 1039 "Eða, veldu valfrjálsa íhluti á að setja upp:"
LangString LSTR_121 1039 "Veldu þá íhluti sem á að setja upp:"
LangString LSTR_122 1039 "Uppsetningin mun setja $(LSTR_132) upp í eftirfarandi skráarsafn. Til að setja forritið upp í annað skráarsafn, smelltu á 'Vafra...' og veldu annað skráarsafn. $_CLICK"
LangString LSTR_123 1039 Uppsetningarskráarsafn
LangString LSTR_124 1039 &Vafra...
LangString LSTR_125 1039 "Veldu það skráarsafn sem þú vilt setja $(LSTR_132) upp í:"
LangString LSTR_126 1039 "&Setja upp"
LangString LSTR_127 1039 "Smelltu á 'Setja upp' til þess að hefja uppsetninguna."
LangString LSTR_128 1039 "Sýna &upplýsingar"
LangString LSTR_129 1039 Lokið
LangString LSTR_130 1039 " "
LangString LSTR_131 1039 &Loka
LangString LSTR_132 1039 "VLC media player"


; LANG: 1050
LangString LSTR_0 1050 "VideoLAN VLC media player"
LangString LSTR_1 1050 "Instalacija programa $(LSTR_2)"
LangString LSTR_2 1050 "VLC media player"
LangString LSTR_3 1050 "Slobodno prostora na disku: "
LangString LSTR_4 1050 "Potrebno prostora na disku: "
LangString LSTR_5 1050 "Ne mogu zapisati: "
LangString LSTR_8 1050 "Ne mogu naći simbol: "
LangString LSTR_9 1050 "Ne mogu učitati: "
LangString LSTR_10 1050 "Stvori mapu: "
LangString LSTR_11 1050 "Stvori prečac: "
LangString LSTR_12 1050 "Program za uklanjanje: "
LangString LSTR_13 1050 "Izbriši datoteku: "
LangString LSTR_14 1050 "Izbriši prilikom ponovnog pokretanja: "
LangString LSTR_15 1050 "Greška prilikom stvaranja prečaca: "
LangString LSTR_16 1050 "Greška prilikom stvaranja: "
LangString LSTR_17 1050 "Greška dekompresije podataka! Oštećena instalacijska datoteka?"
LangString LSTR_19 1050 "ExecShell: "
LangString LSTR_20 1050 "Izvrši: "
LangString LSTR_21 1050 "Otpakiraj: "
LangString LSTR_22 1050 "Otpakiranje: greška zapisivanja u datoteku "
LangString LSTR_23 1050 "Oštećena instalacijska datoteka: neispravan opkod"
LangString LSTR_24 1050 "Nema OLE za: "
LangString LSTR_25 1050 "Izlazna mapa: "
LangString LSTR_26 1050 "Izbriši mapu: "
LangString LSTR_29 1050 "Preskočeno: "
LangString LSTR_30 1050 "Kopiraj detalje u međuspremnik"
LangString LSTR_32 1050 B
LangString LSTR_33 1050 " K"
LangString LSTR_34 1050 " M"
LangString LSTR_35 1050 " G"
LangString LSTR_36 1050 Preporučeno
LangString LSTR_37 1050 Minimalno
LangString LSTR_38 1050 Potpuno
LangString LSTR_39 1050 "Greška prilikom otvaranja datoteke za zapisivanje: $\r$\n$\r$\n$0$\r$\n$\r$\nPritisnite $\"Abort$\" ako želite prekinuti instalaciju,$\r$\n$\"Retry$\" ako želite pokušati ponovno, ili$\r$\n$\"Ignore$\" ako želite zanemariti tu datoteku"
LangString LSTR_40 1050 0
LangString LSTR_41 1050 "Dobrodošli u instalaciju programa $(LSTR_132)"
LangString LSTR_42 1050 "MS Shell Dlg"
LangString LSTR_43 1050 "Instalacija programa $(LSTR_132) na Vaše računalo sastoji se od nekoliko jednostavnih koraka kroz koje će Vas provesti ovaj čarobnjak.$\r$\n$\r$\nPreporučamo zatvaranje svih ostalih aplikacija prije samog početka instalacije. To će omogućiti nadogradnju nekih sistemskih datoteka bez potrebe za ponovnim pokretanjem Vašeg računala. U svakom trenutku instalaciju možete prekinuti pritiskom na 'Odustani'.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1050 "Sada ste svjesni Vaših prava. Kliknite Slijedeće za nastavak."
LangString LSTR_45 1050 "&Dalje >"
LangString LSTR_46 1050 "Ugovor o licenci"
LangString LSTR_47 1050 "Pročitajte licencu prije instalacije programa $(LSTR_132)."
LangString LSTR_48 1050 "Služite se tipkom 'Page Down' da biste vidjeli ostatak licence."
LangString LSTR_49 1050 "Izbor komponenti"
LangString LSTR_50 1050 "Odaberite komponente programa $(LSTR_132) koje želite instalirati."
LangString LSTR_51 1050 Opis
LangString LSTR_52 1050 "Postavite pokazivač iznad komponente za njezin opis."
LangString LSTR_53 1050 "Odaberite odredište za instalaciju"
LangString LSTR_54 1050 "Odaberite mapu u koju želite instalirati program $(LSTR_132)."
LangString LSTR_55 1050 "Instalacija u tijeku..."
LangString LSTR_56 1050 "Pričekajte završetak instalacije programa $(LSTR_132)."
LangString LSTR_57 1050 "Kraj instalacije"
LangString LSTR_58 1050 "Instalacija je u potpunosti završila uspješno."
LangString LSTR_59 1050 "Instalacija je prekinuta"
LangString LSTR_60 1050 "Instalacija nije završila uspješno."
LangString LSTR_61 1050 &Kraj
LangString LSTR_62 1050 "Dovršetak instalacije programa $(LSTR_132)"
LangString LSTR_63 1050 "Program $(LSTR_132) upravo je instaliran.$\r$\n$\r$\nOdaberite 'Kraj' za završetak."
LangString LSTR_64 1050 "&Pokreni program $(LSTR_132)"
LangString LSTR_65 1050 "Posjetite web stranicu VideoLAN VLC medijskog izvođača"
LangString LSTR_66 1050 8
LangString LSTR_67 1050 "Jeste li sigurni da želite prekinuti instalaciju programa $(LSTR_2)?"
LangString LSTR_68 1050 Reproduciraj
LangString LSTR_69 1050 "Čini se da je VLC pokrenut i sada će bit zatvoren."
LangString LSTR_70 1050 "Ovaj instalacijski program ne može zatvoriti VLC, zatvorite ga ručno."
LangString LSTR_71 1050 "Instalacija prekinuta!"
LangString LSTR_72 1050 "Medijski izvođač (potrebno)"
LangString LSTR_73 1050 "Provjeravanje obrade..."
LangString LSTR_74 1050 "Reproduciraj s VLC medijskim izvođačem"
LangString LSTR_75 1050 "Prečac Start izbornika"
LangString LSTR_76 1050 "Prečac radne površine"
LangString LSTR_77 1050 "Web priključak"
LangString LSTR_78 1050 "ActiveX priključak"
LangString LSTR_79 1050 "Reprodukcija diskova"
LangString LSTR_80 1050 "Reproduciraj DVD film"
LangString LSTR_81 1050 "Reproduciraj glazbeni CD"
LangString LSTR_82 1050 "Reproduciraj VCD film"
LangString LSTR_83 1050 "Reproduciraj SVCD film"
LangString LSTR_84 1050 "Reproduciraj glazbeni DVD"
LangString LSTR_85 1050 "Reproduciraj video datoteke"
LangString LSTR_86 1050 "Reproduciraj zvučne datoteke"
LangString LSTR_87 1050 "Play Blu-ray"
LangString LSTR_88 1050 "Pridruživanje vrsta datoteka"
LangString LSTR_89 1050 "Zvučne datoteke"
LangString LSTR_90 1050 "Video datoteke"
LangString LSTR_91 1050 Ostalo
LangString LSTR_92 1050 "Izbornici sadržaja"
LangString LSTR_93 1050 "Dodaj na popis izvođenja VLC medijskog izvođača"
LangString LSTR_94 1050 "Obriši osobitosti i predmemoriju"
LangString LSTR_95 1050 "Sam medijski izvođač"
LangString LSTR_96 1050 "Dodaje ikone u vaš Start izbornik za lakši pristup"
LangString LSTR_97 1050 "Dodaje ikone na vašu radnu površinu za lakši pristup"
LangString LSTR_98 1050 "VLC ActiveX priključak"
LangString LSTR_99 1050 "Registracija DVD i CD reprodukcije"
LangString LSTR_100 1050 "Postavlja VLC medijski izvođač kao zadanu aplikaciju za određenu vrstu datoteka"
LangString LSTR_101 1050 "Dodaj stavke izbornika sadržaja ('Izvedi s VLC' i 'Dodaj na VLC popis izvođenja')"
LangString LSTR_102 1050 "Briše osobitosti i datoteke predmemorije zaostale od prijašnje instalacije VLC medijskog izvođača"
LangString LSTR_103 1050 "Već je instalirano"
LangString LSTR_104 1050 "Odaberite kako želite instalirati VLC."
LangString LSTR_105 1050 "Starija inačica VLC-a je instalirana na vaš sustav. Odaberite radnju koju želite izvršiti i kliknite Slijedeće za nastavak."
LangString LSTR_106 1050 "Nadogradi VLC koristeći prijašnje postavke (preporučljivo)"
LangString LSTR_107 1050 "Promijeni postavke (napredno)"
LangString LSTR_108 1050 "Novija inačica VLC-a već je instalirana! Nije preporučljivo da instalirate stariju inačicu. Odaberite radnju koju želite izvršiti i kliknite Slijedeće za nastavak."
LangString LSTR_109 1050 "Vrati stariju inčicu VLC-a koristeći prijašnje postavke (preporučljivo)"
LangString LSTR_110 1050 "Odaberite mogućnost održavanja za izvođenje."
LangString LSTR_111 1050 "VLC 3.0.24 je već instaliran. Odaberite radnju koju želite izvršiti i kliknite Slijedeće za nastavak."
LangString LSTR_112 1050 "Dodaj/Ukloni/Ponovno instaliraj komponente"
LangString LSTR_113 1050 "Deinstaliraj VLC"
LangString LSTR_114 1050 Posebna
LangString LSTR_115 1050 Odustani
LangString LSTR_116 1050 "< &Natrag"
LangString LSTR_117 1050 "Za nastavak odaberite 'Dalje'."
LangString LSTR_118 1050 "Označite komponente koje želite instalirati i uklonite oznaku s onih koje ne želite instalirati. $_CLICK"
LangString LSTR_119 1050 "Izaberite tip instalacije:"
LangString LSTR_120 1050 "Ili po izboru označite komponente koje želite instalirati:"
LangString LSTR_121 1050 "Odaberite komponente za instalaciju:"
LangString LSTR_122 1050 "Program $(LSTR_132) bit će instaliran u sljedeću mapu. Ako želite promijeniti odredište, pritisnite dugme za traženje mape i označite drugu mapu. $_CLICK"
LangString LSTR_123 1050 "Odredišna mapa"
LangString LSTR_124 1050 &Pregledaj...
LangString LSTR_125 1050 "Odaberite mapu u koju želite instalirati program $(LSTR_132):"
LangString LSTR_126 1050 &Instaliraj
LangString LSTR_127 1050 "Za početak instalacije odaberite 'Instaliraj'."
LangString LSTR_128 1050 "Prikaži &detalje"
LangString LSTR_129 1050 Završeno
LangString LSTR_130 1050 " "
LangString LSTR_131 1050 &Zatvori
LangString LSTR_132 1050 "VLC media player"


; LANG: 1052
LangString LSTR_0 1052 "VideoLAN VLC media player"
LangString LSTR_1 1052 "Rregullimi i $(LSTR_2)"
LangString LSTR_2 1052 "VLC media player"
LangString LSTR_3 1052 "Hapësirë e mundshme: "
LangString LSTR_4 1052 "Hapësirë e nevojshme: "
LangString LSTR_5 1052 "S’shkruhet dot: "
LangString LSTR_8 1052 "S’u gjet dot simbol: "
LangString LSTR_9 1052 "S’u ngarkua dot: "
LangString LSTR_10 1052 "Krijo dosje: "
LangString LSTR_11 1052 "Krijo shkurtore: "
LangString LSTR_12 1052 "Krijo çinstalues: "
LangString LSTR_13 1052 "Fshi kartelë: "
LangString LSTR_14 1052 "Fshi gjatë rinisjes: "
LangString LSTR_15 1052 "Gabim në krijim shkurtoresh: "
LangString LSTR_16 1052 "Gabim në krijimin e: "
LangString LSTR_17 1052 "Gabim në çngjeshje të dhënash! Instalues i dëmtuar?"
LangString LSTR_19 1052 "ExecShell: "
LangString LSTR_20 1052 "Ekzekuto: "
LangString LSTR_21 1052 "Përfto: "
LangString LSTR_22 1052 "Përftim: gabim në shkrim te kartela "
LangString LSTR_23 1052 "Instalues i dëmtuar: opcode i pavlefshëm"
LangString LSTR_24 1052 "Pa OLE për: "
LangString LSTR_25 1052 "Dosje përfundimesh: "
LangString LSTR_26 1052 "Hiq dosjen: "
LangString LSTR_29 1052 "U anashkalua: "
LangString LSTR_30 1052 "Kopjo Hollësira Te E Papastra"
LangString LSTR_32 1052 B
LangString LSTR_33 1052 " K"
LangString LSTR_34 1052 " M"
LangString LSTR_35 1052 " G"
LangString LSTR_36 1052 Rekomanduar
LangString LSTR_37 1052 Minimum
LangString LSTR_38 1052 Plotë
LangString LSTR_39 1052 "Gabim në hapje kartele për shkrim: $\r$\n$\r$\n$0$\r$\n$\r$\nKlikoni Ndërprite për të ndalur instalimin,$\r$\nRiprovo për të provuar sërish, ose$\r$\nShpërfille për të anashkaluar këtë kartelë."
LangString LSTR_40 1052 0
LangString LSTR_41 1052 "Mirë se vini te Rregullimi i $(LSTR_132)"
LangString LSTR_42 1052 "MS Shell Dlg"
LangString LSTR_43 1052 "Ky do t’ju udhëheqë gjatë instalimit të $(LSTR_132).$\r$\n$\r$\nKëshillohet që të mbyllni tërë aplikacionet e tjera, para se të nisni Rregullimin. Kjo bën të mundur përditësimin e kartelave të rëndësishme të sistemit pa u dashur të riniset kompjuteri juaj.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1052 "Ju tani jeni të vetëdijshëm për të drejtat tuaja. Klikoni Tjetër për të vazhduar."
LangString LSTR_45 1052 "&Pasuesi >"
LangString LSTR_46 1052 "Marrëveshje Licence"
LangString LSTR_47 1052 "Ju lutemi, para se të instaloni $(LSTR_132), shqyrtoni kushtet e licencës."
LangString LSTR_48 1052 "Për të parë pjesën e mbetur të marrëveshjes, shtypni tastin Page Down."
LangString LSTR_49 1052 "Përzgjidhni Përbërës"
LangString LSTR_50 1052 "Zgjidhni cilat anë të $(LSTR_132) doni të instalohen."
LangString LSTR_51 1052 Përshkrim
LangString LSTR_52 1052 "Për të parë përshkrimin e një përbërësi, vendosni kursorin përsipër tij."
LangString LSTR_53 1052 "Zgjidhni Vend Instalimi"
LangString LSTR_54 1052 "Zgjidhni dosjen tek e cila të instalohet $(LSTR_132)."
LangString LSTR_55 1052 "Po instalohet"
LangString LSTR_56 1052 "Ju lutemi, prisni, ndërkohë që $(LSTR_132) instalohet."
LangString LSTR_57 1052 "Instalim i Plotësuar"
LangString LSTR_58 1052 "Rregullimi u plotësua me sukses."
LangString LSTR_59 1052 "Instalimi u Ndërpre"
LangString LSTR_60 1052 "Rregullimi s’u plotësua me sukses."
LangString LSTR_61 1052 &Përfundoje
LangString LSTR_62 1052 "Po plotësohet Rregullimi i $(LSTR_132)"
LangString LSTR_63 1052 "$(LSTR_132) u instalua në kompjuterin tuaj.$\r$\n$\r$\nPër mbylljen e procesit, klikoni Përfundoje."
LangString LSTR_64 1052 "&Nis $(LSTR_132)"
LangString LSTR_65 1052 "Vizitoni faqen e aparatit VideoLAN VLC media "
LangString LSTR_66 1052 8
LangString LSTR_67 1052 "Jeni i sigurt se doni të dilet nga Rregullimi i $(LSTR_2)?"
LangString LSTR_68 1052 Luaj
LangString LSTR_69 1052 "VLC duket se po punon dhe tani do të mbyllet."
LangString LSTR_70 1052 "Ky instalues nuk ishte në gjendje për të mbyllur VLC, ju lutemi ta mbyllni në mënyrë manuale."
LangString LSTR_71 1052 "Instalimi i ndërprerë!"
LangString LSTR_72 1052 "Aparati Media (e nevojshme)"
LangString LSTR_73 1052 "Duke kontrolluar proceset..."
LangString LSTR_74 1052 "Luaj me aparatin VLC media "
LangString LSTR_75 1052 "Fillo Meny Shkurtues "
LangString LSTR_76 1052 "Desktop Shkurtues"
LangString LSTR_77 1052 "Plugin-et Web"
LangString LSTR_78 1052 "Plugin ActiveX"
LangString LSTR_79 1052 "Ridëgjim Disku"
LangString LSTR_80 1052 "Luaj film DVD"
LangString LSTR_81 1052 "Luaj audio CD"
LangString LSTR_82 1052 "Luaj film VCD"
LangString LSTR_83 1052 "Luaj film SVCD"
LangString LSTR_84 1052 "Luaj audio DVD"
LangString LSTR_85 1052 "Luaj dokument video"
LangString LSTR_86 1052 "Luaj dokument audio"
LangString LSTR_87 1052 "Luaj Blu-ray"
LangString LSTR_88 1052 "Asociacion tip dokumenti"
LangString LSTR_89 1052 "Dokumente Audio"
LangString LSTR_90 1052 "Dokumente Video"
LangString LSTR_91 1052 "Të Tjera"
LangString LSTR_92 1052 "Meny konteksti"
LangString LSTR_93 1052 "Shto tek lista e apartit VLC media"
LangString LSTR_94 1052 "Fshi preferencat dhe depo"
LangString LSTR_95 1052 "Aparati Media vetë"
LangString LSTR_96 1052 "Shton ikona në menynë tuaj fillojnë për qasje të lehtë"
LangString LSTR_97 1052 "Shton ikona në dekstop tuaj për hyrje të lehtë"
LangString LSTR_98 1052 "Plugin-i VLC ActiveX"
LangString LSTR_99 1052 "DVD dhe CD luaj-mbrapa regjistrimin"
LangString LSTR_100 1052 "Vendos VLC media player si programin  default application per kete tip file"
LangString LSTR_101 1052 "Shto meny kontekst mjete ('Luaj Me VLC' dhe 'Shto Tek Lista VLC's')"
LangString LSTR_102 1052 "Fshij preferencat dhe file-et e cache te VLC media player-it te mbetura nga instalimet e meparshme"
LangString LSTR_103 1052 "Instaluar Tashmë"
LangString LSTR_104 1052 "Zgjidhni se si ju dëshironi të instaloni VLC."
LangString LSTR_105 1052 "Një version më i vjetër i VLC është i instaluar në sistemin tuaj. Zgjidhni operacionin që ju dëshironi për të kryer dhe të klikoni Tjetri për të vazhduar."
LangString LSTR_106 1052 "Përmirëso VLC duke përdorur cilësimet e mëparshme (e rekomanduar)"
LangString LSTR_107 1052 "Ndrysho cilësimet (avancuar) "
LangString LSTR_108 1052 "Një version i ri i VLC tashmë është instaluar! Nuk është e rekomanduar që ju të degradoni në një version më të vjetër. Zgjidhni operacionin që ju dëshironi për të kryer dhe të klikoni Tjetri për të vazhduar."
LangString LSTR_109 1052 "Degrado VLC duke përdorur cilësimet e mëparshme (e rekomanduar)"
LangString LSTR_110 1052 "Zgjidhni opsionin e mirëmbajtjes për të kryer."
LangString LSTR_111 1052 "VLC 3.0.24 është instaluar tashmë. Zgjidhni operacionin që ju dëshironi për të kryer dhe të klikoni Tjetri për të vazhduar."
LangString LSTR_112 1052 "Shto/Hiq/Riinstalo komponentët "
LangString LSTR_113 1052 "Ç'instalo VLC"
LangString LSTR_114 1052 Vetjake
LangString LSTR_115 1052 Anuloje
LangString LSTR_116 1052 "< &Mbrapsht"
LangString LSTR_117 1052 "Që të vazhdohet, klikoni Pasuesi."
LangString LSTR_118 1052 "U vini shenjë përbërësve që doni të instalohen dhe hiquani shenjën  përbërësve që s’doni të instalohen. $_CLICK"
LangString LSTR_119 1052 "Përzgjidhni llojin e instalimit:"
LangString LSTR_120 1052 "Ose, përzgjidhni përbërësit e mundshëm që doni të instalohen:"
LangString LSTR_121 1052 "Përzgjidhni përbërësit për instalim:"
LangString LSTR_122 1052 "Rregullimi do ta instalojë $(LSTR_132) në dosjen vijuese. Për instalim në një dosje tjetër, klikoni Shfletoni dhe përzgjidhni një tjetër dosje. $_CLICK"
LangString LSTR_123 1052 "Dosje Vendmbërritje"
LangString LSTR_124 1052 Sh&fletoni…
LangString LSTR_125 1052 "Përzgjidhni dosjen ku të instalohet $(LSTR_132):"
LangString LSTR_126 1052 &Instaloje
LangString LSTR_127 1052 "Që të fillojë instalimi, klikoni Instaloje."
LangString LSTR_128 1052 "Shfaq &hollësi"
LangString LSTR_129 1052 "U plotësua"
LangString LSTR_130 1052 " "
LangString LSTR_131 1052 &Mbylle
LangString LSTR_132 1052 "VLC media player"


; LANG: 1078
LangString LSTR_0 1078 "VideoLAN VLC media player"
LangString LSTR_1 1078 "$(LSTR_2) Installasie"
LangString LSTR_2 1078 "VLC media player"
LangString LSTR_3 1078 "Beskikbare spasie: "
LangString LSTR_4 1078 "Vereiste spasie: "
LangString LSTR_5 1078 "Kon nie skyf nie: "
LangString LSTR_8 1078 "Kon nie simbool vind nie: "
LangString LSTR_9 1078 "Kon nie laai nie: "
LangString LSTR_10 1078 "Skep gids: "
LangString LSTR_11 1078 "Maak kortpad: "
LangString LSTR_12 1078 "Verwyderingsprogram gemaak: "
LangString LSTR_13 1078 "Verwyder lêer: "
LangString LSTR_14 1078 "Verwyder na herbegin van rekenaar: "
LangString LSTR_15 1078 "Fout met maak van kortpad: "
LangString LSTR_16 1078 "Fout met skep: "
LangString LSTR_17 1078 "Fout met uitpak van data! Korrupte installasielêer?"
LangString LSTR_19 1078 "ExecShell: "
LangString LSTR_20 1078 "Voer uit: "
LangString LSTR_21 1078 "Pak uit: "
LangString LSTR_22 1078 "Uitpak: fout met skryf na lêer "
LangString LSTR_23 1078 "Installasieprogram korrup: ongeldige opcode"
LangString LSTR_24 1078 "Geen OLE vir: "
LangString LSTR_25 1078 "Afvoergids: "
LangString LSTR_26 1078 "Verwyder gids: "
LangString LSTR_29 1078 "Oorgeslaan: "
LangString LSTR_30 1078 "Kopieer detail na knipbord"
LangString LSTR_32 1078 G
LangString LSTR_33 1078 " K"
LangString LSTR_34 1078 " M"
LangString LSTR_35 1078 " G"
LangString LSTR_36 1078 Aanbeveel
LangString LSTR_37 1078 Minimum
LangString LSTR_38 1078 Vol
LangString LSTR_39 1078 "Fout met skryf na lêer: $\r$\n$\r$\n$0$\r$\n$\r$\nKlik Staak om de installasie te stop,$\r$\nProbeer weer om weer te probeer of$\r$\nIgnoreer om dié lêer oor te slaan."
LangString LSTR_40 1078 0
LangString LSTR_41 1078 "Welkom by die $(LSTR_132) Installasieslimmerd"
LangString LSTR_42 1078 "MS Shell Dlg"
LangString LSTR_43 1078 "Hierdie slimmerd lei mens deur die installasie van $(LSTR_132).$\r$\n$\r$\nDit word aanbeveel dat u alle ander programme afsluit voor die begin van die installasie. Dit maak dit moontlik om die relevante stelsellêers op te dateer sonder om die rekenaar te herlaai.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1078 "U is nou bewus van u regte. Klik Volgende om aan te gaan."
LangString LSTR_45 1078 "&Volgende >"
LangString LSTR_46 1078 Lisensie-ooreenkoms
LangString LSTR_47 1078 "Lees die lisensie-ooreenkoms voordat u $(LSTR_132) installeer."
LangString LSTR_48 1078 "Druk op Page Down om die res van die ooreenkoms te sien."
LangString LSTR_49 1078 "Kies komponente"
LangString LSTR_50 1078 "Kies watter komponente van $(LSTR_132) geïnstalleer moet word."
LangString LSTR_51 1078 Beskrywing
LangString LSTR_52 1078 "Beweeg die muis oor 'n komponent om sy beskrywing te sien."
LangString LSTR_53 1078 "Kies installasieplek"
LangString LSTR_54 1078 "Kies die gids waarin u $(LSTR_132) wil installeer."
LangString LSTR_55 1078 "Installeer tans"
LangString LSTR_56 1078 "Wag asb. terwyl $(LSTR_132) geïnstalleer word."
LangString LSTR_57 1078 "Installasie voltooid"
LangString LSTR_58 1078 "Die installasie is suksesvol voltooi."
LangString LSTR_59 1078 "Installasie gestaak"
LangString LSTR_60 1078 "Die installasie is nie suksesvol voltooi nie."
LangString LSTR_61 1078 &Voltooi
LangString LSTR_62 1078 "Voltooi van die $(LSTR_132) Installasieslimmerd"
LangString LSTR_63 1078 "$(LSTR_132) is geïnstalleer op uw rekenaar.$\r$\n$\r$\nKlik op Voltooi om hierdie slimmerd af te sluit."
LangString LSTR_64 1078 "&Laat loop $(LSTR_132)"
LangString LSTR_65 1078 "Besoek die VideoLAN VLC-mediaspelerwebblad"
LangString LSTR_66 1078 8
LangString LSTR_67 1078 "Wil u definitief die installasie van $(LSTR_2) afsluit?"
LangString LSTR_68 1078 Speel
LangString LSTR_69 1078 "Dit wol voorkom of VLC loop en dit sal nou afgesluit word."
LangString LSTR_70 1078 "Die installeerder kon VLC nie afsluit nie, doen dit asb. handmatig."
LangString LSTR_71 1078 "Installasie is laat vaar"
LangString LSTR_72 1078 "Mediaspeler (vereis)"
LangString LSTR_73 1078 "Gaan prosesse na…"
LangString LSTR_74 1078 "Speel af met VLC-mediaspeler"
LangString LSTR_75 1078 Begin-kieslyskortpad
LangString LSTR_76 1078 Werkskermkortpad
LangString LSTR_77 1078 Webinproppe
LangString LSTR_78 1078 ActiveX-inprop
LangString LSTR_79 1078 "Afspeel van Skywe"
LangString LSTR_80 1078 "Speel DVD-rolprent"
LangString LSTR_81 1078 "Speel oudio CD"
LangString LSTR_82 1078 "Speel VCD-rolprent"
LangString LSTR_83 1078 "Speel SVCD-rolprent"
LangString LSTR_84 1078 "Speel oudio DVD"
LangString LSTR_85 1078 "Speel videolêers"
LangString LSTR_86 1078 "Speel oudiolêers"
LangString LSTR_87 1078 "Play Blu-ray"
LangString LSTR_88 1078 Lêertipekoppelings
LangString LSTR_89 1078 Oudiolêers
LangString LSTR_90 1078 Videolêers
LangString LSTR_91 1078 Ander
LangString LSTR_92 1078 Kontekskieslyste
LangString LSTR_93 1078 "Voeg toe tot VLC-mediaspeler se afspeellys"
LangString LSTR_94 1078 "Skrap voorkeure en kas"
LangString LSTR_95 1078 "Die mediaspeler self"
LangString LSTR_96 1078 "Voeg items tot u begin-kieslys toe vir maklike toegang"
LangString LSTR_97 1078 "Plaas ikoon op u werkskerm vir maklike toegang"
LangString LSTR_98 1078 "Die VLC ActiveX-inprop"
LangString LSTR_99 1078 "DVD en CD afspeelregistrasie"
LangString LSTR_100 1078 "Stel VLC-mediaspeler in as die verstektoepassing vir die gespesifiseerde lêertipe"
LangString LSTR_101 1078 "Voeg kontekskieslysitems toe (‘Speel af met VLC’ en ‘Voeg toe tot VLC se afspeellys’)"
LangString LSTR_102 1078 "Skrap VLC-mediaspelervoorkeure en kaslêers wat van vorige installasies oorgebly het"
LangString LSTR_103 1078 "Reeds geïnstalleer"
LangString LSTR_104 1078 "Kies hoe u VLC wil installeer."
LangString LSTR_105 1078 "’n Ouer weergawe van VLC is op u stelsel geïnstalleer. Kies die operasie wat u wil uitvoer en klik Volgende om aan te gaan."
LangString LSTR_106 1078 "Gradeer VLC op deur vorige instellings te gebruik (aanbeveel)"
LangString LSTR_107 1078 "Verander instellings (gevorderd)"
LangString LSTR_108 1078 "’n Nuwer weergawe van VLC is reeds geïnstalleer. Dit word nie aanbeveel om af te gradeer na ’n ouer weergawe nie. Kies die operasie wat u wil uitvoer en klik Volgende om aan te gaan."
LangString LSTR_109 1078 "Gradeer VLC af deur vorige instellings te gebruik (aanbeveel)"
LangString LSTR_110 1078 "Kies die onderhoudopsie om uit te voer."
LangString LSTR_111 1078 "VLC 3.0.24 is reeds geïnstalleer. Kies die operasie wat u wil uitvoer en klik Volgende om aan te gaan."
LangString LSTR_112 1078 "Voeg komponente toe/Verwyder dit/Installeer dit"
LangString LSTR_113 1078 "Deïnstalleer VLC"
LangString LSTR_114 1078 Aangepast
LangString LSTR_115 1078 Kanselleer
LangString LSTR_116 1078 "< V&orige"
LangString LSTR_117 1078 "Klik op Volgende om verder te gaan."
LangString LSTR_118 1078 "Kies die komponente wat u wil installeer en deselekteer dié wat u nie wil installeer nie. $_CLICK"
LangString LSTR_119 1078 "Kies die installasietipe:"
LangString LSTR_120 1078 "Of kies die komponente wat geïnstalleer moet word:"
LangString LSTR_121 1078 "Kies die komponente wat geïnstalleer moet word:"
LangString LSTR_122 1078 "$(LSTR_132) sal in die volgende gids geïnstalleer word. Om elders te installeer, klik op Blaai en kies 'n ander een. $_CLICK"
LangString LSTR_123 1078 Installasiegids
LangString LSTR_124 1078 &Blaai...
LangString LSTR_125 1078 "Kies die gids om $(LSTR_132) in te installeer:"
LangString LSTR_126 1078 &Installeer
LangString LSTR_127 1078 "Klik op Installeer om die installasie te begin."
LangString LSTR_128 1078 "&Wys detail"
LangString LSTR_129 1078 Voltooid
LangString LSTR_130 1078 " "
LangString LSTR_131 1078 "&Sluit af"
LangString LSTR_132 1078 "VLC media player"


; LANG: 1060
LangString LSTR_0 1060 "VideoLAN VLC media player"
LangString LSTR_1 1060 "Namestitev $(LSTR_2)"
LangString LSTR_2 1060 "VLC media player"
LangString LSTR_3 1060 "Prostor na disku: "
LangString LSTR_4 1060 "Potreben prostor: "
LangString LSTR_5 1060 "Ni mogoče pisati: "
LangString LSTR_8 1060 "Ni mogoče najti simbola: "
LangString LSTR_9 1060 "Ni mogoče naložiti: "
LangString LSTR_10 1060 "Ustvarjanje mape: "
LangString LSTR_11 1060 "Ustvarjanje bližnjice: "
LangString LSTR_12 1060 "Ustvarjena odstranitev: "
LangString LSTR_13 1060 "Brisanje datoteke: "
LangString LSTR_14 1060 "Brisanje ob ponovnem zagonu: "
LangString LSTR_15 1060 "Napaka ustvarjanja bližnjice: "
LangString LSTR_16 1060 "Napaka ustvarjanja: "
LangString LSTR_17 1060 "Napaka pri razširjanju podatkov! Je namestitvena datoteka okvarjena?"
LangString LSTR_19 1060 "Izvajanje v lupini: "
LangString LSTR_20 1060 "Izvajanje: "
LangString LSTR_21 1060 "Razširjanje: "
LangString LSTR_22 1060 "Razširjanje: napaka pri pisanju v datoteko "
LangString LSTR_23 1060 "Namestitev neveljavna: napačen ukaz"
LangString LSTR_24 1060 "Neobstoječi OLE za: "
LangString LSTR_25 1060 "Ciljna mapa: "
LangString LSTR_26 1060 "Odstranjevanje mape: "
LangString LSTR_29 1060 "Izpuščeno: "
LangString LSTR_30 1060 "Kopiraj podrobnosti v odložišče"
LangString LSTR_32 1060 B
LangString LSTR_33 1060 " K"
LangString LSTR_34 1060 " M"
LangString LSTR_35 1060 " G"
LangString LSTR_36 1060 Priporočena
LangString LSTR_37 1060 Osnovna
LangString LSTR_38 1060 Polna
LangString LSTR_39 1060 "Napaka pri odpiranju datoteke za pisanje: $\r$\n$\r$\n$0$\r$\n$\r$\nPritisnite Prekini za prekinitev namestitve,$\r$\nPonovi za ponoven poskus ali$\r$\nPrezri za izpust te datoteke."
LangString LSTR_40 1060 0
LangString LSTR_41 1060 "Dobrodošli v čarovniku namestitve $(LSTR_132)"
LangString LSTR_42 1060 "MS Shell Dlg"
LangString LSTR_43 1060 "Ta čarovnik vas vodi skozi namestitev programa $(LSTR_132).$\r$\n$\r$\nPred namestitvijo je priporočeno zapreti vsa ostala okna in programe. S tem omogočite nemoteno namestitev programa in potrebnih sistemskih datotek brez ponovnega zagona računalnika.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1060 "Sedaj ste seznanjeni z dovoljenji in vašimi pravicami in lahko nadaljujete."
LangString LSTR_45 1060 "N&aprej >"
LangString LSTR_46 1060 "Licenčna pogodba"
LangString LSTR_47 1060 "Prosimo, da si ogledate pogoje licenčne pogodbe pred namestitvijo $(LSTR_132)."
LangString LSTR_48 1060 "Za preostali del pogodbe pritisnite tipko 'Page Down'."
LangString LSTR_49 1060 "Izbor komponent"
LangString LSTR_50 1060 "Izberite, katere komponente izdelka $(LSTR_132) želite namestiti."
LangString LSTR_51 1060 Opis
LangString LSTR_52 1060 "Povlecite miško nad komponento, da vidite njen opis."
LangString LSTR_53 1060 "Izberite pot namestive"
LangString LSTR_54 1060 "Izberite mapo, v katero želite namestiti $(LSTR_132)."
LangString LSTR_55 1060 "Nameščanje poteka"
LangString LSTR_56 1060 "Prosimo, počakajte, $(LSTR_132) se namešča."
LangString LSTR_57 1060 "Dokončana namestitev"
LangString LSTR_58 1060 "Namestitev je uspešno zaključena."
LangString LSTR_59 1060 "Prekinjena namestitev"
LangString LSTR_60 1060 "Namestitev ni bila uspešno zaključena."
LangString LSTR_61 1060 Do&končaj
LangString LSTR_62 1060 "Zaključevanje namestitve $(LSTR_132)"
LangString LSTR_63 1060 "Program $(LSTR_132) je bil nameščen na vaš računalnik.$\r$\n$\r$\nPritisnite Dokončaj za zaprtje čarovnika."
LangString LSTR_64 1060 "&Zaženi $(LSTR_132)"
LangString LSTR_65 1060 "Obišči spletišče predvajalnika VideoLAN VLC"
LangString LSTR_66 1060 8
LangString LSTR_67 1060 "Ste prepričani, da želite prekiniti namestitev $(LSTR_2)?"
LangString LSTR_68 1060 Predvajaj
LangString LSTR_69 1060 "VLC je zagnan in bo zdaj zaprt."
LangString LSTR_70 1060 "Namestitvenega programa VLC ni mogoče samodejno zapreti. To je treba storiti ročno."
LangString LSTR_71 1060 "Namestitev je prekinjena!"
LangString LSTR_72 1060 "Predvajalnik predstavnih vsebin (obvezno)"
LangString LSTR_73 1060 "Preverjanje opravil ..."
LangString LSTR_74 1060 "Predvajaj s predvajalnikom VLC"
LangString LSTR_75 1060 "Bližnjica v meniju Start"
LangString LSTR_76 1060 "Bližnjica na namizju"
LangString LSTR_77 1060 "Spletni vstavki"
LangString LSTR_78 1060 "Vstavek ActiveX"
LangString LSTR_79 1060 "Predvajanje nosilcev CD in DVD"
LangString LSTR_80 1060 "Predvajaj filmski DVD"
LangString LSTR_81 1060 "Predvajaj zvočni CD"
LangString LSTR_82 1060 "Predvajaj film VCD"
LangString LSTR_83 1060 "Predvajaj film SVCD"
LangString LSTR_84 1060 "Predvajaj zvočni DVD"
LangString LSTR_85 1060 "Predvajaj video datoteke"
LangString LSTR_86 1060 "Predvajaj zvokovne datoteke"
LangString LSTR_87 1060 "Predvajaj Blu-ray"
LangString LSTR_88 1060 "Povezave z vrstami datotek"
LangString LSTR_89 1060 "Zvokovne datoteke"
LangString LSTR_90 1060 "Video datoteke"
LangString LSTR_91 1060 Drugo
LangString LSTR_92 1060 "Vsebinski meniji"
LangString LSTR_93 1060 "Dodaj na VLC seznam predvajanja"
LangString LSTR_94 1060 "Izbriši nastavitve in predpomnilnik"
LangString LSTR_95 1060 "Sam predvajalnik vsebin"
LangString LSTR_96 1060 "Za lažji dostop v začetni meni postavi ikone"
LangString LSTR_97 1060 "Za lažji dostop na vaše namizje postavi ikono"
LangString LSTR_98 1060 "Vstavek ActiveX VLC"
LangString LSTR_99 1060 "Registracija predvajanja DVD in CD"
LangString LSTR_100 1060 "Predvajalnik VLC naj bo privzeti program za navedeno vrsto datotek"
LangString LSTR_101 1060 "Dodaj ukaze v vsebinski meni (»Predvajaj z VLC« in »Dodaj v predvajalni seznam VLC«)"
LangString LSTR_102 1060 "Izbriše nastavitve predvajalnika VLC in datoteke predpomnilnika, ki so tam ostale od prejšnjih namestitev"
LangString LSTR_103 1060 "Že nameščeno"
LangString LSTR_104 1060 "Izberite vrsto namestitve VLC."
LangString LSTR_105 1060 "Na vaš sistem je nameščena starejša različica VLC. Izberite opravilo, ki ga želite izvršiti, in kliknite Naprej za nadaljevanje."
LangString LSTR_106 1060 "Nadgradi VLC z obstoječimi nastavitvami (priporočeno)"
LangString LSTR_107 1060 "Spremeni nastavitve (napredno)"
LangString LSTR_108 1060 "Nameščena je že novejša različica VLC! Povrnitev na prejšnjo različico ni priporočena. Izberite želeno opravilo in kliknite Naprej za nadaljevanje."
LangString LSTR_109 1060 "Povrni starejšo različico VLC z obstoječimi nastavitvami (priporočeno)"
LangString LSTR_110 1060 "Izberite funkcijo vzdrževanja, ki nej se izvede."
LangString LSTR_111 1060 "Različica VLC 3.0.24 je že nameščena. Izberite opravilo, ki ga želite izvršiti, in kliknite Naprej za nadaljevanje."
LangString LSTR_112 1060 "Dodaj/odstrani/ponovno namesti dele predvajalnika VLC"
LangString LSTR_113 1060 "Odstrani namestitev VLC"
LangString LSTR_114 1060 "Po meri ..."
LangString LSTR_115 1060 Prekliči
LangString LSTR_116 1060 "< &Nazaj"
LangString LSTR_117 1060 "Kliknite Naprej za nadaljevanje."
LangString LSTR_118 1060 "Označite komponente, ki jih želite namestiti, in pustite neoznačene tiste, katerih ne želite namestiti. $_CLICK"
LangString LSTR_119 1060 "Izberite vrsto namestitve:"
LangString LSTR_120 1060 "Ali pa izberite komponente, ki jih želite namestiti:"
LangString LSTR_121 1060 "Izberite komponente namestitve:"
LangString LSTR_122 1060 "$(LSTR_132) boste namestili v sledečo mapo. Za izbiro druge mape kliknite tipko Prebrskaj in izberite drugo mapo. $_CLICK"
LangString LSTR_123 1060 "Ciljna mapa"
LangString LSTR_124 1060 "Prebrsk&aj ..."
LangString LSTR_125 1060 "Izberite mapo, kamor želite namestiti $(LSTR_132):"
LangString LSTR_126 1060 &Namesti
LangString LSTR_127 1060 "Kliknite Namesti za začetek namestitve."
LangString LSTR_128 1060 &Podrobnosti
LangString LSTR_129 1060 Dokončano
LangString LSTR_130 1060 " "
LangString LSTR_131 1060 &Zapri
LangString LSTR_132 1060 "VLC media player"


; LANG: 1037
LangString LSTR_0 1037 "VideoLAN VLC media player"
LangString LSTR_1 1037 "התקנת $(LSTR_2)"
LangString LSTR_2 1037 "VLC media player"
LangString LSTR_3 1037 "מקום פנוי: "
LangString LSTR_4 1037 "מקום דרוש: "
LangString LSTR_5 1037 "לא ניתן לכתוב: "
LangString LSTR_8 1037 "סמל לא נמצא: "
LangString LSTR_9 1037 "לא ניתן לטעון: "
LangString LSTR_10 1037 "צור תיקייה: "
LangString LSTR_11 1037 "צור קיצור דרך: "
LangString LSTR_12 1037 "מסיר התקנה נוצר: "
LangString LSTR_13 1037 "מחק קובץ: "
LangString LSTR_14 1037 "מחק אחרי אתחול: "
LangString LSTR_15 1037 "שגיאה בעת יצירת קיצור דרך: "
LangString LSTR_16 1037 "שגיאה בעת יצירת: "
LangString LSTR_17 1037 "שגיאה בעת פרישת מידע! התקנה פגומה?"
LangString LSTR_19 1037 "בצע פעולת-קובץ: "
LangString LSTR_20 1037 "בצע: "
LangString LSTR_21 1037 "פרוש: "
LangString LSTR_22 1037 "פרוש: שגיאה בעת כתיבה לקובץ "
LangString LSTR_23 1037 "התקנה פגומה! פקודת ביצוע שגויה"
LangString LSTR_24 1037 "אין OLE ל: "
LangString LSTR_25 1037 "תיקיית פלט: "
LangString LSTR_26 1037 "הסר תיקייה: "
LangString LSTR_29 1037 "דלג: "
LangString LSTR_30 1037 "העתק פרטים ללוח"
LangString LSTR_32 1037 $\"ב
LangString LSTR_33 1037 " ק"
LangString LSTR_34 1037 " מ"
LangString LSTR_35 1037 " ג"
LangString LSTR_36 1037 מומלצת
LangString LSTR_37 1037 מזערית
LangString LSTR_38 1037 מלאה
LangString LSTR_39 1037 "ארעה שגיאה בעת פתיחת קובץ לכתיבה:$\r$\n$\t$\"$0$\"$\r$\nלחץ על ביטול כדי לבטל את ההתקנה,$\r$\nנסה שנית כדי לנסות לפתוח את הקובץ שוב, או$\r$\nהתעלם כדי לדלג על הקובץ"
LangString LSTR_40 1037 1
LangString LSTR_41 1037 "ברוכים הבאים לאשף ההתקנה של $(LSTR_132)"
LangString LSTR_42 1037 "MS Shell Dlg"
LangString LSTR_43 1037 "אשף זה ינחה אתכם במהלך ההתקנה של $(LSTR_132).$\r$\n$\r$\nמומלץ לסגור כל תוכנית אחרת לפני התחלת ההתקנה. פעולה זו תאפשר לאשף לעדכן קבצי מערכת ללא איתחול המחשב.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1037 "זכויותיך ידועות לך החל מעכשיו. ניתן ללחוץ על הבא כדי להמשיך."
LangString LSTR_45 1037 "ה&בא >"
LangString LSTR_46 1037 "הסכם רישוי"
LangString LSTR_47 1037 "נא עיין בתנאי הסכם הרישוי לפני התקנת $(LSTR_132)."
LangString LSTR_48 1037 "כדי לצפות בשאר הסכם הרישוי לחץ על Page Down."
LangString LSTR_49 1037 "בחר רכיבים"
LangString LSTR_50 1037 "בחר אילו רכיבים של $(LSTR_132) ברצונך להתקין."
LangString LSTR_51 1037 תיאור
LangString LSTR_52 1037 "העבר את העכבר מעל רכיב כלשהו בכדי לצפות בתיאורו."
LangString LSTR_53 1037 "בחר מיקום להתקנה"
LangString LSTR_54 1037 "בחר את התיקייה בה אתה מעוניין להתקין את $(LSTR_132)."
LangString LSTR_55 1037 מתקין
LangString LSTR_56 1037 "אנא המתן בזמן ש-$(LSTR_132) מותקן."
LangString LSTR_57 1037 "ההתקנה הושלמה"
LangString LSTR_58 1037 "ההתקנה הושלמה במלואה."
LangString LSTR_59 1037 "ההתקנה בוטלה"
LangString LSTR_60 1037 "ההתקנה לא הושלמה המלואה."
LangString LSTR_61 1037 &סיים
LangString LSTR_62 1037 "משלים את אשף ההתקנה של $(LSTR_132)"
LangString LSTR_63 1037 "$(LSTR_132) הותקן בהצלחה.$\r$\n$\r$\nלחץ על סיום כדי לסגור את האשף."
LangString LSTR_64 1037 "&הרץ את $(LSTR_132)"
LangString LSTR_65 1037 "ביקור באתר של נגן המדיה VLC מבית VideoLAN"
LangString LSTR_66 1037 8
LangString LSTR_67 1037 "האם אתה בטוח שברצונך לצאת מהתקנת $(LSTR_2)?"
LangString LSTR_68 1037 נגינה
LangString LSTR_69 1037 "נראה כי VLC פעיל וכעת הוא ייסגר."
LangString LSTR_70 1037 "תכנית התקנה זו לא הצליחה לסגור את VLC, נא לעשות זאת ידנית."
LangString LSTR_71 1037 "ההתקנה בוטלה!"
LangString LSTR_72 1037 "נגן המדיה (הכרחי)"
LangString LSTR_73 1037 "התהליכים נבדקים…"
LangString LSTR_74 1037 "נגינה עם נגן המדיה VLC"
LangString LSTR_75 1037 "קיצורי דרך בתפריט ההתחלה"
LangString LSTR_76 1037 "קיצורי דרך על שולחן העבודה"
LangString LSTR_77 1037 "תוספי דפדפנים"
LangString LSTR_78 1037 "תוסף ActiveX"
LangString LSTR_79 1037 "השמעה של דיסקים"
LangString LSTR_80 1037 "ניגון סרט מ־DVD"
LangString LSTR_81 1037 "נגינת תקליטור שמע"
LangString LSTR_82 1037 "נגינת סרט מ־VCD"
LangString LSTR_83 1037 "נגינת סרט מ־SVCD"
LangString LSTR_84 1037 "נגינת DVD שמע"
LangString LSTR_85 1037 "נגינת קובצי וידאו"
LangString LSTR_86 1037 "נגינת קובצי שמע"
LangString LSTR_87 1037 "נגינת Blu-ray"
LangString LSTR_88 1037 "שיוך קבצים"
LangString LSTR_89 1037 "קובצי שמע"
LangString LSTR_90 1037 "קובצי וידאו"
LangString LSTR_91 1037 אחר
LangString LSTR_92 1037 "תפריטי הקשר"
LangString LSTR_93 1037 "הוספה לרשימת ההשמעה של נגן המדיה VLC"
LangString LSTR_94 1037 "מחיקת העדפות ומטמון"
LangString LSTR_95 1037 "נגן המדיה בכבודו ובעצמו"
LangString LSTR_96 1037 "הוספת סמלים לתפריט ההתחלה שלך לגישה נוחה"
LangString LSTR_97 1037 "הוספת סמל לשולחן העבודה שלך לגישה נוחה"
LangString LSTR_98 1037 "תוסף ה־ActiveX של VLC"
LangString LSTR_99 1037 "רישום בתור נגן לתקליטורי מסוג CD ו־DVD"
LangString LSTR_100 1037 "הגדרת נגן המדיה כיישום בררת המחדל לטיפול בסוג הקובץ האמור"
LangString LSTR_101 1037 "הוספת פריטים לתפריט ההקשר ('נגינה עם VLC' ו־'הוספה לרשימת ההשמעה של VLC')"
LangString LSTR_102 1037 "מחיקת ההעדפות וקובצי המטמון של נגן המדיה VLC שנשארו מהתקנות קודמות"
LangString LSTR_103 1037 "התכנית כבר מותקנת"
LangString LSTR_104 1037 "נא לבחור כיצד להתקין את VLC."
LangString LSTR_105 1037 "גרסה קודמת של VLC מותקנת במחשבך. נא לבחור את הפעולה הרצויה וללחוץ על הבא כדי להמשיך."
LangString LSTR_106 1037 "שדרוג VLC באמצעות הגדרות קודמות (מומלץ)"
LangString LSTR_107 1037 "שינוי ההגדרות (מתקדם)"
LangString LSTR_108 1037 "גרסה חדשה יותר של VLC כבר מותקנת! לא מומלץ לעבור לגרסה ישנה יותר. נא לבחור את הפעולה הרצויה וללחוץ על הבא כדי להמשיך."
LangString LSTR_109 1037 "מעבר לגרסה קודמת של VLC על ידי שימוש בהגדרות קודמות (מומלץ)"
LangString LSTR_110 1037 "נא לבחור את אפשרות התחזוקה לביצוע."
LangString LSTR_111 1037 "גרסה 3.0.24 של VLC כבר מותקנת. נא לבחור את הפעולה הרצויה וללחוץ על הבא להמשך."
LangString LSTR_112 1037 "הוספה/הסרה/התקנה מחדש של רכיבים"
LangString LSTR_113 1037 "הסרת VLC"
LangString LSTR_114 1037 "מותאם אישית"
LangString LSTR_115 1037 ביטול
LangString LSTR_116 1037 "< ה&קודם"
LangString LSTR_117 1037 "לחץ על הבא כדי להמשיך."
LangString LSTR_118 1037 "סמן את הרכיבים שברצונך להתקין ובטל את הסימון של רכיבים שאין ברצונך להתקין. $_CLICK"
LangString LSTR_119 1037 "בחר סוג התקנה:"
LangString LSTR_120 1037 "או, בחר רכיבי רשות להתקנה:"
LangString LSTR_121 1037 "בחר רכיבים להתקנה:"
LangString LSTR_122 1037 "תוכנית זו תתקין את $(LSTR_132) לתיקייה שלהלן. כדי להתקין לתיקייה אחרת, לחץ על 'עיין' ובחר תיקייה אחרת. $_CLICK"
LangString LSTR_123 1037 "תיקיית יעד"
LangString LSTR_124 1037 &עיין...
LangString LSTR_125 1037 "בחר תיקייה להתקנת $(LSTR_132):"
LangString LSTR_126 1037 &התקן
LangString LSTR_127 1037 "לחץ על התקן כדי להתחיל את ההתקנה."
LangString LSTR_128 1037 "ה&צג פרטים"
LangString LSTR_129 1037 "הפעולה הושלמה"
LangString LSTR_130 1037 " "
LangString LSTR_131 1037 סגור&
LangString LSTR_132 1037 "VLC media player"


; LANG: 1110
LangString LSTR_0 1110 "VideoLAN VLC media player"
LangString LSTR_1 1110 "Instalación de $(LSTR_2)"
LangString LSTR_2 1110 "VLC media player"
LangString LSTR_3 1110 "Espazo disponíbel: "
LangString LSTR_4 1110 "Espazo necesário: "
LangString LSTR_5 1110 "Non foi posíbel escreber: "
LangString LSTR_8 1110 "Símbolo non achado: "
LangString LSTR_9 1110 "Non foi posíbel carregar: "
LangString LSTR_10 1110 "Criando diretória: "
LangString LSTR_11 1110 "Criando atallo: "
LangString LSTR_12 1110 "Criando desinstalador: "
LangString LSTR_13 1110 "Eliminando ficheiro: "
LangString LSTR_14 1110 "Eliminar ao reiniciar: "
LangString LSTR_15 1110 "Erro ao criar atallo: "
LangString LSTR_16 1110 "Erro ao criar: "
LangString LSTR_17 1110 "Erro ao descomprimir dados! Instalador corrompido?"
LangString LSTR_19 1110 "Executando polo Shell: "
LangString LSTR_20 1110 "Executando: "
LangString LSTR_21 1110 "Extraindo: "
LangString LSTR_22 1110 "Extraindo: erro ao escreber ficheiro "
LangString LSTR_23 1110 "Instalador corrompido: código de operación inválido"
LangString LSTR_24 1110 "Sen OLE para: "
LangString LSTR_25 1110 "Cartafol de destino: "
LangString LSTR_26 1110 "Removendo cartafol: "
LangString LSTR_29 1110 "Ignorado: "
LangString LSTR_30 1110 "Copiar detalles para a Área de transférencia"
LangString LSTR_32 1110 B
LangString LSTR_33 1110 " K"
LangString LSTR_34 1110 " M"
LangString LSTR_35 1110 " G"
LangString LSTR_36 1110 Recomendada
LangString LSTR_37 1110 Mínima
LangString LSTR_38 1110 Completa
LangString LSTR_39 1110 "Erro ao abrir ficheiro para escrita: $\r$\n$\t$\"$0$\"$\r$\nClique en Abortar para abortar a instalación,$\r$\nRepetir para tentar novamente a escrita do ficheiro, ou$\r$\nIgnorar para ignorar este ficheiro."
LangString LSTR_40 1110 0
LangString LSTR_41 1110 "Benvindo ao Asistente de Instalación do $(LSTR_132)"
LangString LSTR_42 1110 "MS Shell Dlg"
LangString LSTR_43 1110 "Este asistente vai axudá-lo durante a instalación do $(LSTR_132).$\r$\n$\r$\nRecomenda-se fechar todas as outras aplicacións antes de iniciar a instalación. Isto posibilita actualizar os ficheiros do sistema relevantes sen ter que reiniciar o computador.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1110 "Agora xa está informado dos seus dereitos. Prema en «Seguinte» para continuar."
LangString LSTR_45 1110 "&Seguinte >"
LangString LSTR_46 1110 "Contrato de licenza"
LangString LSTR_47 1110 "Por favor, verifique os termos da licenza antes de instalar o $(LSTR_132)."
LangString LSTR_48 1110 "Prema Page Down para ver o restante da licenza."
LangString LSTR_49 1110 "Escolla de componentes"
LangString LSTR_50 1110 "Escolla que características do $(LSTR_132) que desexa instalar."
LangString LSTR_51 1110 Descrición
LangString LSTR_52 1110 "Posicione o rato sobre un componente para ver a sua descrición."
LangString LSTR_53 1110 "Escolla do local da instalación"
LangString LSTR_54 1110 "Escolla a directória na cal desexa instalar o $(LSTR_132)."
LangString LSTR_55 1110 Instalando
LangString LSTR_56 1110 "Por favor, agarde entanto o $(LSTR_132) está sendo instalado."
LangString LSTR_57 1110 "Instalación completa"
LangString LSTR_58 1110 "A instalación concluiu con suceso."
LangString LSTR_59 1110 "Instalación Abortada"
LangString LSTR_60 1110 "A instalación concluiu sen suceso."
LangString LSTR_61 1110 &Rematar
LangString LSTR_62 1110 "Concluindo o Asistente de instalación do $(LSTR_132)"
LangString LSTR_63 1110 "Instalou-se o $(LSTR_132) no seu computador.$\r$\n$\r$\nClique en Rematar para fechar este asistente."
LangString LSTR_64 1110 "&Executar $(LSTR_132)"
LangString LSTR_65 1110 "Visitar a web do reprodutor multimedia VideoLAN VLC"
LangString LSTR_66 1110 8
LangString LSTR_67 1110 "Realmente desexa cancelar a instalación do $(LSTR_2)?"
LangString LSTR_68 1110 Reproducir
LangString LSTR_69 1110 "Semella que o VLC está a ser executado e será pechado agora."
LangString LSTR_70 1110 "Este instalador non foi quen de pechar o VLC. Fágao manualmente."
LangString LSTR_71 1110 "A instalación foi cancelada!"
LangString LSTR_72 1110 "Reprodutor multimedia (requirido)"
LangString LSTR_73 1110 "Verificando os procesos..."
LangString LSTR_74 1110 "Reproducir co VLC media player"
LangString LSTR_75 1110 "Atallo do menú de inicio"
LangString LSTR_76 1110 "Atallo de escritorio"
LangString LSTR_77 1110 "Plugins para a web"
LangString LSTR_78 1110 "Plugin para ActiveX"
LangString LSTR_79 1110 "Reprodución de discos"
LangString LSTR_80 1110 "Reproducir filmes en DVD"
LangString LSTR_81 1110 "Reproducir os CD de audio"
LangString LSTR_82 1110 "Reproducir filmes en VCD"
LangString LSTR_83 1110 "Reproducir filmes en SVCD"
LangString LSTR_84 1110 "Reproducir os DVD de audio"
LangString LSTR_85 1110 "Reproducir os ficheiros de vídeo"
LangString LSTR_86 1110 "Reproducir os ficheiros de audio"
LangString LSTR_87 1110 "Reproducir Blu-ray"
LangString LSTR_88 1110 "Asociacións de tipo de ficheiro"
LangString LSTR_89 1110 "Ficheiros de audio"
LangString LSTR_90 1110 "Ficheiros de vídeo"
LangString LSTR_91 1110 Outros
LangString LSTR_92 1110 "Menús contextuais"
LangString LSTR_93 1110 "Engadir á lista de reprodución do VLC media player"
LangString LSTR_94 1110 "Eliminar as preferencias e a caché"
LangString LSTR_95 1110 "O propio reprodutor multimedia"
LangString LSTR_96 1110 "Engade iconas no seu menú de inicio para un acceso máis fácil"
LangString LSTR_97 1110 "Engade unha icona no seu escritorio para un acceso máis fácil"
LangString LSTR_98 1110 "O plugin de VLC para ActiveX"
LangString LSTR_99 1110 "O rexistro de reprodución de CD e DVD"
LangString LSTR_100 1110 "Define o reprodutor multimedia VLC como o aplicativo predeterminado para o tipo de ficheiro especificado"
LangString LSTR_101 1110 "Engadir entradas de menú contextual («Reproducir co VLC» e «Engadir á lista de reprodución do VLC»)"
LangString LSTR_102 1110 "Elimina as preferencias e a caché do reprodutor multimedia VLC que pertenzan a versións previas"
LangString LSTR_103 1110 "Xa está instalado"
LangString LSTR_104 1110 "Escolla como quere instalar o VLC."
LangString LSTR_105 1110 "No seu sistema xa está instalada unha versión máis vella do VLC. Seleccione a operación que quere realizar e prema en «Seguinte» para continuar."
LangString LSTR_106 1110 "Actualizar o VLC usando a configuración anterior (recomendado)"
LangString LSTR_107 1110 "Cambiar a configuración (avanzado)"
LangString LSTR_108 1110 "Xa está instalada unha versión máis nova do VLC! Non se recomenda a desactualización a unha versión máis vella. Seleccione a operación que quere realizar e prema en «Seguinte» para continuar."
LangString LSTR_109 1110 "Desactualizar o VLC usando a configuración anterior (recomendado)"
LangString LSTR_110 1110 "Seleccione a opción de mantemento que quere realizar."
LangString LSTR_111 1110 "A versión 3.0.24 do VLC xa está instalada. Seleccione a operación que quere realizar e prema en «Seguinte» para continuar."
LangString LSTR_112 1110 "Engadir/Eliminar/Reinstalar componentes"
LangString LSTR_113 1110 "Desinstalar o VLC"
LangString LSTR_114 1110 Personalizado
LangString LSTR_115 1110 Cancelar
LangString LSTR_116 1110 "< &Anterior"
LangString LSTR_117 1110 "Clique en 'Seguinte' para continuar."
LangString LSTR_118 1110 "Marque os componentes que desexa instalar e desmarque os componentes que non desexa instalar. $_CLICK"
LangString LSTR_119 1110 "Escolla o tipo de instalación:"
LangString LSTR_120 1110 "Ou, escolla os componentes opcionais que desexa instalar:"
LangString LSTR_121 1110 "Escolla os componentes para instalar:"
LangString LSTR_122 1110 "O $(LSTR_132) será instalado na seguinte directória. Para instalar nunha directória diferente, clique en 'Procurar...' e escolla outra directória. $_CLICK"
LangString LSTR_123 1110 "Directória de destino"
LangString LSTR_124 1110 &Procurar...
LangString LSTR_125 1110 "Escolla unha directória para instalar o $(LSTR_132):"
LangString LSTR_126 1110 &Instalar
LangString LSTR_127 1110 "Clique en 'Instalar' para iniciar a instalación."
LangString LSTR_128 1110 "Ver &Detalles"
LangString LSTR_129 1110 Concluído
LangString LSTR_130 1110 " "
LangString LSTR_131 1110 &Fechar
LangString LSTR_132 1110 "VLC media player"


; LANG: 1069
LangString LSTR_0 1069 "VideoLAN VLC media player"
LangString LSTR_1 1069 "$(LSTR_2) -ren Instalazioa"
LangString LSTR_2 1069 "VLC media player"
LangString LSTR_3 1069 "Leku erabilgarria:"
LangString LSTR_4 1069 "Behar den lekua:"
LangString LSTR_5 1069 "Ezin izan da idatzi: "
LangString LSTR_8 1069 "Ikurra ezin izan da aurkitu: "
LangString LSTR_9 1069 "Ezin izan da kargatu: "
LangString LSTR_10 1069 "Sortu karpeta: "
LangString LSTR_11 1069 "Sortu lasterbidea: "
LangString LSTR_12 1069 "Sortu ezabatzailea: "
LangString LSTR_13 1069 "Ezabatu fitxategia: "
LangString LSTR_14 1069 "Ezabatu berrabiarazitakoan: "
LangString LSTR_15 1069 "Hutsegitea lasterbidea sortzerakoan: "
LangString LSTR_16 1069 "Hutsegitea sortzerakoan: "
LangString LSTR_17 1069 "¡Hutsegitea datuak deskomprimatzean! Instalatzailea okerra?"
LangString LSTR_19 1069 "Exekutatu agindua: "
LangString LSTR_20 1069 "Exekutatu: "
LangString LSTR_21 1069 "Kanporatu: "
LangString LSTR_22 1069 "Kanporaketa: hutsegitea fitxategira idazterakoan "
LangString LSTR_23 1069 "Instalatzailea okerra: ekintza kodea ez da baliozkoa"
LangString LSTR_24 1069 "OLE-rik ez honentzako: "
LangString LSTR_25 1069 "Irteera karpeta: "
LangString LSTR_26 1069 "Ezabatu karpeta: "
LangString LSTR_29 1069 "Alde batera utzitakoa: "
LangString LSTR_30 1069 "Kopiatu xehetasunak arbelera"
LangString LSTR_32 1069 B
LangString LSTR_33 1069 " K"
LangString LSTR_34 1069 " M"
LangString LSTR_35 1069 " G"
LangString LSTR_36 1069 Gomendatua
LangString LSTR_37 1069 Gutxienekoa
LangString LSTR_38 1069 Osoa
LangString LSTR_39 1069 "Hutsegitea idazteko fitxategia irekitzean: $\r$\n$\t$\"$0$\"$\r$\nSakatu Irten instalazioa ,$\r$\nsaiatu berriz fitxategi hau berriz idazten saiatzeko, u$\r$\njarraitu fitxategi hau alde batera utzita aurrera egiteko"
LangString LSTR_40 1069 0
LangString LSTR_41 1069 "Ongi etorri $(LSTR_132) -ren instalazio programara"
LangString LSTR_42 1069 "MS Shell Dlg"
LangString LSTR_43 1069 "Programa honek $(LSTR_132) zure ordenagailuan instalatuko du.$\r$\n$\r$\nAholkatzen da instalazioarekin hasi aurretik beste aplikazio guztiak ixtea. Honek sistemarekin erlazionatuta dauden fitxategien eguneratzea ahalbidetuko du, ordenagailua berrabiarazi beharrik izan gabe.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1069 "Zure eskubideen berri duzu orain. Jarraitzeko, egin klik 'Hurrengoa' botoian."
LangString LSTR_45 1069 "&Aurrera >"
LangString LSTR_46 1069 "Lizentzia hitzarmena"
LangString LSTR_47 1069 "Mesedez aztertu lizentziaren baldintzak $(LSTR_132) instalatu aurretik."
LangString LSTR_48 1069 "Sakatu Av Pág hitzarmenaren gainontzeko atalak ikusteko."
LangString LSTR_49 1069 "Osagaien hautatzea"
LangString LSTR_50 1069 "Hautatu $(LSTR_132)-ren zein ezaugarri instalatu nahi duzun."
LangString LSTR_51 1069 Azalpena
LangString LSTR_52 1069 "Jarri sagua osagai baten gainean dagokion azalpena ikusteko."
LangString LSTR_53 1069 "Hautatu instalazioaren lekua"
LangString LSTR_54 1069 "Aukeratu $(LSTR_132) instalatzeko karpeta."
LangString LSTR_55 1069 Instalatzen
LangString LSTR_56 1069 "Mesedez itxoin $(LSTR_132) instalatzen den bitartean."
LangString LSTR_57 1069 "Instalazioa burututa"
LangString LSTR_58 1069 "Instalazioa zuzen burutu da."
LangString LSTR_59 1069 "Instalazioa ezeztatua"
LangString LSTR_60 1069 "Instalazioa ez da zuzen burutu."
LangString LSTR_61 1069 &Amaitu
LangString LSTR_62 1069 "$(LSTR_132)-ren instalazio laguntzailea osatzen"
LangString LSTR_63 1069 "$(LSTR_132) zure sisteman instalatu da.$\r$\n$\r$\nSakatu Amaitu laguntzaile hau ixteko."
LangString LSTR_64 1069 "&Exekutatu $(LSTR_132)"
LangString LSTR_65 1069 "Bisitatu Videolan VLC multimedia-erreproduzigailuaren webgunea"
LangString LSTR_66 1069 8
LangString LSTR_67 1069 "Ziur zaude $(LSTR_2)-ren instalaziotik irten nahi duzula?"
LangString LSTR_68 1069 Erreproduzitu
LangString LSTR_69 1069 "VLC exekutatzen ari dela dirudi eta itxi egingo da orain."
LangString LSTR_70 1069 "Instalatzaileak ezin izan du VLC itxi, egizu eskuz."
LangString LSTR_71 1069 "Instalazioa abortatuta!"
LangString LSTR_72 1069 "Multimedia-erreproduzigailua (beharrezkoa)"
LangString LSTR_73 1069 "Prozesuak egiaztatzen..."
LangString LSTR_74 1069 "Erreproduzitu VLC multimedia-erreproduzigailuarekin"
LangString LSTR_75 1069 "'Hasi' menuko lasterbidea"
LangString LSTR_76 1069 "Mahaigaineko lasterbidea"
LangString LSTR_77 1069 "Weberako pluginak"
LangString LSTR_78 1069 "ActiveX plugina"
LangString LSTR_79 1069 "Diskoen erreprodukzioa"
LangString LSTR_80 1069 "Erreproduzitu DVD filma"
LangString LSTR_81 1069 "Erreproduzitu audio CDa"
LangString LSTR_82 1069 "Erreproduzitu VCD filma"
LangString LSTR_83 1069 "Erreproduzitu SVCD filma"
LangString LSTR_84 1069 "Erreproduzitu audio DVDa"
LangString LSTR_85 1069 "Erreproduzitu bideo-fitxategiak"
LangString LSTR_86 1069 "Erreproduzitu audio-fitxategiak"
LangString LSTR_87 1069 "Erreproduzitu Blu-ray-a"
LangString LSTR_88 1069 "Fitxategi moten asoziazioak"
LangString LSTR_89 1069 Audio-fitxategiak
LangString LSTR_90 1069 Bideo-fitxategiak
LangString LSTR_91 1069 Bestelakoak
LangString LSTR_92 1069 Testuinguru-menuak
LangString LSTR_93 1069 "Gehitu VLCren erreprodukzio-zerrendan"
LangString LSTR_94 1069 "Ezabatu hobespenak eta cachea"
LangString LSTR_95 1069 "Multimedia-erreproduzigailua bera"
LangString LSTR_96 1069 "Sarbidea errazteko ikonoak gehitzen ditu 'Hasi' menuan"
LangString LSTR_97 1069 "Sarbidea errazteko ikonoak gehitzen ditu mahaigainean"
LangString LSTR_98 1069 "ActiveX VLC plugina"
LangString LSTR_99 1069 "DVD eta CDen erreprodukzioaren erregistroa"
LangString LSTR_100 1069 "VLC multimedia-erreproduzigailua lehenetsitako aplikazio gisa ezartzen du zehaztutako fitxategi motarentzat"
LangString LSTR_101 1069 "Gehitu testuinguru-menuko elementuak ('Erreproduzitu VLCrekin' eta 'Gehitu VLCren erreprodukzio-zerrendan')"
LangString LSTR_102 1069 "Aurreko instalazioetatik dauden VLC multimedia-erreproduzigailuaren hobespenak eta cacheko fitxategiak ezabatzen ditu"
LangString LSTR_103 1069 "Dagoeneko instalatuta"
LangString LSTR_104 1069 "Aukeratu nola nahi duzun instalatu VLC."
LangString LSTR_105 1069 "VLCren bertsio zaharragoa instalatuta dago sisteman. Hautatu burutu nahi duzun eragiketa eta jarraitzeko egin klik Hurrengoa botoian."
LangString LSTR_106 1069 "Bertsio-berritu VLC aurreko ezarpenak erabiliz (gomendatua)"
LangString LSTR_107 1069 "Aldatu ezarpenak (aurreratua)"
LangString LSTR_108 1069 "VLCren bertsio berriagoa instalatuta dago lehendik! Ez da gomendagarria bertsio-zahartzea. Hautatu burutu nahi duzun eragiketa eta jarraitzeko egin klik Hurrengoa botoian."
LangString LSTR_109 1069 "Bertsio-zahartu VLC aurreko ezarpenak erabiliz (gomendatua)"
LangString LSTR_110 1069 "Aukeratu burutu beharreko mantenu-aukera."
LangString LSTR_111 1069 "VLC 3.0.24 instalatuta dago lehendik. Hautatu burutu nahi duzun eragiketa eta jarraitzeko egin klik Hurrengoa botoian."
LangString LSTR_112 1069 "Gehitu/kendu/berrinstalatu osagaiak"
LangString LSTR_113 1069 "Desinstalatu VLC"
LangString LSTR_114 1069 "Norberaren nahien arabera"
LangString LSTR_115 1069 Ezeztatu
LangString LSTR_116 1069 "< &Atzera"
LangString LSTR_117 1069 "Sakatu Aurrera jarraitzeko."
LangString LSTR_118 1069 "Nabarmendu instalatu nahi diren osagaiak, eta utzi zuri instalatu nahi ez direnak. $_CLICK"
LangString LSTR_119 1069 "Hautatu instalazio mota:"
LangString LSTR_120 1069 "Edo hautatu instalatu beharreko aukerazko osagaiak:"
LangString LSTR_121 1069 "Hautatu instalatu beharreko osagaiak:"
LangString LSTR_122 1069 "Instalazio programak $(LSTR_132) honako karpetan instalatuko du. Beste karpeta batean instalatzeko, sakatu Arakatu eta aukeratu beste bat. $_CLICK"
LangString LSTR_123 1069 "Helburu karpeta"
LangString LSTR_124 1069 &Arakatu...
LangString LSTR_125 1069 "Aukeratu $(LSTR_132) instalatuko den karpeta:"
LangString LSTR_126 1069 &Instalatu
LangString LSTR_127 1069 "Sakatu Instalatu instalazioarekin hasteko."
LangString LSTR_128 1069 "Ikusi &zehaztasunak"
LangString LSTR_129 1069 Osatuta
LangString LSTR_130 1069 " "
LangString LSTR_131 1069 &Itxi
LangString LSTR_132 1069 "VLC media player"


; LANG: 1063
LangString LSTR_0 1063 "VideoLAN VLC media player"
LangString LSTR_1 1063 "$(LSTR_2) Įdiegimas"
LangString LSTR_2 1063 "VLC media player"
LangString LSTR_3 1063 "Yra vietos: "
LangString LSTR_4 1063 "Reikia vietos: "
LangString LSTR_5 1063 "Negalima įrašyti: "
LangString LSTR_8 1063 "Nerastas simbolis: "
LangString LSTR_9 1063 "Negaliu įkrauti: "
LangString LSTR_10 1063 "Sukurti katalogą: "
LangString LSTR_11 1063 "Sukurti nuorodą: "
LangString LSTR_12 1063 "Sukurti panaikinimo programą:"
LangString LSTR_13 1063 "Ištrinti failą: "
LangString LSTR_14 1063 "Ištrinti perkraunant: "
LangString LSTR_15 1063 "Klaida kuriant nuorodą: "
LangString LSTR_16 1063 "Klaida kuriant: "
LangString LSTR_17 1063 "Klaida išskleidžiant duomenis! Sugadintas įdiegimo failas?"
LangString LSTR_19 1063 "VykdytiShell: "
LangString LSTR_20 1063 "Vykdyti: "
LangString LSTR_21 1063 "Išskleisti: "
LangString LSTR_22 1063 "Išskleisti: klaida įrašant į failą"
LangString LSTR_23 1063 "Įdiegimo failas sugadintas: neteisingas opkodas"
LangString LSTR_24 1063 "Nėra OLE dėl: "
LangString LSTR_25 1063 "Paskirties katalogas: "
LangString LSTR_26 1063 "Panaikinti katalogą: "
LangString LSTR_29 1063 "Praleista: "
LangString LSTR_30 1063 "Kopijuoti detales į atmintį"
LangString LSTR_32 1063 B
LangString LSTR_33 1063 " K"
LangString LSTR_34 1063 " M"
LangString LSTR_35 1063 " G"
LangString LSTR_36 1063 Rekomenduojamas
LangString LSTR_37 1063 Mažiausias
LangString LSTR_38 1063 Pilnas
LangString LSTR_39 1063 "Klaida atidarant failą įrašymui: $\r$\n$\t$\"$0$\"$\r$\nPaspauskite Nutraukti, jei norite nutraukti įdiegimą,$\r$\nPakartoti, jei norite pabandyti dar kartą įrašyti failą, ar$\r$\nIgnoruoti, jei norite praleisti šį failą"
LangString LSTR_40 1063 0
LangString LSTR_41 1063 "Sveiki atvykę į $(LSTR_132) įdiegimo programą."
LangString LSTR_42 1063 "MS Shell Dlg"
LangString LSTR_43 1063 "Ši programa jums padės lengvai įdiegti $(LSTR_132).$\r$\n$\r$\nRekomenduojama išjungti visas programas, prieš pradedant įdiegimą. Tai leis atnaujinti sistemos failus neperkraunat kompiuterio.$\r$\n$\r$\n"
LangString LSTR_44 1063 "Dabar jau žinote savo teises. Jei norite tęsti, spustelėkite mygtuką Toliau"
LangString LSTR_45 1063 "&Toliau >"
LangString LSTR_46 1063 "Naudojimo sutartis"
LangString LSTR_47 1063 "Prašome perskaityti sutartį prieš įdiegdami $(LSTR_132)."
LangString LSTR_48 1063 "Paspauskite Page Down ir perskaitykite visą sutartį."
LangString LSTR_49 1063 Pasirinkite
LangString LSTR_50 1063 "Pasirinkite kokias $(LSTR_132) galimybes jūs norite įdiegti."
LangString LSTR_51 1063 Paaiškinimas
LangString LSTR_52 1063 "Užveskite pelės žymeklį ant komponento ir pamatysite jo aprašymą."
LangString LSTR_53 1063 "Pasirinkite įdiegimo vietą"
LangString LSTR_54 1063 "Pasirinkite katalogą į kūri įdiegsite $(LSTR_132)."
LangString LSTR_55 1063 Diegiama
LangString LSTR_56 1063 "Prašome palaukti, kol $(LSTR_132) bus įdiegtas."
LangString LSTR_57 1063 "Įdiegimas baigtas"
LangString LSTR_58 1063 "Įdiegimas baigtas sekmingai."
LangString LSTR_59 1063 "Įdiegimas nutrauktas"
LangString LSTR_60 1063 "Įdiegimas nebuvo baigtas sekmingai."
LangString LSTR_61 1063 &Baigti
LangString LSTR_62 1063 "Baigiu $(LSTR_132) įdiegimo procesą"
LangString LSTR_63 1063 "$(LSTR_132) buvo įdiegtas į jūsų kompiuterį.$\r$\n$\r$\nPaspauskite Baigti."
LangString LSTR_64 1063 "&Leisti $(LSTR_132)"
LangString LSTR_65 1063 "Aplankyti VideoLAN VLC grotuvo tinklalapį"
LangString LSTR_66 1063 8
LangString LSTR_67 1063 "Ar jūs tikrai norite išjungti $(LSTR_2) įdiegimo programą?"
LangString LSTR_68 1063 Groti
LangString LSTR_69 1063 "VLC atrodo veikia ir dabar bus uždarytas."
LangString LSTR_70 1063 "Diegimo programai nepavyko uždaryti VLC, padarykite tai rankiniu būdu."
LangString LSTR_71 1063 "Diegimas nutrauktas"
LangString LSTR_72 1063 "Įvairialypės terpės kūrinių grotuvas (būtinas)"
LangString LSTR_73 1063 "Tikrinami procesai..."
LangString LSTR_74 1063 "Leisti per VLC grotuvą"
LangString LSTR_75 1063 "„Pradžios“ meniu nuoroda"
LangString LSTR_76 1063 "Darbalaukio nuoroda"
LangString LSTR_77 1063 "Naršyklės papildinys"
LangString LSTR_78 1063 "ActiveX papildinys"
LangString LSTR_79 1063 "Disko grojimas"
LangString LSTR_80 1063 "Žiūrėti DVD filmą"
LangString LSTR_81 1063 "Klausytis garso CD"
LangString LSTR_82 1063 "Žiūrėti VCD filmą"
LangString LSTR_83 1063 "Žiūrėti SVCD filmą"
LangString LSTR_84 1063 "Klausytis garso DVD"
LangString LSTR_85 1063 "Žiūrėti video failus"
LangString LSTR_86 1063 "Klausytis garso failų"
LangString LSTR_87 1063 "Play Blu-ray"
LangString LSTR_88 1063 "Failų tipų susiejimai"
LangString LSTR_89 1063 "Garso failai"
LangString LSTR_90 1063 "Video failai"
LangString LSTR_91 1063 Kita
LangString LSTR_92 1063 "Kontekstinis meniu"
LangString LSTR_93 1063 "Įtraukti į VLC grojaraštį"
LangString LSTR_94 1063 "Ištrinti ankstesnes VLC nuostatas bei podėlį"
LangString LSTR_95 1063 "Pats kūrinių grotuvas"
LangString LSTR_96 1063 "Prideda ženkliukus prie jūsų „Pradžios“ meniu – kad būtų lengviau pasiekti"
LangString LSTR_97 1063 "Prideda ženkliukus jūsų darbalaukyje – kad būtų lengviau pasiekti"
LangString LSTR_98 1063 "VLC ActiveX papildinys"
LangString LSTR_99 1063 "DVD ir CD atkūrimo registracija"
LangString LSTR_100 1063 "Priskiria VLC grotuvą numatytąją programa nurodytam failų tipui"
LangString LSTR_101 1063 "Pridėti kontekstini meniu punktą („Paleisti per VLC“ ir „Įtraukti į VLC grojaraštį“)"
LangString LSTR_102 1063 "Ištrinti VLC media grotuvo nustatymus bei podėlį likusius po ankstesnių instaliacijų"
LangString LSTR_103 1063 "Jau įdiegtas"
LangString LSTR_104 1063 "Pasirinkite kaip norite įdiegti VLC"
LangString LSTR_105 1063 "Ankstesnė VLC versija jau įdiegta. Pasirinkite veiksmą, kurį norite atlikti ir spustelėkite Toliau."
LangString LSTR_106 1063 "Atnaujinti VLC naudojant anksesnius nustatymus (rekomenduojama)"
LangString LSTR_107 1063 "Keisti nustatymus (patyrusiems)"
LangString LSTR_108 1063 "Naujesnė VLC versija jau įdiegta! Nerekomenduojama grįžti prie ankstesnės versijos. Pasirinkite veiksmą, kurį norite atlikti ir spustelėkite Toliau."
LangString LSTR_109 1063 "Grąžinti ankstesnę VLC versiją naudojant ankstesnius nustatymus (rekomenduojama)"
LangString LSTR_110 1063 "Pasirinkite techninės priežiūros funkciją atlikti."
LangString LSTR_111 1063 "VLC 3.0.24 jau įdiegtas. Pasirinkite veiksmą, kurį norite atlikti ir spustelėkite Toliau."
LangString LSTR_112 1063 "Pridėti / pašalinti / iš naujo diegti komponentus"
LangString LSTR_113 1063 "Pašalinti VLC"
LangString LSTR_114 1063 Kitoks
LangString LSTR_115 1063 Nutraukti
LangString LSTR_116 1063 "< &Atgal"
LangString LSTR_117 1063 "Paspauskite toliau"
LangString LSTR_118 1063 "Padėkite varneles laukeliuose komponentų kuriuos norite įdiegti ir nuimkite nuo kurių nenorite įdiegti. $_CLICK"
LangString LSTR_119 1063 "Pasirinkite įdiegimo būdą:"
LangString LSTR_120 1063 "Arba, pasirinkite neprivalomus komponentus, kuriuos jūs norite įdiegti:"
LangString LSTR_121 1063 "Pasirinkite komponentus, kuriuos įdiegti:"
LangString LSTR_122 1063 "Įdiegimas dabar įdiegs $(LSTR_132) šiame kataloge. Jeigu norite pakeisti šį katalogą, paspauskite Pasirinkti. $_CLICK"
LangString LSTR_123 1063 "Įdiegimo katalogas"
LangString LSTR_124 1063 P&asirinkti...
LangString LSTR_125 1063 "Pasirinkite katalogą, kur įdiegti $(LSTR_132):"
LangString LSTR_126 1063 &Įdiegti
LangString LSTR_127 1063 "Paspauskite įdiegti"
LangString LSTR_128 1063 "Parodyti &detales"
LangString LSTR_129 1063 Baigta
LangString LSTR_130 1063 " "
LangString LSTR_131 1063 &Uždaryti
LangString LSTR_132 1063 "VLC media player"


; LANG: 1061
LangString LSTR_0 1061 "VideoLAN VLC media player"
LangString LSTR_1 1061 "$(LSTR_2) Paigaldamine"
LangString LSTR_2 1061 "VLC media player"
LangString LSTR_3 1061 "Vaba ruum: "
LangString LSTR_4 1061 "Vajalik ruum: "
LangString LSTR_5 1061 "Ei saa kirjutada: "
LangString LSTR_8 1061 "Ei leidnud sümbolit: "
LangString LSTR_9 1061 "Ei saanud laadida: "
LangString LSTR_10 1061 "Loo kaust: "
LangString LSTR_11 1061 "Loo otsetee: "
LangString LSTR_12 1061 "Loodud eemaldaja: "
LangString LSTR_13 1061 "Kustuta fail: "
LangString LSTR_14 1061 "Kustuta taaskäivitamisel: "
LangString LSTR_15 1061 "Tõrge otsetee loomisel: "
LangString LSTR_16 1061 "Tõrge loomisel: "
LangString LSTR_17 1061 "Tõrge andmete lahtipakkimisel! Vigane paigaldaja?"
LangString LSTR_19 1061 "ExecShell: "
LangString LSTR_20 1061 "Käivita: "
LangString LSTR_21 1061 "Paki lahti: "
LangString LSTR_22 1061 "Paki lahti: viga faili kirjutamisel "
LangString LSTR_23 1061 "Paigaldaja kõlbmatu: vigane opkood"
LangString LSTR_24 1061 "No OLE for: "
LangString LSTR_25 1061 "Väljastatav kaust: "
LangString LSTR_26 1061 "Eemalda kaust: "
LangString LSTR_29 1061 "Vahele jäetud: "
LangString LSTR_30 1061 "Kopeeri detailid lõikelauale"
LangString LSTR_32 1061 B
LangString LSTR_33 1061 " K"
LangString LSTR_34 1061 " M"
LangString LSTR_35 1061 " G"
LangString LSTR_36 1061 Soovitatud
LangString LSTR_37 1061 Minimaalne
LangString LSTR_38 1061 Täieli
LangString LSTR_39 1061 "Tõrge faili avamisel kirjutamiseks: $\r$\n$\t$\"$0$\"$\r$\nPaigalduse katkestamiseks vajuta Katkesta,$\r$\nvajuta Ürita uuesti, et faili kirjutamist uuesti proovida, või$\r$\nIgnoreeri, et see fail vahele jätta."
LangString LSTR_40 1061 0
LangString LSTR_41 1061 "$(LSTR_132) paigaldamine!"
LangString LSTR_42 1061 "MS Shell Dlg"
LangString LSTR_43 1061 "See abiline aitab paigaldada $(LSTR_132).$\r$\n$\r$\nEnne paigaldamise alustamist on soovitatav kõik teised programmid sulgeda, see võimaldab teatud süsteemifaile uuendada ilma arvutit taaskäivitamata.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1061 "Sa oled nüüd teadlik oma õigustest. Vajuta Edasi, et jätkata"
LangString LSTR_45 1061 "Edasi >"
LangString LSTR_46 1061 Litsentsileping
LangString LSTR_47 1061 "Enne $(LSTR_132) paigaldamist vaata palun litsentsileping üle."
LangString LSTR_48 1061 "Vajuta Page Down, et näha ülejäänud teksti."
LangString LSTR_49 1061 "Vali komponendid"
LangString LSTR_50 1061 "Vali millised $(LSTR_132) osad sa soovid paigaldada."
LangString LSTR_51 1061 Kirjeldus
LangString LSTR_52 1061 "Nihuta hiir komponendile, et näha selle kirjeldust."
LangString LSTR_53 1061 "Vali asukoht"
LangString LSTR_54 1061 "Vali kaust kuhu paigaldada $(LSTR_132)."
LangString LSTR_55 1061 Paigaldan...
LangString LSTR_56 1061 "Palun oota kuni $(LSTR_132) on paigaldatud."
LangString LSTR_57 1061 "Programm paigaldatud"
LangString LSTR_58 1061 "Paigaldus edukalt sooritatud."
LangString LSTR_59 1061 "Paigaldus katkestatud"
LangString LSTR_60 1061 "Paigaldamine ebaõnnestus."
LangString LSTR_61 1061 Lõpeta
LangString LSTR_62 1061 "$(LSTR_132) paigalduse lõpule viimine."
LangString LSTR_63 1061 "$(LSTR_132) on sinu arvutisse paigaldatud.$\r$\n$\r$\nAbilise sulgemiseks vajuta Lõpeta."
LangString LSTR_64 1061 "Käivita $(LSTR_132)"
LangString LSTR_65 1061 "Külasta VideoLAN VLC meediaesitaja veebilehte"
LangString LSTR_66 1061 8
LangString LSTR_67 1061 "Oled sa kindel et soovid $(LSTR_2) paigaldamise katkestada?"
LangString LSTR_68 1061 Esita
LangString LSTR_69 1061 "VLC tundub töötavat ning see suletakse nüüd."
LangString LSTR_70 1061 "See installeerija ei suutnud sulgeda VLC'd, palun tehke seda manuaalselt."
LangString LSTR_71 1061 "Installeerimine katkestatud!"
LangString LSTR_72 1061 "Meediaesitaja (vajalik)"
LangString LSTR_73 1061 "Kontrollin protsessi..."
LangString LSTR_74 1061 "Esita VLC meediaesitajaga"
LangString LSTR_75 1061 "Start menüü otsetee"
LangString LSTR_76 1061 "Töölaua otsetee"
LangString LSTR_77 1061 "Veebi pluginad"
LangString LSTR_78 1061 "ActiveX plugin"
LangString LSTR_79 1061 "Ketaste taasesitus"
LangString LSTR_80 1061 "Esita DVD film"
LangString LSTR_81 1061 "Esita audio-CD"
LangString LSTR_82 1061 "Esita VCD film"
LangString LSTR_83 1061 "Esita SVCD film"
LangString LSTR_84 1061 "Esita audio DVD"
LangString LSTR_85 1061 "Esita videofailid"
LangString LSTR_86 1061 "Esita audiofailid"
LangString LSTR_87 1061 "Mängi Blu-ray"
LangString LSTR_88 1061 "Failitüübi seosed"
LangString LSTR_89 1061 Audiofailid
LangString LSTR_90 1061 Videofailid
LangString LSTR_91 1061 Muu
LangString LSTR_92 1061 "Konteksti menüü"
LangString LSTR_93 1061 "Lisa VLC meediaesitaja esitusloendisse"
LangString LSTR_94 1061 "Kustuta eelistused ja vahemälu"
LangString LSTR_95 1061 "Meediaesitaja ise"
LangString LSTR_96 1061 "Lisab ikoonid su start menüüle kergeks ligipääsuks"
LangString LSTR_97 1061 "Lisab ikoonid su töölauale kergeks ligipääsuks"
LangString LSTR_98 1061 "VLC ActiveX plugin"
LangString LSTR_99 1061 "DVD ja CD taasesitus registratsioon"
LangString LSTR_100 1061 "Määrab VLC meediaesitaja vaikimisi rakenduseks sellele faili tüübile"
LangString LSTR_101 1061 "Lisa konteksti menüüle ('Mängi VLC'ga' ja 'Lisa VLC esitusloendisse')"
LangString LSTR_102 1061 "Kustutab VLC meediaesitaja eelistused ja vahemälu failide ülejäägid eelmistest installerimistest"
LangString LSTR_103 1061 "Juba installeeritud"
LangString LSTR_104 1061 "Vali kuidas sa tahad installeerida VLC'd."
LangString LSTR_105 1061 "Vanem versioon VLC'st on juba installeeritud su süsteemis. Vali tehe mida soovite sooritada ning vajutage Edasi, et jätkata."
LangString LSTR_106 1061 "Uuenda VLC'd kasutades eelmisi seadeid (soovitatud)"
LangString LSTR_107 1061 "Muuda seadeid (edasijõudnud)"
LangString LSTR_108 1061 "Uuem versioon VLC'st on juba installeeritud! Ei ole soovitatud minna tagasi vanemale versioonile. Vali tehe mida soovite sooritada ning vajutage Edasi, et jätkata."
LangString LSTR_109 1061 "Madalda VLC'd kasutades eelmisi seadeid (soovitatud)"
LangString LSTR_110 1061 "Valige hoolduse seade, et sooritada."
LangString LSTR_111 1061 "VLC 3.0.24 on juba installeeritud. Vali tehe mida soovite sooritada ning vajutage Edasi, et jätkata."
LangString LSTR_112 1061 "Lisa/Eemalda/Installi uuesti komponendid"
LangString LSTR_113 1061 "Eemalda VLC"
LangString LSTR_114 1061 Kohandatud
LangString LSTR_115 1061 Loobu
LangString LSTR_116 1061 "< Tagasi"
LangString LSTR_117 1061 "Jätkamiseks vajuta Edasi."
LangString LSTR_118 1061 "Märgista komponendid mida soovid paigaldada ja eemalda märgistus neilt, mida ei soovi paigaldada. $_CLICK"
LangString LSTR_119 1061 "Vali paigalduse tüüp:"
LangString LSTR_120 1061 "või vali lisakomponendid mida soovid paigaldada:"
LangString LSTR_121 1061 "Vali paigaldatavad komponendid:"
LangString LSTR_122 1061 "$(LSTR_132) paigaldatakse järgmisse kausta. Et mujale paigaldada, vajuta sirvi ja vali teine kaust. $_CLICK"
LangString LSTR_123 1061 Sihtkaust
LangString LSTR_124 1061 Sirvi...
LangString LSTR_125 1061 "Vali kaust kuhu $(LSTR_132) paigaldada:"
LangString LSTR_126 1061 Paigalda
LangString LSTR_127 1061 "Paigaldamise alustamiseks vajuta Paigalda."
LangString LSTR_128 1061 Detailid
LangString LSTR_129 1061 Valmis
LangString LSTR_130 1061 " "
LangString LSTR_131 1061 Sule
LangString LSTR_132 1061 "VLC media player"


; LANG: 1026
LangString LSTR_0 1026 "VideoLAN VLC media player"
LangString LSTR_1 1026 "Инсталиране на $(LSTR_2) "
LangString LSTR_2 1026 "VLC media player"
LangString LSTR_3 1026 "Свободно пространство: "
LangString LSTR_4 1026 "Необходимо пространство: "
LangString LSTR_5 1026 "Неуспешно записване на: "
LangString LSTR_8 1026 "Символът не е намерен: "
LangString LSTR_9 1026 "Неуспешно зареждане на: "
LangString LSTR_10 1026 "Създаване на папка: "
LangString LSTR_11 1026 "Създаване на пряк път: "
LangString LSTR_12 1026 "Създаване на програма за изтриване: "
LangString LSTR_13 1026 "Изтриване на: "
LangString LSTR_14 1026 "Изтриване след рестарт: "
LangString LSTR_15 1026 "Грешка при създаване на прекия път: "
LangString LSTR_16 1026 "Грешка при създаване на: "
LangString LSTR_17 1026 "Грешка при декомпресиране на данните! Вероятно инсталационния пакет е повреден."
LangString LSTR_19 1026 "ExecShell: "
LangString LSTR_20 1026 "Изпълнение на: "
LangString LSTR_21 1026 "Извличане на: "
LangString LSTR_22 1026 "Извличане на: грешка при запис във файл "
LangString LSTR_23 1026 "Пакета е повреден: грешен код на операция"
LangString LSTR_24 1026 "Няма OLE за: "
LangString LSTR_25 1026 "Инсталиране в папка: "
LangString LSTR_26 1026 "Изтриване на папка: "
LangString LSTR_29 1026 "Пропускане на: "
LangString LSTR_30 1026 "Копиране на данните в буфера"
LangString LSTR_32 1026 Б
LangString LSTR_33 1026 " К"
LangString LSTR_34 1026 " М"
LangString LSTR_35 1026 " Г "
LangString LSTR_36 1026 Препоръчително
LangString LSTR_37 1026 Минимално
LangString LSTR_38 1026 Пълно
LangString LSTR_39 1026 "Грешка при отваряне на файла за запис: $\r$\n$\t$\"$0$\"$\r$\nНатиснете $\"Прекрати$\", за да прекратите инсталирането, $\"Повтори$\", за да опитате отново или $\"Игнорирай$\", за да пропуснете този файл"
LangString LSTR_40 1026 0
LangString LSTR_41 1026 "Добре дошли в Съветника за инсталиране на $(LSTR_132)!"
LangString LSTR_42 1026 "MS Shell Dlg"
LangString LSTR_43 1026 "Той ще инсталира $(LSTR_132) на вашия компютър.$\r$\n$\r$\nПрепоръчва се да затворите всички други приложения, преди да продължите. Това ще позволи на програмата да обнови някои системни файлове, без да се рестартира компютъра.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1026 "Вече сте наясно с вашите права. Натиснете $\"Напред$\" за да продължите."
LangString LSTR_45 1026 "Н&апред >"
LangString LSTR_46 1026 "Лицензионно споразумение"
LangString LSTR_47 1026 "Моля запознайте се Лицензионното споразумение преди да продължите."
LangString LSTR_48 1026 "Натиснете клавиша $\"Page Down$\", за да видите останалата част от споразумението."
LangString LSTR_49 1026 "Избор на компоненти"
LangString LSTR_50 1026 "Изберете кои компоненти на $(LSTR_132) искате да инсталирате."
LangString LSTR_51 1026 Описание
LangString LSTR_52 1026 "Преминете с мишката над определен компонент, за да видите описанието му."
LangString LSTR_53 1026 "Избор на папка за инсталиране"
LangString LSTR_54 1026 "Изберете папката, в която да се инсталира $(LSTR_132)."
LangString LSTR_55 1026 Инсталиране
LangString LSTR_56 1026 "Изчакайте, инсталират се файловете на $(LSTR_132)..."
LangString LSTR_57 1026 "Инсталирането завърши."
LangString LSTR_58 1026 "Инсталирането завърши успешно."
LangString LSTR_59 1026 "Инсталирането прекратено."
LangString LSTR_60 1026 "Инсталирането не завърши успешно."
LangString LSTR_61 1026 &Край
LangString LSTR_62 1026 "Приключване на Съветника за инсталиране на $(LSTR_132)"
LangString LSTR_63 1026 "Инсталирането на $(LSTR_132) е завършено.$\r$\n$\r$\nНатиснете бутона $\"Край$\", за да затворите Съветника."
LangString LSTR_64 1026 "Стартирай $(LSTR_132)"
LangString LSTR_65 1026 "Посещение на сайта на VideoLAN VLC Media Player"
LangString LSTR_66 1026 8
LangString LSTR_67 1026 "Сигурни ли сте, че искате да прекратите инсталирането на $(LSTR_2)?"
LangString LSTR_68 1026 Възпроизведи
LangString LSTR_69 1026 "VLC работи и сега ще бъде затворен"
LangString LSTR_70 1026 "Инсталаторът не може да затвори VLC, моля направете го ръчно"
LangString LSTR_71 1026 "Инсталацията е прекратена!"
LangString LSTR_72 1026 "Медиен Плеър (задължително)"
LangString LSTR_73 1026 "Проверяване на процеси..."
LangString LSTR_74 1026 "Пусни с VLC media player"
LangString LSTR_75 1026 "Пряк път в менюто „Старт“"
LangString LSTR_76 1026 "Пряк път на работния плот"
LangString LSTR_77 1026 "Браузърни разширения"
LangString LSTR_78 1026 "Разширение от тип „ActiveX“"
LangString LSTR_79 1026 "Възпроизвеждане на дискове"
LangString LSTR_80 1026 "Възпроизведи филма от DVD"
LangString LSTR_81 1026 "Възпроизведи аудио файловете от CD"
LangString LSTR_82 1026 "Възпроизведи филма от VCD"
LangString LSTR_83 1026 "Възпроизведи филма от SVCD"
LangString LSTR_84 1026 "Възпроизведи аудио от DVD"
LangString LSTR_85 1026 "Възпроизведи видео файлове"
LangString LSTR_86 1026 "Възпроизведи аудио файлове"
LangString LSTR_87 1026 "Play Blu-ray"
LangString LSTR_88 1026 "Асоцииране на файлове"
LangString LSTR_89 1026 "Аудио файлове"
LangString LSTR_90 1026 "Видео файлове"
LangString LSTR_91 1026 Други
LangString LSTR_92 1026 "Контекстни менюта"
LangString LSTR_93 1026 "Добави към плейлиста на VLC media player"
LangString LSTR_94 1026 "Изтриване на предпочитанията и кеша"
LangString LSTR_95 1026 "Медийният плеър"
LangString LSTR_96 1026 "Добавя иконки за бърз достъп в менюто „Старт“"
LangString LSTR_97 1026 "Добавя иконка за бърз достъп на работния Ви плот"
LangString LSTR_98 1026 "Разширението на VLC от тип „ActiveX“"
LangString LSTR_99 1026 "Регистрация за изпълнение на CD и DVD дискове"
LangString LSTR_100 1026 "Задава VLC като приложението по подразбиране за избрания тип файлове"
LangString LSTR_101 1026 "Добавяне на елементи на контекстното меню ('Възпроизвеждане с VLC' и 'Добави към VLC лист за възпроизвеждане')"
LangString LSTR_102 1026 "Изтриване на настройки и кеш файлове останали от предишна инсталация на VLC"
LangString LSTR_103 1026 "Вече е инсталиран"
LangString LSTR_104 1026 "Изберете как да инсталирате VLC"
LangString LSTR_105 1026 "По-стара версия на VLC е инсталирана във вашата система. Изберете операция. която искате да изпълните и натиснете $\"Напред$\" за да продължите."
LangString LSTR_106 1026 "Обновете VLC използвайки предишните настройки (препоръчително)"
LangString LSTR_107 1026 "Промени настройки (разширени)"
LangString LSTR_108 1026 "По-нова версия на VLC вече е инсталирана! Не се препоръчва да сменята с по-стара. Изберете операция, която желаете да изпълните и натиснете $\"Напред$\" за да продължите."
LangString LSTR_109 1026 "Върнете стара версия на VLC използвайки предишните настройки (препоръчително)"
LangString LSTR_110 1026 "Изберете опции за изпълнение на профилактика."
LangString LSTR_111 1026 "VLC 3.0.24 е вече инсталирана. Изберете операция, която желаете да изпълните и натиснете $\"Напред$\" за да продължите."
LangString LSTR_112 1026 "Добавете,премахнете или преинсталирайте компоненти"
LangString LSTR_113 1026 "Деинсталиране на VLC"
LangString LSTR_114 1026 "Инсталиране по избор"
LangString LSTR_115 1026 &Отказ
LangString LSTR_116 1026 "< &Назад"
LangString LSTR_117 1026 "Натиснете $\"Напред$\", за да продължите."
LangString LSTR_118 1026 "Изберете компонентите, които искате да бъдат инсталирани. $_CLICK"
LangString LSTR_119 1026 "Изберете тип инсталиране:"
LangString LSTR_120 1026 "Или изберете компонентите, които искате да бъдат инсталирани:"
LangString LSTR_121 1026 "Изберете компоненти:"
LangString LSTR_122 1026 "Програмата ще инсталира $(LSTR_132) в посочената папка. За да инсталирате в друга папка, натиснете $\"Преглед$\" и изберете друга папка. $_CLICK"
LangString LSTR_123 1026 "Целева папка"
LangString LSTR_124 1026 П&реглед...
LangString LSTR_125 1026 "Изберете папка, в която да се инсталира $(LSTR_132):"
LangString LSTR_126 1026 &Инсталирай
LangString LSTR_127 1026 "Натиснете $\"Инсталирай$\", за да започне инсталирането."
LangString LSTR_128 1026 &Детайли
LangString LSTR_129 1026 Край
LangString LSTR_130 1026 " "
LangString LSTR_131 1026 &Затвори
LangString LSTR_132 1026 "VLC media player"


; LANG: 1027
LangString LSTR_0 1027 "VideoLAN VLC media player"
LangString LSTR_1 1027 "Instal·lació de l'aplicació $(LSTR_2)"
LangString LSTR_2 1027 "VLC media player"
LangString LSTR_3 1027 "Espai lliure: "
LangString LSTR_4 1027 "Espai necessari: "
LangString LSTR_5 1027 "No s'ha pogut escriure: "
LangString LSTR_8 1027 "No s'ha trobat el símbol: "
LangString LSTR_9 1027 "No s'ha pogut carregar: "
LangString LSTR_10 1027 "Crea la carpeta: "
LangString LSTR_11 1027 "Crea la drecera: "
LangString LSTR_12 1027 "S'ha creat el desinstal·lador: "
LangString LSTR_13 1027 "S'ha suprimit el fitxer: "
LangString LSTR_14 1027 "Suprimeix en reiniciar: "
LangString LSTR_15 1027 "S'ha produït un error en crear la drecera: "
LangString LSTR_16 1027 "S'ha produït un error en crear:"
LangString LSTR_17 1027 "S'ha produït un error en descomprimir les dades! L'instal·lador està corrupte?"
LangString LSTR_19 1027 "Executa l'ordre: "
LangString LSTR_20 1027 Executa:
LangString LSTR_21 1027 "Extreu: "
LangString LSTR_22 1027 "Extreu: s'ha produït un error en escriure el fitxer "
LangString LSTR_23 1027 "L'instal·lador està corrupte: el codi d'operació no és vàlid"
LangString LSTR_24 1027 "No hi ha OLE per a: "
LangString LSTR_25 1027 "Carpeta de sortida: "
LangString LSTR_26 1027 "Suprimeix la carpeta: "
LangString LSTR_29 1027 "S'ha omès: "
LangString LSTR_30 1027 "Copia els detalls al porta-retalls"
LangString LSTR_32 1027 B
LangString LSTR_33 1027 " K"
LangString LSTR_34 1027 " M"
LangString LSTR_35 1027 " G"
LangString LSTR_36 1027 Recomanat
LangString LSTR_37 1027 Mínim
LangString LSTR_38 1027 Complet
LangString LSTR_39 1027 "S'ha produït un error en obrir el fitxer en mode d'escriptura: $\r$\n$\t$\"$0$\"$\r$\nFeu clic a Abandona per a aturar la instal·lació,$\r$\nReintenta per a tornar-ho a provar, o$\r\Ignora per a ometre aquest fitxer."
LangString LSTR_40 1027 0
LangString LSTR_41 1027 "Benvinguts a l'auxiliar d'instal·lació de l'aplicació $(LSTR_132)"
LangString LSTR_42 1027 "MS Shell Dlg"
LangString LSTR_43 1027 "Aquest auxiliar us guiarà durant el procés d'instal·lació de l'aplicació $(LSTR_132).$\r$\n$\r$\nEs recomana tancar la resta d'aplicacions abans de començar la instal·lació. Això permetrà al programa d'instal·ació actualitzar fitxers del sistema rellevants sense haver de reiniciar l'ordinador.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1027 "Ara esteu al corrent dels vostres drets. Feu clic a «Següent» per continuar."
LangString LSTR_45 1027 "En&davant >"
LangString LSTR_46 1027 "Acord de Llicència"
LangString LSTR_47 1027 "Reviseu els termes de la llicència abans d'instal·lar l'aplicació $(LSTR_132)."
LangString LSTR_48 1027 "Premeu AvPàg per a veure la resta de l'acord."
LangString LSTR_49 1027 "Selecció de components"
LangString LSTR_50 1027 "Seleccioneu quines característiques de l'aplicació $(LSTR_132) desitgeu instal·lar."
LangString LSTR_51 1027 Descripció
LangString LSTR_52 1027 "Situeu el ratolí damunt d'un component per a veure'n la descripció."
LangString LSTR_53 1027 "Trieu una ubicació d'instal·lació"
LangString LSTR_54 1027 "Trieu la carpeta on instal·lar-hi l'aplicació $(LSTR_132)."
LangString LSTR_55 1027 "S'està instal·lant"
LangString LSTR_56 1027 "Si us plau, espereu mentre l'aplicació $(LSTR_132) s'instal·la."
LangString LSTR_57 1027 "S'ha acabat la instal·lació"
LangString LSTR_58 1027 "La instal·lació ha acabat correctament."
LangString LSTR_59 1027 "S'ha abandonat la instal·lació"
LangString LSTR_60 1027 "La instal·lació no ha acabat correctament."
LangString LSTR_61 1027 &Finalitza
LangString LSTR_62 1027 "S'està acabant l'auxiliar d'instal·lació de l'aplicació $(LSTR_132)"
LangString LSTR_63 1027 "L'aplicació $(LSTR_132) s'ha instal·lat a l'ordinador.$\r$\n$\r$\nFeu clic a Finalitza per a tancar aquest auxiliar."
LangString LSTR_64 1027 "Executa l'aplicació $(LSTR_132)"
LangString LSTR_65 1027 "Visita el lloc web del reproductor multimèdia VideoLAN VLC"
LangString LSTR_66 1027 8
LangString LSTR_67 1027 "Esteu segur que voleu sortir del programa d'instal·lació de l'aplicació $(LSTR_2)?"
LangString LSTR_68 1027 Reprodueix
LangString LSTR_69 1027 "El VLC s'està executant i es tancarà."
LangString LSTR_70 1027 "L'instal·lador no ha pogut tancar el VLC, feu-ho manualment."
LangString LSTR_71 1027 "S'ha interromput la instal·lació"
LangString LSTR_72 1027 "Reproductor multimèdia (requerit)"
LangString LSTR_73 1027 "S'estan comprovant els processos..."
LangString LSTR_74 1027 "Reprodueix amb el reproductor multimèdia VLC"
LangString LSTR_75 1027 "Drecera de menú d'inici"
LangString LSTR_76 1027 "Drecera d'escriptori"
LangString LSTR_77 1027 "Connectors web"
LangString LSTR_78 1027 "Connector ActiveX"
LangString LSTR_79 1027 "Reproducció de discos"
LangString LSTR_80 1027 "Reprodueix una pel·lícula en DVD"
LangString LSTR_81 1027 "Reprodueix un CD d'àudio"
LangString LSTR_82 1027 "Reprodueix una pel·lícula en VCD"
LangString LSTR_83 1027 "Reprodueix una pel·lícula en SVCD"
LangString LSTR_84 1027 "Reprodueix DVD d'àudio"
LangString LSTR_85 1027 "Reprodueix fitxers de vídeo"
LangString LSTR_86 1027 "Reprodueix fitxers d'àudio"
LangString LSTR_87 1027 "Reprodueix Blu-ray"
LangString LSTR_88 1027 "Associació de tipus de fitxer"
LangString LSTR_89 1027 "Fitxers d'àudio"
LangString LSTR_90 1027 "Fitxers de vídeo"
LangString LSTR_91 1027 Altres
LangString LSTR_92 1027 "Menús contextuals"
LangString LSTR_93 1027 "Afegeix a la llista de reproducció del reproductor multimèdia VLC"
LangString LSTR_94 1027 "Esborra les preferències i la memòria cau"
LangString LSTR_95 1027 "El mateix reproductor multimèdia"
LangString LSTR_96 1027 "Afegeix icones al menú d'inici per a un accés més fàcil"
LangString LSTR_97 1027 "Afegeix una icona a l'escriptori per a un accés fàcil"
LangString LSTR_98 1027 "El connector VLC ActiveX"
LangString LSTR_99 1027 "Registre de reproducció CD i DVD"
LangString LSTR_100 1027 "Estableix el reproductor multimèdia VLC com a aplicació per defecte per al tipus de fitxer especificat"
LangString LSTR_101 1027 "Afegeix elements al menú contextual («Reprodueix amb el VLC» i «Afegeix a la llista de reproducció del VLC»)"
LangString LSTR_102 1027 "Esborra les preferències i la memòria cau d'instal·lacions anteriors del reproductor multimèdia VLC"
LangString LSTR_103 1027 "Ja s'ha instal·lat"
LangString LSTR_104 1027 "Trieu com voleu instal·lar el VLC."
LangString LSTR_105 1027 "Existeix una versió més antiga del VLC instal·lada al sistema. Seleccioneu l'operació amb la qual voleu procedir i feu clic a «Següent» per continuar."
LangString LSTR_106 1027 "Actualitza el VLC fent servir els paràmetres existents (recomanat)"
LangString LSTR_107 1027 "Canvia els paràmetres (avançat)"
LangString LSTR_108 1027 "Existeix una versió més nova del VLC instal·lada al sistema. No es recomana instal·lar una versió més antiga. Seleccioneu l'operació amb la qual voleu procedir i feu clic a «Següent» per continuar."
LangString LSTR_109 1027 "Instal·la la versió més antiga fent servir els paràmetres existents (recomanat)"
LangString LSTR_110 1027 "Trieu l'opció de manteniment que s'ha de dur a terme."
LangString LSTR_111 1027 "La versió 3.0.24 del VLC ja es troba instal·lada. Seleccioneu l'operació que voleu dur a terme i feu clic a «Següent» per continuar."
LangString LSTR_112 1027 "Afegeix/Elimina/Torna a instal·lar components"
LangString LSTR_113 1027 "Desinstal·la el VLC"
LangString LSTR_114 1027 Personalitzada
LangString LSTR_115 1027 &Cancel·la
LangString LSTR_116 1027 "< En&rere"
LangString LSTR_117 1027 "Feu clic a Endavant per a continuar."
LangString LSTR_118 1027 "Activeu els components que voleu instal·lar i desactiveu els que no. $_CLICK"
LangString LSTR_119 1027 "Seleccioneu el tipus d'instal·lació:"
LangString LSTR_120 1027 "O bé, seleccioneu els components opcionals que desitgéssiu instal·lar:"
LangString LSTR_121 1027 "Seleccioneu els components per instal·lar:"
LangString LSTR_122 1027 "El programa d'instal·lació instal·larà l'aplicació $(LSTR_132) en la següent carpeta. Per a instal·lar-lo en una carpeta diferent, feu clic a Navega i seleccioneu-ne una altra. $_CLICK"
LangString LSTR_123 1027 "Carpeta de destinació"
LangString LSTR_124 1027 &Navega...
LangString LSTR_125 1027 "Seleccioneu la carpeta on s'instal·larà l'aplicació $(LSTR_132):"
LangString LSTR_126 1027 &Instal·la
LangString LSTR_127 1027 "Feu clic a Instal·la per a iniciar la instal·lació."
LangString LSTR_128 1027 "&Mostra els detalls"
LangString LSTR_129 1027 "S'ha acabat"
LangString LSTR_130 1027 " "
LangString LSTR_131 1027 &Tanca
LangString LSTR_132 1027 "VLC media player"


; LANG: 1038
LangString LSTR_0 1038 "VideoLAN VLC media player"
LangString LSTR_1 1038 "$(LSTR_2) Telepítő"
LangString LSTR_2 1038 "VLC media player"
LangString LSTR_3 1038 "Szabad terület: "
LangString LSTR_4 1038 "Helyigény: "
LangString LSTR_5 1038 "Nem írható: "
LangString LSTR_8 1038 "A következő szimbólum nem található: "
LangString LSTR_9 1038 "Nem tölthető be: "
LangString LSTR_10 1038 "Mappa létrehozás: "
LangString LSTR_11 1038 "Parancsikon létrehozása: "
LangString LSTR_12 1038 "Létrehozott eltávolító: "
LangString LSTR_13 1038 "Törölt fájl: "
LangString LSTR_14 1038 "Rendszerindításkor törlendő: "
LangString LSTR_15 1038 "Hiba a parancsikon létrehozásakor: "
LangString LSTR_16 1038 "Hiba a létrehozáskor: "
LangString LSTR_17 1038 "Hiba az adatok kibontásakor! Megsérült a Telepítő?"
LangString LSTR_19 1038 "Végrehajtás a hozzárendeléseken keresztül: "
LangString LSTR_20 1038 "Végrehajtás: "
LangString LSTR_21 1038 "Kibontás: "
LangString LSTR_22 1038 "Kibontás: Hiba a fájl írásakor "
LangString LSTR_23 1038 "Sérült a telepítő: hibás utasítás"
LangString LSTR_24 1038 "Nincs OLE: "
LangString LSTR_25 1038 "Kimeneti mappa: "
LangString LSTR_26 1038 "Mappa eltávolítása: "
LangString LSTR_29 1038 "Kihagyott: "
LangString LSTR_30 1038 "Adatok vágólapra másolása"
LangString LSTR_32 1038 B
LangString LSTR_33 1038 " K"
LangString LSTR_34 1038 " M"
LangString LSTR_35 1038 " G"
LangString LSTR_36 1038 Javasolt
LangString LSTR_37 1038 Minimális
LangString LSTR_38 1038 Teljes
LangString LSTR_39 1038 "Hiba történt a fájl írásra történő megnyitásakor: $\r$\n$\t$\"$0$\"$\r$\nA Mégse gomb megnyomásával megszakíthatja a telepítést,$\r$\naz Ismét gombbal megismételheti a fájl írását,$\r$\na Kihagyás gombbal kihagyhatja ezt a fájlt."
LangString LSTR_40 1038 0
LangString LSTR_41 1038 "Üdvözli a(z) $(LSTR_132) Telepítő Varázsló"
LangString LSTR_42 1038 "MS Shell Dlg"
LangString LSTR_43 1038 "A(z) $(LSTR_132) telepítése következik a számítógépre.$\r$\n$\r$\nJavasoljuk, hogy indítás előtt zárja be a futó alkalmazásokat. Így a telepítő a rendszer újraindítása nélkül tudja frissíteni a szükséges rendszerfájlokat.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1038 "Most már tisztában van jogaival. A folytatáshoz nyomja meg a Tovább gombot."
LangString LSTR_45 1038 "&Tovább >"
LangString LSTR_46 1038 Licencszerződés
LangString LSTR_47 1038 "A(z) $(LSTR_132) telepítése előtt tekintse át a szerződés feltételeit."
LangString LSTR_48 1038 "A PageDown gombbal olvashatja el a szerződés folytatását."
LangString LSTR_49 1038 "Összetevők kiválasztása"
LangString LSTR_50 1038 "Válassza ki, hogy a(z) $(LSTR_132) mely funkcióit kívánja telepíteni."
LangString LSTR_51 1038 Leírás
LangString LSTR_52 1038 "Vigye rá az egeret az összetevőre, hogy megtekinthesse a leírását."
LangString LSTR_53 1038 "Telepítési hely kiválasztása"
LangString LSTR_54 1038 "Válassza ki a(z) $(LSTR_132) telepítésének mappáját."
LangString LSTR_55 1038 "Telepítési folyamat"
LangString LSTR_56 1038 "Kis türelmet a(z) $(LSTR_132) telepítéséig."
LangString LSTR_57 1038 "Telepítés befejeződött"
LangString LSTR_58 1038 "A telepítés sikeresen befejeződött."
LangString LSTR_59 1038 "A telepítés megszakadt"
LangString LSTR_60 1038 "A telepítés sikertelen volt."
LangString LSTR_61 1038 &Befejezés
LangString LSTR_62 1038 "A(z) $(LSTR_132) telepítése megtörtént."
LangString LSTR_63 1038 "A(z) $(LSTR_132) telepítése megtörtént.$\r$\n$\r$\nA Befejezés gomb megnyomásával zárja be a varázslót."
LangString LSTR_64 1038 "$(LSTR_132) futtatása"
LangString LSTR_65 1038 "A VideoLAN VLC médialejátszó weboldalának felkeresése"
LangString LSTR_66 1038 8
LangString LSTR_67 1038 "Biztos, hogy ki akar lépni a(z) $(LSTR_2) Telepítőből?"
LangString LSTR_68 1038 Lejátszás
LangString LSTR_69 1038 "Úgy tűnik, a VLC fut, most bezárásra kerül."
LangString LSTR_70 1038 "A telepítő nem tudta bezárni a VLC-t, tegye meg saját kezűleg."
LangString LSTR_71 1038 "Telepítés megszakítva"
LangString LSTR_72 1038 "Médialejátszó (szükséges)"
LangString LSTR_73 1038 "Folyamatok ellenőrzése..."
LangString LSTR_74 1038 "Lejátszás a VLC médialejátszóval"
LangString LSTR_75 1038 "Start menü ikon"
LangString LSTR_76 1038 "Asztali ikon"
LangString LSTR_77 1038 "Webes bővítmények"
LangString LSTR_78 1038 "ActiveX bővítmény"
LangString LSTR_79 1038 "Lemezek lejátszása"
LangString LSTR_80 1038 "DVD film lejátszása"
LangString LSTR_81 1038 "Hang CD lejátszása"
LangString LSTR_82 1038 "VCD film lejátszása"
LangString LSTR_83 1038 "SVCD film lejátszása"
LangString LSTR_84 1038 "Hang DVD lejátszása"
LangString LSTR_85 1038 "Videofájlok lejátszása"
LangString LSTR_86 1038 "Hangfájlok lejátszása"
LangString LSTR_87 1038 "Blu-ray lejátszása"
LangString LSTR_88 1038 Fájltípus-társítások
LangString LSTR_89 1038 Hangfájlok
LangString LSTR_90 1038 Videofájlok
LangString LSTR_91 1038 Egyéb
LangString LSTR_92 1038 "Helyi menük"
LangString LSTR_93 1038 "Hozzáadás a VLC lejátszólistájához"
LangString LSTR_94 1038 "Beállítások és gyorsítótár törlése"
LangString LSTR_95 1038 "Maga a médialejátszó"
LangString LSTR_96 1038 "Ikonokat tesz a Start menübe az egyszerű eléréshez"
LangString LSTR_97 1038 "Ikonokat tesz az Asztalra az egyszerű eléréshez"
LangString LSTR_98 1038 "A VLC ActiveX bővítmény"
LangString LSTR_99 1038 "DVD és CD lejátszásának bejegyzése"
LangString LSTR_100 1038 "Beállítja a VLC médialejátszót a megadott fájltípus alapértelmezett alkalmazásaként"
LangString LSTR_101 1038 "Bejegyzések a helyi menübe (Lejátszás a VLC médialejátszóval és Hozzáadás a VLC lejátszólistájához)"
LangString LSTR_102 1038 "Törli a VLC médialejátszó előző telepítésből maradt beállításait és gyorsítótár-fájljait"
LangString LSTR_103 1038 "Már telepítve van"
LangString LSTR_104 1038 "Válassza ki, hogyan szeretné telepíteni a VLC-t."
LangString LSTR_105 1038 "A rendszerre már telepítve van a VLC egy régebbi verziója. Válassza ki a végrehajtandó műveletet, és nyomja meg a Tovább gombot."
LangString LSTR_106 1038 "A VLC frissítése korábbi beállítások használatával (javasolt)"
LangString LSTR_107 1038 "Beállítások módosítása (speciális)"
LangString LSTR_108 1038 "A VLC egy újabb verziója már telepítve van. Nem javasolt régebbi verzió telepítése. Válassza ki a végrehajtandó műveletet, és nyomja meg a Tovább gombot."
LangString LSTR_109 1038 "A VLC visszafejlesztése korábbi beállítások használatával (javasolt)"
LangString LSTR_110 1038 "Válassza ki a végrehajtandó karbantartási lehetőséget."
LangString LSTR_111 1038 "Már telepítve van a VLC 3.0.24 verziója. Válassza ki a végrehajtandó műveletet, és nyomja meg a Tovább gombot."
LangString LSTR_112 1038 "Összetevők hozzáadása/eltávolítása/újratelepítése"
LangString LSTR_113 1038 "VLC eltávolítása"
LangString LSTR_114 1038 Egyéni
LangString LSTR_115 1038 &Mégse
LangString LSTR_116 1038 "< &Vissza"
LangString LSTR_117 1038 "Kattintson a Tovább-ra a folytatáshoz."
LangString LSTR_118 1038 "Jelölje be azokat az összetevőket amelyeket telepíteni kíván és törölje a jelölést a nem kívánt összetevőknél. $_CLICK"
LangString LSTR_119 1038 "Válassza ki a telepítés típusát:"
LangString LSTR_120 1038 "vagy, jelölje ki a választható összetevők közül a telepíteni kívánta(ka)t:"
LangString LSTR_121 1038 "Válassza ki a telepítendő összetevőket:"
LangString LSTR_122 1038 "A $(LSTR_132) a következő mappába kerül. Másik mappa választásához kattintson a Tallózás gombra. $_CLICK"
LangString LSTR_123 1038 "Telepítés helye"
LangString LSTR_124 1038 &Tallózás...
LangString LSTR_125 1038 "A(z) $(LSTR_132) telepítési helyének kiválasztása:"
LangString LSTR_126 1038 &Telepítés
LangString LSTR_127 1038 "Kattintson a Telepítésre a telepítéshez."
LangString LSTR_128 1038 &Részletek
LangString LSTR_129 1038 Kész
LangString LSTR_130 1038 " "
LangString LSTR_131 1038 &Bezárás
LangString LSTR_132 1038 "VLC media player"


; LANG: 3098
LangString LSTR_0 3098 "VideoLAN VLC media player"
LangString LSTR_1 3098 "$(LSTR_2) Инсталација"
LangString LSTR_2 3098 "VLC media player"
LangString LSTR_3 3098 "Слободан простор: "
LangString LSTR_4 3098 "Потребан простор: "
LangString LSTR_5 3098 "Немогуће писање: "
LangString LSTR_8 3098 "Симбол није нађен: "
LangString LSTR_9 3098 "Немогуће учитавање: "
LangString LSTR_10 3098 "Креирање фолдера: "
LangString LSTR_11 3098 "Креирање пречице: "
LangString LSTR_12 3098 "Креирање деинсталера: "
LangString LSTR_13 3098 "Брисање фајла: "
LangString LSTR_14 3098 "Брисање при рестарту: "
LangString LSTR_15 3098 "Грешка при креирању пречице: "
LangString LSTR_16 3098 "Грешка при креирању: "
LangString LSTR_17 3098 "Грешка при отпакивању података! Оштећен инсталациони програм?"
LangString LSTR_19 3098 "Извршавање у окружењу: "
LangString LSTR_20 3098 "Извршавање: "
LangString LSTR_21 3098 "Отпакивање: "
LangString LSTR_22 3098 "Отпакивање: грешка при упису у фајл "
LangString LSTR_23 3098 "Оштећен инсталациони програм: неисправна команда "
LangString LSTR_24 3098 "Нема OLE подршке за: "
LangString LSTR_25 3098 "Излазни фолдер: "
LangString LSTR_26 3098 "Брисање фолдера: "
LangString LSTR_29 3098 "Прескочен: "
LangString LSTR_30 3098 "Копирај детаље у клипборд"
LangString LSTR_32 3098 B
LangString LSTR_33 3098 " k"
LangString LSTR_34 3098 " M"
LangString LSTR_35 3098 " G"
LangString LSTR_36 3098 Препоручено
LangString LSTR_37 3098 Минимална
LangString LSTR_38 3098 Пуна
LangString LSTR_39 3098 "Грешка при отварању фајла за писање: $\r$\n$\t$\"$0$\"$\r$\nПритисните дугме „Одустани“ за прекид инсталације,$\r$\n„Понови“ за поновни покушај писања у фајл, или$\r$\n„Игнориши“ за прескакање овог фајла."
LangString LSTR_40 3098 0
LangString LSTR_41 3098 "Добродошли у водич за инсталацију програма $(LSTR_132)"
LangString LSTR_42 3098 "MS Shell Dlg"
LangString LSTR_43 3098 "Бићете вођени кроз процес инсталације програма $(LSTR_132).$\r$\n$\r$\nПрепоручљиво је да искључите све друге програме пре почетка инсталације. Ово може омогућити ажурирање системских фајлова без потребе за поновним покретањем рачунара.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 3098 "Сада сте свесни својих права. Кликните на „У реду“ да бисте наставили."
LangString LSTR_45 3098 "Напред >"
LangString LSTR_46 3098 "Договор о праву коришћења"
LangString LSTR_47 3098 "Пажљиво прочитајте договор о праву коришћења пре инсталације програма $(LSTR_132)."
LangString LSTR_48 3098 "Притисните Page Down да бисте видели остатак договора."
LangString LSTR_49 3098 "Избор компоненти за инсталацију"
LangString LSTR_50 3098 "Изаберите компоненте за инсталацију. Инсталирају се само означене компоненте."
LangString LSTR_51 3098 Опис
LangString LSTR_52 3098 "Пређите курсором миша преко имена компоненте да бисте видели њен опис."
LangString LSTR_53 3098 "Избор фолдера за инсталацију"
LangString LSTR_54 3098 "Изаберите фолдер у који ћете инсталирати програм $(LSTR_132)."
LangString LSTR_55 3098 Инсталација
LangString LSTR_56 3098 "Сачекајте док се програм $(LSTR_132) инсталира."
LangString LSTR_57 3098 "Завршена инсталација"
LangString LSTR_58 3098 "Инсталација је успешно завршена."
LangString LSTR_59 3098 "Прекинута инсталација"
LangString LSTR_60 3098 "Инсталација је прекинута и није успешно завршена."
LangString LSTR_61 3098 Крај
LangString LSTR_62 3098 "Завршена инсталација програма $(LSTR_132)"
LangString LSTR_63 3098 "Програм $(LSTR_132) је инсталиран на рачунар.$\r$\n$\r$\nПритисните дугме „Крај“ за затварање овог прозора."
LangString LSTR_64 3098 "Покрени програм $(LSTR_132)"
LangString LSTR_65 3098 "Посети сајт VLC Media Player-а"
LangString LSTR_66 3098 8
LangString LSTR_67 3098 "Сигурно желите да прекинете инсталацију програма $(LSTR_2)?"
LangString LSTR_68 3098 Репродукуј
LangString LSTR_69 3098 "Изгледа да је VLC покренут. Сада ће бити затворен."
LangString LSTR_70 3098 "Инсталациони програм не може да затвори VLC. Учините то ручно."
LangString LSTR_71 3098 "Инсталација је прекинута!"
LangString LSTR_72 3098 "Медијски плејер (обавезно)"
LangString LSTR_73 3098 "Проверавам процесе…"
LangString LSTR_74 3098 "Репродукуј помоћу VLC Media Player-а"
LangString LSTR_75 3098 "Пречица у менију „Старт“"
LangString LSTR_76 3098 "Пречица на радној површини"
LangString LSTR_77 3098 "Веб додаци"
LangString LSTR_78 3098 "ActiveX додатак"
LangString LSTR_79 3098 "Репродукција дискова"
LangString LSTR_80 3098 "Репродукуј DVD филм"
LangString LSTR_81 3098 "Репродукуј аудио CD"
LangString LSTR_82 3098 "Репродукуј VCD филм"
LangString LSTR_83 3098 "Репродукуј SVCD филм"
LangString LSTR_84 3098 "Репродукуј аудио DVD"
LangString LSTR_85 3098 "Репродукуј видео-записе"
LangString LSTR_86 3098 "Репродукуј аудио-записе"
LangString LSTR_87 3098 "Репродукуј Blu-ray"
LangString LSTR_88 3098 "Повезаности датотека"
LangString LSTR_89 3098 Аудио-записи
LangString LSTR_90 3098 Видео-записи
LangString LSTR_91 3098 Друго
LangString LSTR_92 3098 "Контекстуални менији"
LangString LSTR_93 3098 "Додај у плејлисту VLC Media Player-а"
LangString LSTR_94 3098 "Обриши поставке и кеш"
LangString LSTR_95 3098 "Сâм медијски плејер"
LangString LSTR_96 3098 "Додаје иконе за брз приступ у мени „Старт“"
LangString LSTR_97 3098 "Додаје икону за брз приступ на радну површину"
LangString LSTR_98 3098 "ActiveX додатак"
LangString LSTR_99 3098 "Регистровање DVD и CD репродукције"
LangString LSTR_100 3098 "Поставља VLC Media Player као подразумевани програм за наведени тип датотека"
LangString LSTR_101 3098 "Додаје ставке у контекстуални мени („Репродукуј помоћу VLC-а“ и „Додај у плејлисту VLC-а“)"
LangString LSTR_102 3098 "Брише датотеке са поставкама и кешом VLC Media Player-а које су остале од претходних инсталација"
LangString LSTR_103 3098 "Већ је инсталиран"
LangString LSTR_104 3098 "Изаберите како желите да инсталирате VLC."
LangString LSTR_105 3098 "На вашем систему је инсталирана старија верзија VLC-а. Изаберите жељену радњу и кликните на „Следеће“ да бисте наставили."
LangString LSTR_106 3098 "Надогради VLC помоћу претходних поставки (препоручује се)"
LangString LSTR_107 3098 "Промени поставке (напредно)"
LangString LSTR_108 3098 "Инсталирана је новија верзија VLC-а. Не препоручујемо вам да се враћате на старију верзију. Изаберите жељену радњу и кликните на „Следеће“ да бисте наставили."
LangString LSTR_109 3098 "Уназади VLC помоћу претходних поставки (препоручује се)"
LangString LSTR_110 3098 "Изаберите опцију одржавања коју желите да извршите."
LangString LSTR_111 3098 "VLC 3.0.24 је већ инсталиран. Изаберите жељену радњу и кликните на „Следеће“ да бисте наставили."
LangString LSTR_112 3098 "Додај, уклони или поново инсталирај компоненте"
LangString LSTR_113 3098 "Деинсталирај VLC"
LangString LSTR_114 3098 Прилагођавање
LangString LSTR_115 3098 Одустани
LangString LSTR_116 3098 "< Назад"
LangString LSTR_117 3098 "Притисните дугме „Напред“ за наставак."
LangString LSTR_118 3098 "Изаберите компоненте за инсталацију. Инсталирају се само означене компоненте. $_CLICK"
LangString LSTR_119 3098 "Изаберите тип инсталације:"
LangString LSTR_120 3098 "Или, изаберите опционе компоненте које желите да инсталирате: "
LangString LSTR_121 3098 "Изаберите компоненте за инсталацију: "
LangString LSTR_122 3098 "Програм $(LSTR_132) ће бити инсталиран у наведени фолдер. За инсталацију у други фолдер притисните дугме „Избор...“ и изаберите фолдер. $_CLICK"
LangString LSTR_123 3098 Фолдер
LangString LSTR_124 3098 Избор...
LangString LSTR_125 3098 "Изаберите фолдер у који ћете инсталирати програм $(LSTR_132):"
LangString LSTR_126 3098 Инсталирај
LangString LSTR_127 3098 "Притисните дугме „Инсталирај“ за почетак инсталације."
LangString LSTR_128 3098 Детаљи
LangString LSTR_129 3098 Завршено
LangString LSTR_130 3098 " "
LangString LSTR_131 3098 Затвори
LangString LSTR_132 3098 "VLC media player"


; LANG: 1051
LangString LSTR_0 1051 "VideoLAN VLC media player"
LangString LSTR_1 1051 "Inštalácia programu $(LSTR_2)"
LangString LSTR_2 1051 "VLC media player"
LangString LSTR_3 1051 "Voľné miesto na disku: "
LangString LSTR_4 1051 "Potrebné miesto na disku: "
LangString LSTR_5 1051 "Nemožno zapísať súbor: "
LangString LSTR_8 1051 "Nemožno nájsť symbol: "
LangString LSTR_9 1051 "Nemožno načítať: "
LangString LSTR_10 1051 "Vytvorený priečinok: "
LangString LSTR_11 1051 "Vytvorený odkaz: "
LangString LSTR_12 1051 "Program pre odinštalovanie: "
LangString LSTR_13 1051 "Vymazaný súbor: "
LangString LSTR_14 1051 "Vymazať po reštartovaní systému: "
LangString LSTR_15 1051 "Chyba pri vytváraní odkazu: "
LangString LSTR_16 1051 "Chyba pri vytváraní: "
LangString LSTR_17 1051 "Chyba pri dekomprimovaní dát! Inštalátor je pravdepodobne poškodený..."
LangString LSTR_19 1051 "Vykonať príkaz: "
LangString LSTR_20 1051 "Spustiť: "
LangString LSTR_21 1051 "Extrahuje sa: "
LangString LSTR_22 1051 "Chyba pri zápise do súboru "
LangString LSTR_23 1051 "Inštalátor je pravdepodobne poškodený, pretože obsahuje neplatný operačný kód."
LangString LSTR_24 1051 "Žiadny zápis OLE pre: "
LangString LSTR_25 1051 "Výstupný priečinok: "
LangString LSTR_26 1051 "Odstrániť priečinok: "
LangString LSTR_29 1051 "Vynechané: "
LangString LSTR_30 1051 "Skopírovať podrobnosti do schránky"
LangString LSTR_32 1051 B
LangString LSTR_33 1051 " K"
LangString LSTR_34 1051 " M"
LangString LSTR_35 1051 " G"
LangString LSTR_36 1051 Odporúčané
LangString LSTR_37 1051 Minimum
LangString LSTR_38 1051 Úplné
LangString LSTR_39 1051 "Chyba pri otváraní súboru na zápis: $\r$\n$\r$\n$0$\r$\n$\r$\n. Ak chcete inštaláciu ukončiť, kliknite na tlačidlo Ukončiť,$\r\ ak chcete zápis súboru zopakovať, kliknite na tlačidlo Opakovať alebo kliknite na tlačidlo $\r$\nIgnorovať, ak chcete inštaláciu tohto súboru vynechať."
LangString LSTR_40 1051 0
LangString LSTR_41 1051 "Vitajte v sprievodcovi inštaláciou programu $(LSTR_132)"
LangString LSTR_42 1051 "MS Shell Dlg"
LangString LSTR_43 1051 "Tento sprievodca vás prevedie inštaláciou $(LSTR_132).$\r$\n$\r$\nPred začiatkom inštalácie sa odporúča ukončiť všetky ostatné programy. Tým umožníte aktualizovanie systémových súborov bez potreby reštartovania vášho počítača.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1051 "Teraz ste informovaní o svojich právach. Pre pokračovanie kliknite na tlačidlo Ďalej."
LangString LSTR_45 1051 "Ď&alej >"
LangString LSTR_46 1051 "Licenčná zmluva"
LangString LSTR_47 1051 "Pred inštaláciou $(LSTR_132) si prosím preštudujte licenčné podmienky."
LangString LSTR_48 1051 "Stlačením klávesu Page Down posuniete text licenčnej zmluvy."
LangString LSTR_49 1051 "Voľba súčastí programu"
LangString LSTR_50 1051 "Zvoľte si tie súčasti programu $(LSTR_132), ktoré chcete nainštalovať."
LangString LSTR_51 1051 Popis
LangString LSTR_52 1051 "Pri prejdení kurzorom myši nad názvom súčasti sa zobrazí jej popis."
LangString LSTR_53 1051 "Voľba umiestnenia programu"
LangString LSTR_54 1051 "Vyberte si priečinok, do ktorého chcete nainštalovať program $(LSTR_132)."
LangString LSTR_55 1051 Inštalácia
LangString LSTR_56 1051 "Počkajte prosím, kým prebehne inštalácia programu $(LSTR_132)."
LangString LSTR_57 1051 "Ukončenie inštalácie"
LangString LSTR_58 1051 "Inštalácia bola dokončená úspešne."
LangString LSTR_59 1051 "Prerušenie inštalácie"
LangString LSTR_60 1051 "Inštaláciu sa nepodarilo dokončiť."
LangString LSTR_61 1051 &Dokončiť
LangString LSTR_62 1051 "Dokončenie inštalácie programu $(LSTR_132)"
LangString LSTR_63 1051 "Program $(LSTR_132) bol nainštalovaný do vášho počítača.$\r$\nKliknite na tlačidlo Dokončiť a tento sprievodca sa ukončí."
LangString LSTR_64 1051 "&Spustiť program $(LSTR_132)"
LangString LSTR_65 1051 "Navštíviť webovú stránku programu VideoLAN VLC media player"
LangString LSTR_66 1051 8
LangString LSTR_67 1051 "Naozaj chcete ukončiť inštaláciu programu $(LSTR_2)?"
LangString LSTR_68 1051 Prehrať
LangString LSTR_69 1051 "Zdá sa, že program VLC je práve spustený a preto bude ukončený."
LangString LSTR_70 1051 "Tento inštalátor nemohol ukončiť program VLC, prosím urobte to manuálne."
LangString LSTR_71 1051 "Inštalácia bola prerušená!"
LangString LSTR_72 1051 "Media Player (nutná súčasť)"
LangString LSTR_73 1051 "Kontrolujú sa procesy..."
LangString LSTR_74 1051 "Prehrať v programe VLC media player"
LangString LSTR_75 1051 "Odkaz v menu Štart"
LangString LSTR_76 1051 "Odkaz na pracovnej ploche"
LangString LSTR_77 1051 "Prídavné moduly pre web"
LangString LSTR_78 1051 "Prídavný modul pre ActiveX"
LangString LSTR_79 1051 "Prehrávanie diskov"
LangString LSTR_80 1051 "Prehrať film na DVD"
LangString LSTR_81 1051 "Prehrať zvukové CD"
LangString LSTR_82 1051 "Prehrať film na VCD"
LangString LSTR_83 1051 "Prehrať film na SVCD"
LangString LSTR_84 1051 "Prehrať zvukové DVD"
LangString LSTR_85 1051 "Prehrať súbory s videom"
LangString LSTR_86 1051 "Prehrať zvukové súbory"
LangString LSTR_87 1051 "Prehrať Blu-ray"
LangString LSTR_88 1051 "Asociácie s typmi súborov"
LangString LSTR_89 1051 "Zvukové súbory"
LangString LSTR_90 1051 "Súbory s videom"
LangString LSTR_91 1051 Ostatné
LangString LSTR_92 1051 "Kontextové menu"
LangString LSTR_93 1051 "Pridať do playlistu VLC media player"
LangString LSTR_94 1051 "Vymazať nastavenia a vyrovnávaciu pamäť"
LangString LSTR_95 1051 "Samotný Media Player"
LangString LSTR_96 1051 "Pridá ikony do menu Štart, pre ľahší prístup"
LangString LSTR_97 1051 "Pridá ikonu na pracovnú plochu, pre ľahký prístup"
LangString LSTR_98 1051 "Prídavný modul VLC pre ActiveX"
LangString LSTR_99 1051 "Registrácia programu ako prehrávača DVD a CD"
LangString LSTR_100 1051 "Nastaví prehrávač VLC media player ako predvolenú aplikáciu pre špecifikovaný typ súboru"
LangString LSTR_101 1051 "Pridá položky do kontextového menu ('Prehrať v programe VLC' a 'Pridať do playlistu programu VLC')"
LangString LSTR_102 1051 "Vymaže nastavenia VLC media player a súbory vyrovnávacej pamäte minulých inštalácií"
LangString LSTR_103 1051 "Už nainštalované"
LangString LSTR_104 1051 "Vyberte si, ako chcete nainštalovať VLC."
LangString LSTR_105 1051 "Vo vašom počítači je nainštalovaná staršia verzia programu VLC. Vyberte si úkon, ktorý chcete vykonať a pokračujte kliknutím na tlačidlo Ďalej."
LangString LSTR_106 1051 "Aktualizovať VLC s použitím predchádzajúcich nastavení (odporúča sa)"
LangString LSTR_107 1051 "Zmeniť nastavenia (pokročilé)"
LangString LSTR_108 1051 "Už je nainštalovaná novšia verzia programu VLC! Neodporúča sa návrat k staršej verzii programu. Vyberte si úkon, ktorý chcete vykonať a pokračujte kliknutím na tlačidlo Ďalej."
LangString LSTR_109 1051 "Prejsť na staršiu verziu VLC, s použitím predchádzajúcich nastavení (odporúča sa)"
LangString LSTR_110 1051 "Vyberte si možnosť pre údržbu."
LangString LSTR_111 1051 "Už je nainštalovaný program VLC 3.0.24. Vyberte si úkon, ktorý chcete urobiť a pokračujte kliknutím na tlačidlo Ďalej."
LangString LSTR_112 1051 "Pridať/Odstrániť/Preinštalovať súčasti"
LangString LSTR_113 1051 "Odinštalovať VLC"
LangString LSTR_114 1051 Voliteľná
LangString LSTR_115 1051 Zrušiť
LangString LSTR_116 1051 "< &Späť"
LangString LSTR_117 1051 "V inštalácii pokračujte kliknutím na tlačidlo Ďalej."
LangString LSTR_118 1051 "Označte súčasti programu, ktoré chcete nainštalovať a odznačte tie, ktoré nainštalovať nechcete. $_CLICK"
LangString LSTR_119 1051 "Vyberte si typ inštalácie:"
LangString LSTR_120 1051 "Alebo označte voliteľné doplnky, ktoré chcete nainštalovať:"
LangString LSTR_121 1051 "Vyberte si tie súčasti programu, ktoré chcete nainštalovať:"
LangString LSTR_122 1051 "$(LSTR_132) bude nainštalovaný do nasledujúceho priečinka. Inštalovať do iného priečinka môžete po kliknutí na tlačidlo Prehľadávať a vybraní iného priečinka. $_CLICK"
LangString LSTR_123 1051 "Cieľový priečinok"
LangString LSTR_124 1051 &Prehľadávať...
LangString LSTR_125 1051 "Zvoľte priečinok, do ktorého sa nainštaluje program $(LSTR_132):"
LangString LSTR_126 1051 &Nainštalovať
LangString LSTR_127 1051 "Pre spustenie inštalácie kliknite na tlačidlo Nainštalovať."
LangString LSTR_128 1051 &Podrobnosti
LangString LSTR_129 1051 Hotovo
LangString LSTR_130 1051 " "
LangString LSTR_131 1051 &Zatvoriť
LangString LSTR_132 1051 "VLC media player"


; LANG: 1048
LangString LSTR_0 1048 "VideoLAN VLC media player"
LangString LSTR_1 1048 "Instalare $(LSTR_2)"
LangString LSTR_2 1048 "VLC media player"
LangString LSTR_3 1048 "Spaţiu disponibil: "
LangString LSTR_4 1048 "Spaţiu necesar: "
LangString LSTR_5 1048 "Nu am putut scrie: "
LangString LSTR_8 1048 "Simbolul nu a fost găsit: "
LangString LSTR_9 1048 "Nu am putut încărca: "
LangString LSTR_10 1048 "Creare director: "
LangString LSTR_11 1048 "Creare comandă rapidă: "
LangString LSTR_12 1048 "S-a creat aplicaţia de dezinstalare: "
LangString LSTR_13 1048 "Ştergere fişier: "
LangString LSTR_14 1048 "Ştergere la repornire: "
LangString LSTR_15 1048 "Eroare la crearea comenzii rapide: "
LangString LSTR_16 1048 "Eroare la creare: "
LangString LSTR_17 1048 "Eroare la dezarhivarea datelor! Aplicatia de instalare este defectă?"
LangString LSTR_19 1048 "ExecShell: "
LangString LSTR_20 1048 "Executare: "
LangString LSTR_21 1048 "Extragere: "
LangString LSTR_22 1048 "Extragere: eroare la scriere în fişier "
LangString LSTR_23 1048 "Aplicaţie de instalare defectă: opcode incorect"
LangString LSTR_24 1048 "Nu există OLE pentru: "
LangString LSTR_25 1048 "Directorul destinaţie: "
LangString LSTR_26 1048 "Ştergere destinaţie: "
LangString LSTR_29 1048 "Sărite: "
LangString LSTR_30 1048 "Copiere detalii în clipboard"
LangString LSTR_32 1048 O
LangString LSTR_33 1048 " K"
LangString LSTR_34 1048 " M"
LangString LSTR_35 1048 " G"
LangString LSTR_36 1048 Recomandat
LangString LSTR_37 1048 Minim
LangString LSTR_38 1048 Întreg
LangString LSTR_39 1048 "Eroare la scrierea fişierului: $\r$\n$\t$\"$0$\"$\r$\nApăsaţi Abort pentru oprirea instalării,$\r$\nRetry pentru a mai încerca o dată scrierea fişierului, $\r$\nIgnore pentru a trece peste acest fişier."
LangString LSTR_40 1048 0
LangString LSTR_41 1048 "Bine aţi venit la instalarea $(LSTR_132)"
LangString LSTR_42 1048 "MS Shell Dlg"
LangString LSTR_43 1048 "Această aplicaţie va instala $(LSTR_132).$\r$\n$\r$\nEste recomandat să închideţi toate aplicaţiile înainte de începerea procesului de instalare. Acest lucru vă poate asigura un proces de instalare fără erori sau situaţii neprevăzute.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1048 "Acum sunteți conștienți de drepturile dumneavoastră. Faceți clic pe Următorul pentru a continua."
LangString LSTR_45 1048 "Îna&inte >"
LangString LSTR_46 1048 "Contract de licenţă"
LangString LSTR_47 1048 "Citiţi cu atenţie termenii contractului de licenţă înainte de a instala $(LSTR_132)."
LangString LSTR_48 1048 "Apăsaţi Page Down pentru a vizualiza restul contractului de licenţă."
LangString LSTR_49 1048 "Selectare componente"
LangString LSTR_50 1048 "Selectaţi componentele $(LSTR_132) pe care doriţi să le instalaţi."
LangString LSTR_51 1048 Descriere
LangString LSTR_52 1048 "Aşezaţi mouse-ul deasupra fiecărei componente pentru a vizualiza descrierea acesteia."
LangString LSTR_53 1048 "Selectare director destinaţie"
LangString LSTR_54 1048 "Selectaţi directorul în care doriţi să instalaţi $(LSTR_132)."
LangString LSTR_55 1048 "În curs de instalare"
LangString LSTR_56 1048 "Vă rugăm să aşteptaţi, $(LSTR_132) se instalează."
LangString LSTR_57 1048 "Instalare terminată"
LangString LSTR_58 1048 "Instalarea s-a terminat cu succes."
LangString LSTR_59 1048 "Instalare anulată"
LangString LSTR_60 1048 "Instalarea a fost anulată de utilizator."
LangString LSTR_61 1048 &Terminare
LangString LSTR_62 1048 "Terminare instalare $(LSTR_132)"
LangString LSTR_63 1048 "$(LSTR_132) a fost instalat.$\r$\n$\r$\nApăsaţi Terminare pentru a încheia instalarea."
LangString LSTR_64 1048 "Executare $(LSTR_132)"
LangString LSTR_65 1048 "Vizitați website-ul VideoLAN VLC media player"
LangString LSTR_66 1048 8
LangString LSTR_67 1048 "Sunteţi sigur(ă) că doriţi să anulaţi instalarea $(LSTR_2)?"
LangString LSTR_68 1048 Redă
LangString LSTR_69 1048 "VLC pare a fi în difuzate și va fi închis."
LangString LSTR_70 1048 "Acest program de instalare nu a putut să închidă VLC-ul, vă rugăm să o faceți manual."
LangString LSTR_71 1048 "Instalare abandonată!"
LangString LSTR_72 1048 "Media Player (necesar)"
LangString LSTR_73 1048 "Se verifică procesele..."
LangString LSTR_74 1048 "Redare cu VLC media player"
LangString LSTR_75 1048 "Scurtătură meniu de start"
LangString LSTR_76 1048 "Scurtătură desktop"
LangString LSTR_77 1048 "Pluginuri web"
LangString LSTR_78 1048 "Plugin ActiveX"
LangString LSTR_79 1048 "Redare discuri"
LangString LSTR_80 1048 "Redă film DVD"
LangString LSTR_81 1048 "Redă CD audio"
LangString LSTR_82 1048 "Redă film VCD"
LangString LSTR_83 1048 "Redă film SVCD"
LangString LSTR_84 1048 "Redă DVD audio"
LangString LSTR_85 1048 "Redă fișiere video"
LangString LSTR_86 1048 "Redă fișiere audio"
LangString LSTR_87 1048 "Redare Blu-ray"
LangString LSTR_88 1048 "Asocieri cu tipuri de fișiere"
LangString LSTR_89 1048 "Fișiere Audio"
LangString LSTR_90 1048 "Fișiere Video"
LangString LSTR_91 1048 Altele
LangString LSTR_92 1048 "Contextul meniuri"
LangString LSTR_93 1048 "Adaugați la lista de redare VLC media player"
LangString LSTR_94 1048 "Ștergeți preferințele și cache-urile"
LangString LSTR_95 1048 "Media player în sine"
LangString LSTR_96 1048 "Adaugă pictograme în meniul Start pentru acces rapid"
LangString LSTR_97 1048 "Adaugă pictogramă pe desktop pentru un acces rapid"
LangString LSTR_98 1048 "Plugin-ul ActiveX VLC"
LangString LSTR_99 1048 "Înregistrare DVD-uri și CD-uri de redare"
LangString LSTR_100 1048 "Setați VLC media player ca aplicația implicită pentru tipul de fișier specificat"
LangString LSTR_101 1048 "Adăuga elemente de meniu ($\"Redare cu VLC$\" și $\"Adăugare la Playlist-ul VLC$\")"
LangString LSTR_102 1048 "Ștergeți VLC Media Player și preferințele fisierelor cache rămase de la instalațiile anterioare"
LangString LSTR_103 1048 "Deja instalat"
LangString LSTR_104 1048 "Alegeți modul în care doriți să instalați VLC."
LangString LSTR_105 1048 "O versiune mai veche a VLC este instalat pe sistem. Selectați operația pe care doriți să o efectuați și faceți clic pe Următorul pentru a continua."
LangString LSTR_106 1048 "Actualizare VLC folosind setările anterioare (recomandat)"
LangString LSTR_107 1048 "Modificare setări (avansat)"
LangString LSTR_108 1048 "O versiune mai nouă a VLC este deja instalată! Nu este recomandat să reveniți la o versiune mai veche. Selectați operația pe care doriți să o efectuați și faceți clic pe Următorul pentru a continua."
LangString LSTR_109 1048 "Revenire la versiune anterioare VLC folosind setările anterioare (recomandat)"
LangString LSTR_110 1048 "Alegeți efectuarea opțiunii de întreținere"
LangString LSTR_111 1048 "VLC $$ {VERSION} este deja instalat. Selectați operația pe care doriți să o efectuați și faceți clic pe Următorul pentru a continua."
LangString LSTR_112 1048 "Adaugă/Elimină/Reinstalează componente"
LangString LSTR_113 1048 "Dezinstalează VLC"
LangString LSTR_114 1048 Personalizată
LangString LSTR_115 1048 &Renunţă
LangString LSTR_116 1048 "< Îna&poi"
LangString LSTR_117 1048 "Apăsaţi Înainte pentru a continua."
LangString LSTR_118 1048 "Alegeţi componentele pe care doriţi să le instalaţi. $_CLICK"
LangString LSTR_119 1048 "Alegeţi tipul instalării:"
LangString LSTR_120 1048 "Sau, alegeţi componentele opţionale pe care doriţi să le instalaţi:"
LangString LSTR_121 1048 "Alegeţi componentele ce urmează a fi instalate:"
LangString LSTR_122 1048 "$(LSTR_132) se va instala în următorul director. Pentru a alege altă destinaţie, apăsaţi Alege şi alegeţi alt director. $_CLICK"
LangString LSTR_123 1048 "Director destinaţie"
LangString LSTR_124 1048 &Alege...
LangString LSTR_125 1048 "Alegeţi directorul în care doriţi să instalaţi $(LSTR_132):"
LangString LSTR_126 1048 &Instalează
LangString LSTR_127 1048 "Apăsaţi Instalează pentru a începe instalarea."
LangString LSTR_128 1048 "Arată &detalii"
LangString LSTR_129 1048 Terminat
LangString LSTR_130 1048 " "
LangString LSTR_131 1048 În&chide
LangString LSTR_132 1048 "VLC media player"


; LANG: 1045
LangString LSTR_0 1045 "VideoLAN VLC media player"
LangString LSTR_1 1045 "Instalator $(LSTR_2)"
LangString LSTR_2 1045 "VLC media player"
LangString LSTR_3 1045 "Dostępne miejsce: "
LangString LSTR_4 1045 "Wymagane miejsce: "
LangString LSTR_5 1045 "Nie można zapisać: "
LangString LSTR_8 1045 "Nie można odnaleźć symbolu: "
LangString LSTR_9 1045 "Nie można wczytać: "
LangString LSTR_10 1045 "Utwórz folder: "
LangString LSTR_11 1045 "Utwórz skrót: "
LangString LSTR_12 1045 "Utworzono deinstalator: "
LangString LSTR_13 1045 "Usuń plik: "
LangString LSTR_14 1045 "Usuń przy ponownym uruchomieniu: "
LangString LSTR_15 1045 "Błąd tworzenia skrótu: "
LangString LSTR_16 1045 "Błąd tworzenia: "
LangString LSTR_17 1045 "Błąd wyodrębniania danych! Uszkodzony instalator?"
LangString LSTR_19 1045 "ExecShell: "
LangString LSTR_20 1045 "Uruchom: "
LangString LSTR_21 1045 "Wyodrębnij: "
LangString LSTR_22 1045 "Wyodrębnij: błąd zapisu do pliku "
LangString LSTR_23 1045 "Instalator uszkodzony: nieprawidłowy kod operacji"
LangString LSTR_24 1045 "Brak OLE dla: "
LangString LSTR_25 1045 "Folder wyjściowy: "
LangString LSTR_26 1045 "Usuń folder: "
LangString LSTR_29 1045 "Pominięte: "
LangString LSTR_30 1045 "Kopiuj szczegóły do schowka"
LangString LSTR_32 1045 B
LangString LSTR_33 1045 " K"
LangString LSTR_34 1045 " M"
LangString LSTR_35 1045 " G"
LangString LSTR_36 1045 Zalecana
LangString LSTR_37 1045 Minimalna
LangString LSTR_38 1045 Pełna
LangString LSTR_39 1045 "Błąd otwarcia pliku do zapisu: $\r$\n$\r$\n$0$\r$\n$\r$\nWybierz 'Anuluj', aby przerwać instalację,$\r$\n'Ponów', aby ponowić zapis do pliku lub$\r$\n'Ignoruj', aby pominąć ten plik."
LangString LSTR_40 1045 0
LangString LSTR_41 1045 "Witamy w kreatorze instalacji $(LSTR_132)"
LangString LSTR_42 1045 "MS Shell Dlg"
LangString LSTR_43 1045 "Kreator ten pomoże Ci zainstalować $(LSTR_132).$\r$\n$\r$\nZalecane jest zamknięcie wszystkich uruchomionych programów przed rozpoczęciem instalacji. Pozwoli to na uaktualnienie niezbędnych plików systemowych bez konieczności ponownego uruchamiania komputera.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1045 "Jesteś teraz świadomy swoich praw. Kliknij przycisk Dalej, aby kontynuować."
LangString LSTR_45 1045 "&Dalej >"
LangString LSTR_46 1045 "Umowa licencyjna"
LangString LSTR_47 1045 "Przed instalacją $(LSTR_132) zapoznaj się z warunkami licencji."
LangString LSTR_48 1045 "Naciśnij klawisz Page Down, aby zobaczyć dalszą część umowy."
LangString LSTR_49 1045 "Wybierz komponenty"
LangString LSTR_50 1045 "Wybierz komponenty $(LSTR_132), które chcesz zainstalować."
LangString LSTR_51 1045 Opis
LangString LSTR_52 1045 "Przesuń kursor myszy nad komponent, aby zobaczyć jego opis."
LangString LSTR_53 1045 "Wybierz lokalizację dla instalacji"
LangString LSTR_54 1045 "Wybierz folder, w którym chcesz zainstalować $(LSTR_132)."
LangString LSTR_55 1045 Instalacja
LangString LSTR_56 1045 "Proszę czekać, trwa instalacja $(LSTR_132)."
LangString LSTR_57 1045 "Zakończono instalację"
LangString LSTR_58 1045 "Instalacja zakończona pomyślnie."
LangString LSTR_59 1045 "Instalacja przerwana"
LangString LSTR_60 1045 "Instalacja nie została zakończona pomyślnie."
LangString LSTR_61 1045 &Zakończ
LangString LSTR_62 1045 "Kończenie pracy kreatora instalacji $(LSTR_132)"
LangString LSTR_63 1045 "$(LSTR_132) został pomyślnie zainstalowany na Twoim komputerze.$\r$\n$\r$\nKliknij przycisk 'Zakończ', aby zakończyć działanie instalatora."
LangString LSTR_64 1045 "&Uruchom $(LSTR_132)"
LangString LSTR_65 1045 "Odwiedź witrynę VideoLAN VLC media player"
LangString LSTR_66 1045 8
LangString LSTR_67 1045 "Czy na pewno chcesz zakończyć działanie instalatora $(LSTR_2)?"
LangString LSTR_68 1045 Odtwórz
LangString LSTR_69 1045 "VLC jest uruchomiony i zostanie teraz zamknięty."
LangString LSTR_70 1045 "Instalator nie może zamknąć VLC, musisz zrobić to ręcznie."
LangString LSTR_71 1045 "Instalacja przerwana!"
LangString LSTR_72 1045 "Media Player (wymagany)"
LangString LSTR_73 1045 "Procesy sprawdzania..."
LangString LSTR_74 1045 "Odtwórz w VLC media player"
LangString LSTR_75 1045 "Skrót w Menu Start"
LangString LSTR_76 1045 "Ikona na pulpicie"
LangString LSTR_77 1045 "Wtyczki internetowe"
LangString LSTR_78 1045 "Wtyczka ActiveX"
LangString LSTR_79 1045 "Odtwarzanie płyt"
LangString LSTR_80 1045 "Odtwarzaj film na DVD"
LangString LSTR_81 1045 "Odtwarzaj CD-Audio"
LangString LSTR_82 1045 "Odtwarzaj film na VCD"
LangString LSTR_83 1045 "Odtwarzaj film na SVCD"
LangString LSTR_84 1045 "Odtwarzaj DVD-Audio"
LangString LSTR_85 1045 "Odtwarzaj pliki wideo"
LangString LSTR_86 1045 "Odtwarzaj pliki audio"
LangString LSTR_87 1045 "Odtwarzaj Blu-ray"
LangString LSTR_88 1045 "Skojarzenia typu pliku"
LangString LSTR_89 1045 "Pliki audio"
LangString LSTR_90 1045 "Pliki wideo"
LangString LSTR_91 1045 Inne
LangString LSTR_92 1045 "Menu kontekstowe"
LangString LSTR_93 1045 "Dodaj do listy odtwarzania VLC media player"
LangString LSTR_94 1045 "Wyczyścić pamięć podręczną i usunąć ustawienia"
LangString LSTR_95 1045 "Pliki samego odtwarzacza"
LangString LSTR_96 1045 "Dodaje skrót łatwego dostępu w Twoim Menu Start"
LangString LSTR_97 1045 "Dodaje ikonę łatwego dostępu na Twoim pulpicie"
LangString LSTR_98 1045 "Wtyczka VLC ActiveX"
LangString LSTR_99 1045 "Rejestracja VLC do odtwarzania płyt DVD i CD"
LangString LSTR_100 1045 "Ustawia VLC media player jako domyślną aplikację dla poszczególnego typu pliku"
LangString LSTR_101 1045 "Dodaje nowe pozycje do menu kontekstowego ('Odtwórz w VLC' i 'Dodaj do listy odtwarzania VLC')"
LangString LSTR_102 1045 "Usuwa ustawienia odtwarzacza multimedialnego VLC i pamięci podręcznej poprzednich instalacji"
LangString LSTR_103 1045 "Już zainstalowany"
LangString LSTR_104 1045 "Wybierz, w jaki sposób chcesz zainstalować VLC."
LangString LSTR_105 1045 "Starsza wersja VLC jest zainstalowana na Twoim systemie. Wybierz operację do wykonania, a następnie kliknij przycisk Dalej, aby kontynuować."
LangString LSTR_106 1045 "Uaktualnij VLC, używając poprzednich ustawień (zalecane)"
LangString LSTR_107 1045 "Zmień ustawienia (zaawansowane)"
LangString LSTR_108 1045 "Nowsza wersja VLC jest już zainstalowana! Nie zaleca się, instalować i korzystać ze starszej wersji. Wybierz operację do wykonania, a następnie kliknij przycisk Dalej, aby kontynuować."
LangString LSTR_109 1045 "Zainstaluj starszą wersję VLC, używając poprzednich ustawień (zalecane)"
LangString LSTR_110 1045 "Wybierz opcję konserwacji do wykonania."
LangString LSTR_111 1045 "VLC 3.0.24 jest już zainstalowany. Wybierz operację do wykonania, a następnie kliknij przycisk Dalej, aby kontynuować."
LangString LSTR_112 1045 "Dodaj/Usuń/Zainstaluj komponenty"
LangString LSTR_113 1045 "Odinstaluj VLC"
LangString LSTR_114 1045 Użytkownika
LangString LSTR_115 1045 Anuluj
LangString LSTR_116 1045 "< &Wstecz"
LangString LSTR_117 1045 "Kliknij przycisk 'Dalej', aby kontynuować."
LangString LSTR_118 1045 "Zaznacz komponenty, które chcesz zainstalować i odznacz te, których nie chcesz instalować. $_CLICK"
LangString LSTR_119 1045 "Wybierz typ instalacji:"
LangString LSTR_120 1045 "Albo wybierz opcjonalne komponenty, które chcesz zainstalować:"
LangString LSTR_121 1045 "Wybierz komponenty do zainstalowania:"
LangString LSTR_122 1045 "Instalator zainstaluje $(LSTR_132) w podanym poniżej folderze docelowym (możesz także kliknąć przycisk 'Przeglądaj...' i wybrać inny folder). $_CLICK"
LangString LSTR_123 1045 "Folder docelowy"
LangString LSTR_124 1045 &Przeglądaj...
LangString LSTR_125 1045 "Wybierz folder instalacyjny $(LSTR_132):"
LangString LSTR_126 1045 &Zainstaluj
LangString LSTR_127 1045 "Kliknij przycisk 'Zainstaluj', aby rozpocząć instalację."
LangString LSTR_128 1045 "Pokaż &szczegóły"
LangString LSTR_129 1045 Zakończono
LangString LSTR_130 1045 " "
LangString LSTR_131 1045 &Zamknij
LangString LSTR_132 1045 "VLC media player"


; LANG: 1025
LangString LSTR_0 1025 "VideoLAN VLC media player"
LangString LSTR_1 1025 "تنصيب $(LSTR_2)"
LangString LSTR_2 1025 "VLC media player"
LangString LSTR_3 1025 "المساحة المتوفرة: "
LangString LSTR_4 1025 "المساحة المطلوبة: "
LangString LSTR_5 1025 "لا يستطيع الكتابة: "
LangString LSTR_8 1025 "لم يتمكن من إيجاد الرمز :"
LangString LSTR_9 1025 "لم يتمكن من تحميل :"
LangString LSTR_10 1025 "إنشاء مجلد"
LangString LSTR_11 1025 "إنشاء إختصار: "
LangString LSTR_12 1025 "إنشاء مزيل: "
LangString LSTR_13 1025 "حذف ملف: "
LangString LSTR_14 1025 "حذف بعد إعادة التشغيل: "
LangString LSTR_15 1025 "خلل أثناء إنشاء إختصار: "
LangString LSTR_16 1025 "خلل أثناء إنشاء :"
LangString LSTR_17 1025 "خلل أثناء فتح البيانات المضغوطة! منصب تالف؟"
LangString LSTR_19 1025 "تنفيذ ExecShell:"
LangString LSTR_20 1025 "تنفيذ: "
LangString LSTR_21 1025 "إستخراج: "
LangString LSTR_22 1025 "إستخراج: خلل أثناء الكتابة إلى ملف "
LangString LSTR_23 1025 "المنصّب تالف: شفرة غير صالحة"
LangString LSTR_24 1025 "لا توجد OLE لـِ: "
LangString LSTR_25 1025 "مجلد الإخراج: "
LangString LSTR_26 1025 "إزالة مجلد: "
LangString LSTR_29 1025 "تخطى: "
LangString LSTR_30 1025 "نسخ التفاصيل إلى الذاكرة"
LangString LSTR_32 1025 بايت
LangString LSTR_33 1025 " كيلو"
LangString LSTR_34 1025 " ميغا"
LangString LSTR_35 1025 " جيغا"
LangString LSTR_36 1025 "مُوصى به"
LangString LSTR_37 1025 الأدنى
LangString LSTR_38 1025 كامل
LangString LSTR_39 1025 "حدث خلل أثناء فتح ملف للكتابة: $\r$\n$\t\$\"$0\$\"$\r$\nإضغط إلغاء لإلغاء التنصيب،$\r$\nمحاولة لإعادة محاولة كتابة الملف،$\r$\n تجاهل لتخطي الملف"
LangString LSTR_40 1025 1
LangString LSTR_41 1025 "مرحبا بك في مرشد إعداد $(LSTR_132)"
LangString LSTR_42 1025 "MS Shell Dlg"
LangString LSTR_43 1025 "سيساعدك هذا المرشد في تنصيب $(LSTR_132).$\r$\n$\r$\nمن المفضل إغلاق جميع البرامج قبل التنصيب. سيساعد هذا في تجديد ملفات النظام دون الحاجة لإعادة تشغيل الجهاز.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1025 "أصبحت على علم بحقوقك. انقر ”التالي“ للمتابعة."
LangString LSTR_45 1025 "ال&تالي >"
LangString LSTR_46 1025 "إتفاقية‏ الترخيص"
LangString LSTR_47 1025 "الرجاء مراجعة إتفاقية‏ الترخيص قبل تنصيب $(LSTR_132)."
LangString LSTR_48 1025 "إضعط مفتاح صفحة للأسفل لرؤية باقي الإتفاقية"
LangString LSTR_49 1025 "إختر المكونات"
LangString LSTR_50 1025 "إختر ميزات $(LSTR_132) المراد تنصيبها."
LangString LSTR_51 1025 الوصف
LangString LSTR_52 1025 "أشر بالفأرة فوق أحد المكونات لرؤية الوصف"
LangString LSTR_53 1025 "إختر موقع التنصيب"
LangString LSTR_54 1025 "إختر المجلد المراد تنصيب $(LSTR_132) فيه."
LangString LSTR_55 1025 تنصيب
LangString LSTR_56 1025 "الرجاء الإنتظار أثناء تنصيب $(LSTR_132)."
LangString LSTR_57 1025 "إنتهى التنصيب"
LangString LSTR_58 1025 "إنتهت عملية التنصيب بنجاح."
LangString LSTR_59 1025 "إلغاء التنصيب"
LangString LSTR_60 1025 "لم ينتهي التنصيب بنجاح."
LangString LSTR_61 1025 &إنهاء
LangString LSTR_62 1025 "إنهاء مرشد إعداد $(LSTR_132)"
LangString LSTR_63 1025 "لقد تم تنصيب $(LSTR_132) على الجهاز$\r$\n$\r$\nإضغط إنهاء لإغلاق مرشد الإعداد."
LangString LSTR_64 1025 "&شغل $(LSTR_132)"
LangString LSTR_65 1025 "زُر موقع مشغّل الوسائط VLC من VideoLAN"
LangString LSTR_66 1025 8
LangString LSTR_67 1025 "هل أنت متأكد من إغلاق منصّب $(LSTR_2)؟"
LangString LSTR_68 1025 شغّل
LangString LSTR_69 1025 "يبدو أن VLC يعمل وسيُغلق الآن."
LangString LSTR_70 1025 "تعذر على المثبّت إغلاق VLC، رجاءً أغلقه يدويا."
LangString LSTR_71 1025 "تم الإحباط التثبيت"
LangString LSTR_72 1025 "مشغّل الوسائط (مطلوب)"
LangString LSTR_73 1025 "يتحقق من العمليات..."
LangString LSTR_74 1025 "شغّل بمشغّل الوسائط VLC"
LangString LSTR_75 1025 "اختصار في قائمة ”ابدأ“"
LangString LSTR_76 1025 "اختصار على سطح المكتب"
LangString LSTR_77 1025 "ملحقات الوِب"
LangString LSTR_78 1025 "ملحقة ActiveX"
LangString LSTR_79 1025 "تشغيل الأقراص"
LangString LSTR_80 1025 "شغّل فيلم DVD"
LangString LSTR_81 1025 "شغّل CD صوتي"
LangString LSTR_82 1025 "شغّل فيلم VCD"
LangString LSTR_83 1025 "شغّل فيلم SVCD"
LangString LSTR_84 1025 "شغّل DVD صوتي"
LangString LSTR_85 1025 "شغّل ملفات الفيديو"
LangString LSTR_86 1025 "شغّل الملفات الصوتية"
LangString LSTR_87 1025 "تشغيل بلو-ري"
LangString LSTR_88 1025 "ارتباطات أنواع الملفات"
LangString LSTR_89 1025 "الملفات الصوتية"
LangString LSTR_90 1025 "الملفات المرئية"
LangString LSTR_91 1025 أخرى
LangString LSTR_92 1025 "قوائم المحتوى"
LangString LSTR_93 1025 "أضِف إلى قائمة مشغّل الوسائط VLC"
LangString LSTR_94 1025 "احذف التفضيلات والخبيئة"
LangString LSTR_95 1025 "مشغّل الوسائط ذاته"
LangString LSTR_96 1025 "يضيف أيقونات لقائمة ”ابدأ“ لوصول أيسر"
LangString LSTR_97 1025 "يضيف أيقونة على سطح المكتب لوصول أيسر"
LangString LSTR_98 1025 "ملحقة VLC لِ‍ ActiveX"
LangString LSTR_99 1025 "تسجيل تشغيل CD و DVD"
LangString LSTR_100 1025 "يضبط مشغّل الوسائط VLC ليكون التطبيق المبدئي لنوع الملفات المحدد"
LangString LSTR_101 1025 "أضِف عناصر إلى قائمة السياق (’شغّل بِ‍ VLC‘ و’أضِف إلى قائمة تشغيل VLC‘)"
LangString LSTR_102 1025 "يحذف التفضيلات والخبيئة لمشغّل الوسائط VLC التي بقت من النسخ السابقة"
LangString LSTR_103 1025 "مثبًّت مسبقا"
LangString LSTR_104 1025 "اختر طريقة تثبيت VLC."
LangString LSTR_105 1025 "ثمة نسخة أقدم من VLC مثبّتة في النظام. اختر العملية التي تريد إجراءها وانقر ”التالي“ للمتابعة."
LangString LSTR_106 1025 "رقِّ VLC مستخدما الإعدادات السابقة (مستحسن)"
LangString LSTR_107 1025 "غيّر الإعدادات (متقدم)"
LangString LSTR_108 1025 "ثمة نسخة أحدث من VLC مثبّتة! ليس مستحسنا العودة إلى نسخة أقدم. اختر العملية التي تريد إجراءها وانقر ”التالي“ للمتابعة."
LangString LSTR_109 1025 "أنزِل نسخة VLC مستخدماً الإعدادات السابقة (مستحسن)"
LangString LSTR_110 1025 "اختر نوع الصيانة التي تريد القيام بها."
LangString LSTR_111 1025 "النسخة 3.0.24 من VLC مثبتة بالفعل. اختر العملية التي تريد إجراءها وانقر ”التالي“ للمتابعة."
LangString LSTR_112 1025 "أضِف/أزِل/أعِد تثبيت المكوّنات"
LangString LSTR_113 1025 "أزِل تثبيت VLC"
LangString LSTR_114 1025 إختياري
LangString LSTR_115 1025 إلغاء
LangString LSTR_116 1025 "< ال&سابق"
LangString LSTR_117 1025 "إضغط على التالي للمتابعة."
LangString LSTR_118 1025 "علّم المكونات المراد تنصيبها وإزل العلامة عن المكونات الغير مراد تنصيبها. $_CLICK"
LangString LSTR_119 1025 "إختر نوع التنصيب:"
LangString LSTR_120 1025 "أو، قم بإختيار المكونات الإختيارية المراد تنصيبها:"
LangString LSTR_121 1025 "إختر المكونات للتنصيب:"
LangString LSTR_122 1025 "سيتم تنصيب $(LSTR_132) في المجلد التالي. للتنصيب في مجلد آخر، إضغط عرض وإختر مجلد آخر. $_CLICK"
LangString LSTR_123 1025 "مجلد الهدف"
LangString LSTR_124 1025 &عرض...
LangString LSTR_125 1025 "إختر المجلد لتنصيب $(LSTR_132) فيه:"
LangString LSTR_126 1025 &تنصيب
LangString LSTR_127 1025 "إضغط على تنصيب لتشغيل التنصيب."
LangString LSTR_128 1025 "إ&ظهار التفاصيل"
LangString LSTR_129 1025 إنتهى
LangString LSTR_130 1025 " "
LangString LSTR_131 1025 إ&غلاق
LangString LSTR_132 1025 "VLC media player"


; LANG: 5146
LangString LSTR_0 5146 "VideoLAN VLC media player"
LangString LSTR_1 5146 "$(LSTR_2) Instalacija"
LangString LSTR_2 5146 "VLC media player"
LangString LSTR_3 5146 "Slobodno prostora na disku: "
LangString LSTR_4 5146 "Potrebno prostora na disku: "
LangString LSTR_5 5146 "Nemoguće upisati: "
LangString LSTR_8 5146 "Nemoguće naći simbol: "
LangString LSTR_9 5146 "Nemoguće učitavanje: "
LangString LSTR_10 5146 "Napravi mapu: "
LangString LSTR_11 5146 "Napravi prečicu: "
LangString LSTR_12 5146 "Program za uklanjanje: "
LangString LSTR_13 5146 "Obriši datoteku: "
LangString LSTR_14 5146 "Obriši prilikom ponovnog pokretanja: "
LangString LSTR_15 5146 "Greška prilikom kreiranja prečica: "
LangString LSTR_16 5146 "Greška prilikom kreiranja: "
LangString LSTR_17 5146 "Greška prilikom otpakivanja podataka! Oštećen instalacijski program?"
LangString LSTR_19 5146 "ExecShell: "
LangString LSTR_20 5146 "Izvrši: "
LangString LSTR_21 5146 "Otpakuj: "
LangString LSTR_22 5146 "Otpakivanje: greška upisivanja u datoteku "
LangString LSTR_23 5146 "Oštećena instalacijska datoteka: neispravna opkoda"
LangString LSTR_24 5146 "Nema OLE za: "
LangString LSTR_25 5146 "Izlazna mapa: "
LangString LSTR_26 5146 "Obriši mapu: "
LangString LSTR_29 5146 "Preskočeno: "
LangString LSTR_30 5146 "Kopiraj detalje na Klembord"
LangString LSTR_32 5146 B
LangString LSTR_33 5146 " K"
LangString LSTR_34 5146 " M"
LangString LSTR_35 5146 " G"
LangString LSTR_36 5146 Preporučeno
LangString LSTR_37 5146 Minimalno
LangString LSTR_38 5146 Komplet
LangString LSTR_39 5146 "Greška prilikom otvaranja datoteke za upisivanje: $\r$\n$\t$\"$0$\"$\r$\n\$\"Odustani\$\" za prekid instalacije,$\r$\n\$\"Ponovi\$\" za ponovni pokušaj upisivanja, ili$\r$\n\$\"Ignoriši\$\" za zanemarenje te datoteke"
LangString LSTR_40 5146 0
LangString LSTR_41 5146 "Dobrodošli u program za instalaciju $(LSTR_132)"
LangString LSTR_42 5146 "MS Shell Dlg"
LangString LSTR_43 5146 "Ovaj program će instalirati $(LSTR_132) na Vaš sistem. $\r$\n$\r$\nPreporučujemo da neizostavno zatvorite sve druge otvorene programe prije nego što definitivno započnete sa instaliranjem. To će omogućiti bolju nadogradnju određenih sistemskih datoteka bez potrebe da Vaš računar ponovo startujete. Instaliranje programa možete prekinuti pritiskom na dugme 'Odustani'.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 5146 "Sada ste svjesni svojih prava. Kliknite Sljedeće za nastavak."
LangString LSTR_45 5146 "&Dalje >"
LangString LSTR_46 5146 "Licencni ugovor"
LangString LSTR_47 5146 "Molim pročitajte licencni ugovor $(LSTR_132) prije instalacije programa."
LangString LSTR_48 5146 "Pritisnite 'Page Down' na tastaturi za ostatak licence."
LangString LSTR_49 5146 "Izbor komponenti za instalaciju"
LangString LSTR_50 5146 "Izaberite komponente programa $(LSTR_132) koje želite instalirati."
LangString LSTR_51 5146 Opis
LangString LSTR_52 5146 "Postavite kursor od miša iznad komponente da biste vidjeli njezin opis."
LangString LSTR_53 5146 "Odaberite odredište za instalaciju"
LangString LSTR_54 5146 "Odaberite mapu u koju želite instalirati program $(LSTR_132)."
LangString LSTR_55 5146 Instaliranje
LangString LSTR_56 5146 "Molim pričekajte na završetak instalacije programa $(LSTR_132)."
LangString LSTR_57 5146 "Kraj instalacije"
LangString LSTR_58 5146 "Instalacija je u potpunosti uspješno završila."
LangString LSTR_59 5146 "Instalacija je prekinuta"
LangString LSTR_60 5146 "Instalacija nije završila uspješno."
LangString LSTR_61 5146 &Kraj
LangString LSTR_62 5146 "Dovršavanje instalacije programa $(LSTR_132)"
LangString LSTR_63 5146 "Program $(LSTR_132) je instaliran na Vaše računar.$\r$\n$\r$\nPritisnite dugme 'Kraj' za završetak."
LangString LSTR_64 5146 "&Pokreni program $(LSTR_132)"
LangString LSTR_65 5146 "Posjetite Web Stranicu VideoLAN VLC medijskog izvođača"
LangString LSTR_66 5146 8
LangString LSTR_67 5146 "Jeste li sigurni da želite prekinuti instalaciju programa $(LSTR_2)?"
LangString LSTR_68 5146 Produciraj
LangString LSTR_69 5146 "VLC je izgleda pokrenut i sada će biti zatvoren."
LangString LSTR_70 5146 "Instalater nije uspio zatvoriti VLC, molimo da to učinite ručno."
LangString LSTR_71 5146 "Instalacija prekinuta!"
LangString LSTR_72 5146 "Medijski Izvođač (neophodan)"
LangString LSTR_73 5146 "Provjeravam procese..."
LangString LSTR_74 5146 "Produciraj sa VLC medijskim izvođačom"
LangString LSTR_75 5146 "Prečac Start Menija"
LangString LSTR_76 5146 "Prečac Radne Površine"
LangString LSTR_77 5146 "Web dodaci"
LangString LSTR_78 5146 "ActiveX dodatak"
LangString LSTR_79 5146 "Reproduciranje Diskova"
LangString LSTR_80 5146 "Produciraj DVD film"
LangString LSTR_81 5146 "Produciraj zvučni CD"
LangString LSTR_82 5146 "Produciraj VCD film"
LangString LSTR_83 5146 "Produciraj SVCD film"
LangString LSTR_84 5146 "Produciraj zvučni DVD"
LangString LSTR_85 5146 "Produciraj video datoteke"
LangString LSTR_86 5146 "Produciraj zvučne datoteke"
LangString LSTR_87 5146 "Play Blu-ray"
LangString LSTR_88 5146 "Asocijacije tipa datoteke"
LangString LSTR_89 5146 "Zvučne Datoteke"
LangString LSTR_90 5146 "Video Datoteke"
LangString LSTR_91 5146 Druge
LangString LSTR_92 5146 "Kontekstni Meniji"
LangString LSTR_93 5146 "Dodaj na listu izvođenja VLC medijskog izvođača"
LangString LSTR_94 5146 "Izbriši postavljanja i predmemoriranje"
LangString LSTR_95 5146 "Sam medijski izvođač"
LangString LSTR_96 5146 "Dodaje ikone na vaš start meni za jednostavan pristup"
LangString LSTR_97 5146 "Dodaje ikonu na vašu radnu površinu za jednostavan pristup"
LangString LSTR_98 5146 "VLC ActiveX dodatak"
LangString LSTR_99 5146 "DVD i CD registracija reprodukcije"
LangString LSTR_100 5146 "Postavlja VLC medijski izvođač kao zadanu aplikaciju za naznačene tipove datoteka"
LangString LSTR_101 5146 "Dodaj stavke kontekstnog menija ('Produciraj Sa VLC-om' i 'Dodaj Na Listu izvođenja VLC-a')"
LangString LSTR_102 5146 "Briše postavljanja VLC medijskog izvođača i preostale datoteke predmemoriranja od prethodnih instalacija"
LangString LSTR_103 5146 "Već Instalirano"
LangString LSTR_104 5146 "Izaberite kako želite instalirati VLC."
LangString LSTR_105 5146 "Starija verzija VLC je instalirana na sistem. Odaberite opreaciju koju želite da se izvede i kliknite Sljedeće da bi nastavili."
LangString LSTR_106 5146 "Nadogradi VLC koristeći prethodne postavke (preporučeno)"
LangString LSTR_107 5146 "Izmijeni postavke (napredno)"
LangString LSTR_108 5146 "Novija verzija VLC-a je već instalirana! Nije preporučeno da se unazađuje na stariju verziju. Odaberite operaciju koju želite da se izvede i kliknite Sljedeće da bi nastavili."
LangString LSTR_109 5146 "Unazadi VLC koristeći prethodne postavke (preporučeno)"
LangString LSTR_110 5146 "Izaberite opciju održavanja za izvedbu."
LangString LSTR_111 5146 "VLC 3.0.24 je već instalirana. Odaberite operaciju koju želite da se izvede i klinite Sljedeće da bi nastavili."
LangString LSTR_112 5146 "Dodaj/Izbriši/Ponovo instaliraj komponente"
LangString LSTR_113 5146 "Deinstaliraj VLC"
LangString LSTR_114 5146 Podešavanje
LangString LSTR_115 5146 Odustani
LangString LSTR_116 5146 "< &Nazad"
LangString LSTR_117 5146 "Pritisnite dugme 'Dalje' za nastavak."
LangString LSTR_118 5146 "Označite komponente koje želite instalirati. Instaliraju se samo označene komponente. Uklonite oznaku sa onih koje ne želite instalirati. $_CLICK"
LangString LSTR_119 5146 "Izaberite tip instalacije:"
LangString LSTR_120 5146 "Ili po izboru označite komponente koje želite instalirati:"
LangString LSTR_121 5146 "Odaberite komponente za instalaciju:"
LangString LSTR_122 5146 "Program $(LSTR_132) će biti instaliran u sljedeću mapu. Za instalaciju na neku drugu mapu odaberite 'Pregledaj...' i odaberite drugu mapu. $_CLICK"
LangString LSTR_123 5146 "Odredišna mapa"
LangString LSTR_124 5146 &Pregledaj...
LangString LSTR_125 5146 "Izaberite mapu u koju želite instalirati program $(LSTR_132):"
LangString LSTR_126 5146 &Instaliraj
LangString LSTR_127 5146 "Pritisnite dugme 'Instaliraj' za početak instalacije."
LangString LSTR_128 5146 "Prikaži &detalje"
LangString LSTR_129 5146 Završeno
LangString LSTR_130 5146 " "
LangString LSTR_131 5146 &Zatvori
LangString LSTR_132 5146 "VLC media player"


; LANG: 1029
LangString LSTR_0 1029 "VideoLAN VLC media player"
LangString LSTR_1 1029 "Instalace $(LSTR_2)"
LangString LSTR_2 1029 "VLC media player"
LangString LSTR_3 1029 "Volné místo: "
LangString LSTR_4 1029 "Požadované místo: "
LangString LSTR_5 1029 "Nelze zapsat: "
LangString LSTR_8 1029 "Nelze najít symbol: "
LangString LSTR_9 1029 "Nelze načíst: "
LangString LSTR_10 1029 "Vytváření složky: "
LangString LSTR_11 1029 "Vytváření zástupce: "
LangString LSTR_12 1029 "Vytváření odinstalačního programu: "
LangString LSTR_13 1029 "Odstraňování souboru: "
LangString LSTR_14 1029 "Odstranit při restartování: "
LangString LSTR_15 1029 "Při vytváření zástupce došlo k chybě: "
LangString LSTR_16 1029 "Při vytváření došlo k chybě: "
LangString LSTR_17 1029 "Při dekompresi dat došlo k chybě. Byl poškozen instalační program?"
LangString LSTR_19 1029 "Spouštění prostředí: "
LangString LSTR_20 1029 "Spouštění: "
LangString LSTR_21 1029 "Extrahování: "
LangString LSTR_22 1029 "Extrakce: Při zápisu souboru došlo k chybě "
LangString LSTR_23 1029 "Instalační program byl poškozen: neplatný operační kód."
LangString LSTR_24 1029 "Nedostupné OLE pro: "
LangString LSTR_25 1029 "Výstupní složka: "
LangString LSTR_26 1029 "Odstraňování složky: "
LangString LSTR_29 1029 "Přeskočeno: "
LangString LSTR_30 1029 "Zkopírovat podrobnosti do schránky"
LangString LSTR_32 1029 B
LangString LSTR_33 1029 " K"
LangString LSTR_34 1029 " M"
LangString LSTR_35 1029 " G"
LangString LSTR_36 1029 Doporučená
LangString LSTR_37 1029 Minimální
LangString LSTR_38 1029 Plná
LangString LSTR_39 1029 "Soubor nelze otevřít pro zápis: $\r$\n$\t$\"$0$\"$\r$\nKlikněte na tlačítko Přerušit k ukončení instalace,$\r$\nnebo na tlačítko Opakovat k zopakování akce, nebo$\r$\n na tlačítko Ignorovat k přeskočení souboru."
LangString LSTR_40 1029 0
LangString LSTR_41 1029 "Vítejte v průvodci instalace programu $(LSTR_132)"
LangString LSTR_42 1029 "MS Shell Dlg"
LangString LSTR_43 1029 "Tento průvodce vás provede instalací programu $(LSTR_132).$\r$\n$\r$\nPřed spuštěním instalačního programu je doporučeno ukončit všechny ostatní aplikace. Umožní to aktualizovat související systémové soubory bez restartování počítače.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1029 "Nyní znáte svá práva. Pro pokračování klikněte na Další."
LangString LSTR_45 1029 "&Další >"
LangString LSTR_46 1029 "Licenční smlouva"
LangString LSTR_47 1029 "Před instalací programu $(LSTR_132) si prosím projděte licenční podmínky."
LangString LSTR_48 1029 "Zbytek textu zobrazíte stisknutím klávesy Page Down."
LangString LSTR_49 1029 "Volba součástí"
LangString LSTR_50 1029 "Výběr součástí programu $(LSTR_132) pro instalaci."
LangString LSTR_51 1029 Popis
LangString LSTR_52 1029 "Chcete-li zobrazit popis součásti, umístěte na ní ukazatel myši."
LangString LSTR_53 1029 "Volba umístění instalace"
LangString LSTR_54 1029 "Výběr instalační složky programu $(LSTR_132)."
LangString LSTR_55 1029 Instalace
LangString LSTR_56 1029 "Počkejte prosím na dokončení instalace programu $(LSTR_132)."
LangString LSTR_57 1029 "Instalace dokončena"
LangString LSTR_58 1029 "Instalace byla úspěšně dokončena."
LangString LSTR_59 1029 "Instalace přerušena"
LangString LSTR_60 1029 "Instalace nebyla úspěšně dokončena."
LangString LSTR_61 1029 &Dokončit
LangString LSTR_62 1029 "Dokončení instalace programu $(LSTR_132)"
LangString LSTR_63 1029 "Program $(LSTR_132) byl nainstalován do počítače.$\r$\n$\r$\nKliknutím na tlačítko Dokončit ukončíte tohoto průvodce."
LangString LSTR_64 1029 "&Spustit program $(LSTR_132)"
LangString LSTR_65 1029 "Navštivte webové stránky přehrávače VideoLAN VLC"
LangString LSTR_66 1029 8
LangString LSTR_67 1029 "Opravdu chcete instalaci programu $(LSTR_2) ukončit?"
LangString LSTR_68 1029 Přehrát
LangString LSTR_69 1029 "Vypadá to že přehrávač VLC je spuštěn na pozadí. Bude tedy ukončen."
LangString LSTR_70 1029 "Instalátoru se nezdařilo ukončení přehrávače VLC. Prosím ukončete jej ručně."
LangString LSTR_71 1029 "Instalace přerušena."
LangString LSTR_72 1029 "Přehrávač médií (vyžadováno)"
LangString LSTR_73 1029 "Kontroluji procesy..."
LangString LSTR_74 1029 "Přehrát s VLC"
LangString LSTR_75 1029 "Položka v nabídce Start"
LangString LSTR_76 1029 "Odkaz na ploše"
LangString LSTR_77 1029 "Moduly webu"
LangString LSTR_78 1029 "Zásuvný modul ActiveX"
LangString LSTR_79 1029 "Přehrávání disků"
LangString LSTR_80 1029 "Přehrát film DVD"
LangString LSTR_81 1029 "Přehrát zvukové CD"
LangString LSTR_82 1029 "Přehrát film VCD"
LangString LSTR_83 1029 "Přehrát film SVCD"
LangString LSTR_84 1029 "Přehrát zvukové DVD"
LangString LSTR_85 1029 "Přehrát soubory videa"
LangString LSTR_86 1029 "Přehrát soubory zvuku"
LangString LSTR_87 1029 "Přehrát Blu-ray"
LangString LSTR_88 1029 "Asociace s typem souborů"
LangString LSTR_89 1029 "Soubory zvuku"
LangString LSTR_90 1029 "Soubory videa"
LangString LSTR_91 1029 Jiné
LangString LSTR_92 1029 "Místní nabídky"
LangString LSTR_93 1029 "Přidat do seznamu skladeb VLC"
LangString LSTR_94 1029 "Smazat nastavení a mezipaměť"
LangString LSTR_95 1029 "Samotný přehrávač médií"
LangString LSTR_96 1029 "Přidá ikony do vaší nabídky start pro snadný přístup"
LangString LSTR_97 1029 "Přidá ikonu na plochu pro snažší přístup"
LangString LSTR_98 1029 "Modul VLC ActiveX"
LangString LSTR_99 1029 "Registrace přehrávání CD a DVD"
LangString LSTR_100 1029 "Nastaví přehrávač VLC jako výchozí aplikaci pro daný typ souborů"
LangString LSTR_101 1029 "Přidá položky kontextové nabídky ($\"Přehrát s VLC$\" a $\"Přidat do seznamu skladeb VLC$\")"
LangString LSTR_102 1029 "Smaže nastavení a mezipaměť přehrávače VLC, které jsou pozůstatkem z předchozích instalací"
LangString LSTR_103 1029 "Již nainstalováno"
LangString LSTR_104 1029 "Vyberte jak si přejete VLC nainstalovat."
LangString LSTR_105 1029 "Již máte nainstalovánu starší verzi VLC. Vyberte činnost k provedení a pro pokračování klikněte na Další."
LangString LSTR_106 1029 "Aktualizovat VLC pomocí předchozího nastavení (doporučeno)"
LangString LSTR_107 1029 "Změnit nastavení (pokročilé)"
LangString LSTR_108 1029 "Již je nainstalována novější verze VLC. Není doporučeno navracet se ke starší verzi. Vyberte činnost k provedení a pro pokračování klikněte na Další."
LangString LSTR_109 1029 "Snížit verzi VLC s použitím předchozího nastavení (doporučeno)"
LangString LSTR_110 1029 "Vyberte volbu údržby pro vykonání."
LangString LSTR_111 1029 "Přehrávač VLC verze 3.0.24 je již nainstalován. Vyberte činnost k provedení a pro pokračování klikněte na Další."
LangString LSTR_112 1029 "Přidat/Odebrat/Přeinstalovat komponenty"
LangString LSTR_113 1029 "Odinstalovat VLC"
LangString LSTR_114 1029 Vlastní
LangString LSTR_115 1029 Storno
LangString LSTR_116 1029 "< &Zpět"
LangString LSTR_117 1029 "Pokračujte kliknutím na tlačítko Další."
LangString LSTR_118 1029 "Zaškrtněte součásti, které chcete nainstalovat a zrušte zaškrtnutí součástí, které nechcete nainstalovat. $_CLICK"
LangString LSTR_119 1029 "Zvolte způsob instalace:"
LangString LSTR_120 1029 "Nebo vyberte volitelné součásti, které chcete nainstalovat."
LangString LSTR_121 1029 "Vyberte součásti, které chcete nainstalovat."
LangString LSTR_122 1029 "Instalační program nainstaluje program $(LSTR_132) do následující složky. Chcete-li instalovat do jiné složky, klikněte na tlačítko Procházet a vyberte jinou složku. $_CLICK"
LangString LSTR_123 1029 "Cílová složka"
LangString LSTR_124 1029 P&rocházet...
LangString LSTR_125 1029 "Výběr instalační složky programu $(LSTR_132)."
LangString LSTR_126 1029 &Instalovat
LangString LSTR_127 1029 "Instalaci spustíte kliknutím na tlačítko Instalovat."
LangString LSTR_128 1029 &Podrobnosti
LangString LSTR_129 1029 Dokončeno
LangString LSTR_130 1029 " "
LangString LSTR_131 1029 &Zavřít
LangString LSTR_132 1029 "VLC media player"


; LANG: 1032
LangString LSTR_0 1032 "VideoLAN VLC media player"
LangString LSTR_1 1032 "Εγκατάσταση του '$(LSTR_2)'"
LangString LSTR_2 1032 "VLC media player"
LangString LSTR_3 1032 "Διαθέσιμος χώρος: "
LangString LSTR_4 1032 "Απαιτούμενος χώρος: "
LangString LSTR_5 1032 "Αδυναμία εγγραφής: "
LangString LSTR_8 1032 "Αδυναμία εύρεσης συμβόλου: "
LangString LSTR_9 1032 "Αδυναμία φόρτωσης: "
LangString LSTR_10 1032 "Δημιουργία φακέλου: "
LangString LSTR_11 1032 "Δημιουργία συντόμευσης: "
LangString LSTR_12 1032 "Δημιουργία προγράμματος απεγκατάστασης: "
LangString LSTR_13 1032 "Διαγραφή αρχείου: "
LangString LSTR_14 1032 "Διαγραφή στην επανεκκίνηση: "
LangString LSTR_15 1032 "Σφάλμα στη δημιουργία συντόμευσης: "
LangString LSTR_16 1032 "Σφάλμα στη δημιουργία: "
LangString LSTR_17 1032 "Σφάλμα στην αποσυμπίεση δεδομένων! Κατεστραμμένο πρόγραμμα εγκατάστασης;"
LangString LSTR_19 1032 "Εκτέλεση (ExecShell): "
LangString LSTR_20 1032 "Εκτέλεση: "
LangString LSTR_21 1032 "Αποσυμπίεση: "
LangString LSTR_22 1032 "Αποσυμπίεση: σφάλμα εγγραφής στο αρχείο "
LangString LSTR_23 1032 "Εγκατάσταση κατεστραμμένη: μη-έγκυρο opcode"
LangString LSTR_24 1032 "Όχι OLE για το: "
LangString LSTR_25 1032 "Φάκελος εξόδου: "
LangString LSTR_26 1032 "Διαγραφή φακέλου: "
LangString LSTR_29 1032 "Παραλείφθηκε: "
LangString LSTR_30 1032 "Αντιγραφή λεπτομερειών στο Πρόχειρο"
LangString LSTR_32 1032 B
LangString LSTR_33 1032 " K"
LangString LSTR_34 1032 " M"
LangString LSTR_35 1032 " G"
LangString LSTR_36 1032 Προτεινομένη
LangString LSTR_37 1032 Ελάχιστη
LangString LSTR_38 1032 Πλήρης
LangString LSTR_39 1032 "Σφάλμα κατά το άνοιγμα αρχείου για εγγραφή: $\r$\n$\t$\"$0$\"$\r$\nΕπιλέξτε ματαίωση για να ματαιώσετε την εγκατάσταση,$\r$\nεπανάληψη για να δοκιμάσετε να γράψετε το αρχείο πάλι, ή$\r$\nπαράβλεψη για να παραλείψετε αυτό το αρχείο."
LangString LSTR_40 1032 0
LangString LSTR_41 1032 "Καλώς ήλθατε στην Εγκατάσταση του '$(LSTR_132)'"
LangString LSTR_42 1032 "MS Shell Dlg"
LangString LSTR_43 1032 "Ο οδηγός αυτός θα σας καθοδηγήσει κατά τη διάρκεια της εγκατάστασης του '$(LSTR_132)'.$\r$\n$\r$\nΣυνιστάται να κλείσετε όλες τις άλλες εφαρμογές πριν ξεκινήσετε την Εγκατάσταση. Αυτό θα επιτρέψει στην Εγκατάσταση να ενημερώσει τα σχετικά αρχεία συστήματος χωρίς την επανεκκίνηση του υπολογιστή σας.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1032 "Τώρα γνωρίζετε τα δικαιώματά σας. Κάνετε κλικ στο $\"Επόμενο$\" για να συνεχίσετε."
LangString LSTR_45 1032 "&Επόμενο >"
LangString LSTR_46 1032 "Συμφωνία Άδειας Χρήσης"
LangString LSTR_47 1032 "Ελέγξτε την άδεια χρήσης πριν εγκαταστήσετε το '$(LSTR_132)'."
LangString LSTR_48 1032 "Πατήστε το Page Down για να δείτε το υπόλοιπο της άδειας χρήσης."
LangString LSTR_49 1032 "Επιλογή Στοιχείων"
LangString LSTR_50 1032 "Επιλέξτε τα στοιχεία του '$(LSTR_132)' που θέλετε να εγκαταστήσετε."
LangString LSTR_51 1032 Περιγραφή
LangString LSTR_52 1032 "Περάστε το δείκτη του ποντικιού πάνω από ένα στοιχείο για να δείτε την περιγραφή του."
LangString LSTR_53 1032 "Επιλογή Θέσης Εγκατάστασης"
LangString LSTR_54 1032 "Επιλέξτε το φάκελο μέσα στον οποίο θα εγκατασταθεί το '$(LSTR_132)'."
LangString LSTR_55 1032 "Εγκατάσταση Σε Εξέλιξη"
LangString LSTR_56 1032 "Παρακαλώ περιμένετε όσο το '$(LSTR_132)' εγκαθίσταται."
LangString LSTR_57 1032 "Η Εγκατάσταση Ολοκληρώθηκε"
LangString LSTR_58 1032 "Η εγκατάσταση ολοκληρώθηκε επιτυχώς."
LangString LSTR_59 1032 "Η Εγκατάσταση Διακόπηκε"
LangString LSTR_60 1032 "Η εγκατάσταση δεν ολοκληρώθηκε επιτυχώς."
LangString LSTR_61 1032 &Τέλος
LangString LSTR_62 1032 "Ολοκλήρωση της Εγκατάστασης του '$(LSTR_132)'"
LangString LSTR_63 1032 "Το '$(LSTR_132)' εγκαταστάθηκε στον υπολογιστή σας.$\r$\n$\r$\nΚάντε κλικ στο Τέλος για να κλείσετε αυτόν τον οδηγό."
LangString LSTR_64 1032 "&Εκτέλεση του '$(LSTR_132)'"
LangString LSTR_65 1032 "Επισκεφτείτε την ιστοσελίδα του VideoLAN VLC"
LangString LSTR_66 1032 8
LangString LSTR_67 1032 "Είστε σίγουροι πως θέλετε να τερματίσετε την εγκατάσταση του '$(LSTR_2)';"
LangString LSTR_68 1032 Αναπαραγωγή
LangString LSTR_69 1032 "Το VLC φαίνεται να εκτελείται και τώρα θα τερματιστεί."
LangString LSTR_70 1032 "Το πρόγραμμα εγκατάστασης ήταν αδύνατο να τερματίσει το VLC, παρακαλούμε κλείστε το χειροκίνητα."
LangString LSTR_71 1032 "Η εγκατάσταση ακυρώθηκε!"
LangString LSTR_72 1032 "Αναπαραγωγός πολυμέσων (απαραίτητο)"
LangString LSTR_73 1032 "Έλεγχος διεργασιών…"
LangString LSTR_74 1032 "Αναπαραγωγή με το VLC"
LangString LSTR_75 1032 "Συντόμευση μενού έναρξης "
LangString LSTR_76 1032 "Συντόμευση επιφάνειας εργασίας"
LangString LSTR_77 1032 "Διαδικτυακά πρόσθετα"
LangString LSTR_78 1032 "Πρόσθετο ActiveX"
LangString LSTR_79 1032 "Αναπαραγωγή δίσκων"
LangString LSTR_80 1032 "Αναπαραγωγή ταινίας DVD"
LangString LSTR_81 1032 "Αναπαραγωγή CD ήχου"
LangString LSTR_82 1032 "Αναπαραγωγή βίντεο VCD"
LangString LSTR_83 1032 "Αναπαραγωγή βίντεο SVCD"
LangString LSTR_84 1032 "Αναπαραγωγή DVD ήχου"
LangString LSTR_85 1032 "Αναπαραγωγή αρχείων βίντεο"
LangString LSTR_86 1032 "Αναπαραγωγή αρχείων ήχου"
LangString LSTR_87 1032 "Αναπαραγωγή Blu-ray"
LangString LSTR_88 1032 "Συσχετίσεις τύπων αρχείων"
LangString LSTR_89 1032 "Αρχεία ήχου"
LangString LSTR_90 1032 "Αρχεία βίντεο"
LangString LSTR_91 1032 Άλλα
LangString LSTR_92 1032 "Μενού περιεχομένου"
LangString LSTR_93 1032 "Προσθήκη στη λίστα αναπαραγωγής του VLC"
LangString LSTR_94 1032 "Διαγραφή προτιμήσεων και της προσωρινής μνήμης (cache)"
LangString LSTR_95 1032 "Ο αναπαραγωγός πολυμέσων"
LangString LSTR_96 1032 "Προσθήκη εικονιδίων στο μενού έναρξης για εύκολη πρόσβαση"
LangString LSTR_97 1032 "Προσθήκη εικονιδίων στην επιφάνεια εργασίας για εύκολη πρόσβαση"
LangString LSTR_98 1032 "Πρόσθετο VLC ActiveX"
LangString LSTR_99 1032 "Καταχώρηση αναπαραγωγής DVD και CD"
LangString LSTR_100 1032 "Ορίστε το VLC media player ως την προεπιλεγμένη εφαρμογή για το συγκεκριμένο τύπο αρχείου"
LangString LSTR_101 1032 "Προσθήκη στοιχείων μενού ('Αναπαραγωγή με το VLC' και 'Προσθήκη στη λίστα αναπαραγωγής του VLC')"
LangString LSTR_102 1032 "Διαγράφει τις προτιμήσεις και τα προσωρινά αρχεία μνήμης της εφαρμογής VLC που έχουν απομείνει από προηγούμενες εγκαταστάσεις"
LangString LSTR_103 1032 "Ήδη εγκατεστημένο"
LangString LSTR_104 1032 "Επιλέξτε πώς θέλετε να εγκαταστήσετε το VLC."
LangString LSTR_105 1032 "Μια παλαιότερη έκδοση του VLC έχει εγκατασταθεί στο σύστημά σας. Επιλέξτε τη λειτουργία που θέλετε να εκτελέσετε και κάντε κλικ στο $\"Επόμενο$\" για να συνεχίσετε."
LangString LSTR_106 1032 "Αναβαθμίστε το VLC χρησιμοποιώντας προηγούμενες ρυθμίσεις (προτείνεται)"
LangString LSTR_107 1032 "Αλλαγή ρυθμίσεων (για προχωρημένους)"
LangString LSTR_108 1032 "Μια νεότερη έκδοση του VLC έχει ήδη εγκατασταθεί! Δεν προτείνεται να το υποβαθμίσετε σε μια παλαιότερη έκδοση. Επιλέξτε τη λειτουργία που θέλετε να εκτελέσετε και κάντε κλικ στο $\"Επόμενο$\" για να συνεχίσετε."
LangString LSTR_109 1032 "Υποβαθμίστε το VLC χρησιμοποιώντας προηγούμενες ρυθμίσεις (προτείνεται)"
LangString LSTR_110 1032 "Επιλέξτε ποια επιλογή συντήρησης θα πραγματοποιηθεί."
LangString LSTR_111 1032 "Το VLC 3.0.24 έχει ήδη εγκατασταθεί. Επιλέξτε τη λειτουργία που θέλετε να εκτελέσετε και κάντε κλικ στο $\"Επόμενο$\" για να συνεχίσετε."
LangString LSTR_112 1032 "Προσθήκη/Αφαίρεση/Επανεγκατάσταση στοιχείων"
LangString LSTR_113 1032 "Απεγκατάσταση του VLC"
LangString LSTR_114 1032 Προσαρμοσμένη
LangString LSTR_115 1032 Άκυρο
LangString LSTR_116 1032 "< &Πίσω"
LangString LSTR_117 1032 "Κάντε κλικ στο Επόμενο για να συνεχίσετε."
LangString LSTR_118 1032 "Επιλέξτε τα στοιχεία που θέλετε να εγκαταστήσετε και αποεπιλέξτε τα στοιχεία που δε θέλετε να εγκαταστήσετε. $_CLICK"
LangString LSTR_119 1032 "Επιλέξτε τύπο εγκατάστασης:"
LangString LSTR_120 1032 "Ή, επιλέξτε τα προαιρετικά στοιχεία που θέλετε να εγκαταστήσετε:"
LangString LSTR_121 1032 "Επιλέξτε τα στοιχεία που θέλετε να εγκαταστήσετε:"
LangString LSTR_122 1032 "Το πρόγραμμα εγκατάστασης θα εγκαταστήσει το '$(LSTR_132)' στον παρακάτω φάκελο. Για να το εγκαταστήσετε σε έναν άλλο φάκελο, κάντε κλικ στο Αναζήτηση και επιλέξτε κάποιον άλλο φάκελο. $_CLICK"
LangString LSTR_123 1032 "Φάκελος Εγκατάστασης"
LangString LSTR_124 1032 Α&ναζήτηση...
LangString LSTR_125 1032 "Επιλέξτε το φάκελο εγκατάστασης για το '$(LSTR_132)':"
LangString LSTR_126 1032 &Εγκατάσταση
LangString LSTR_127 1032 "Κάντε κλικ στο Εγκατάσταση για να αρχίσετε την εγκατάσταση."
LangString LSTR_128 1032 &Λεπτομέρειες
LangString LSTR_129 1032 Ολοκληρώθηκε
LangString LSTR_130 1032 " "
LangString LSTR_131 1032 &Κλείσιμο
LangString LSTR_132 1032 "VLC media player"


; LANG: 1042
LangString LSTR_0 1042 "VideoLAN VLC media player"
LangString LSTR_1 1042 "$(LSTR_2) 설치"
LangString LSTR_2 1042 "VLC media player"
LangString LSTR_3 1042 "남은 디스크 공간: "
LangString LSTR_4 1042 "필요한 디스크 공간: "
LangString LSTR_5 1042 "기록할 수 없음: "
LangString LSTR_8 1042 "심볼을 찾을 수 없음: "
LangString LSTR_9 1042 "불러올 수 없음: "
LangString LSTR_10 1042 "폴더 생성: "
LangString LSTR_11 1042 "바로 가기 생성: "
LangString LSTR_12 1042 "언인스톨러 생성: "
LangString LSTR_13 1042 "파일 삭제: "
LangString LSTR_14 1042 "재부팅시 삭제: "
LangString LSTR_15 1042 "바로 가기 생성 오류: "
LangString LSTR_16 1042 "생성 실패: "
LangString LSTR_17 1042 "압축 해제중 오류 발생! 설치 파일이 손상되었습니다."
LangString LSTR_19 1042 "쉘 실행: "
LangString LSTR_20 1042 "실행: "
LangString LSTR_21 1042 "압축 해제: "
LangString LSTR_22 1042 "압축 해제: 파일을 기록하는 도중 오류 발생 "
LangString LSTR_23 1042 "인스톨러 손상됨: 잘못된 실행코드"
LangString LSTR_24 1042 "OLE 정보 없음: "
LangString LSTR_25 1042 "대상 폴더: "
LangString LSTR_26 1042 "폴더 삭제: "
LangString LSTR_29 1042 "건너뜀: "
LangString LSTR_30 1042 "자세한 내용을 클립보드로 복사"
LangString LSTR_32 1042 B
LangString LSTR_33 1042 " K"
LangString LSTR_34 1042 " M"
LangString LSTR_35 1042 " G"
LangString LSTR_36 1042 추천
LangString LSTR_37 1042 최소
LangString LSTR_38 1042 전체
LangString LSTR_39 1042 "다음 파일을 열 수 없습니다.: $\r$\n$\t$\"$0$\"$\r$\n'중단'을 눌러 설치를 종료하거나,$\r'다시 시도'를 눌러 다시 시도해 보거나,$\r'무시'를 눌러 이 파일을 건너 뛰세요."
LangString LSTR_40 1042 0
LangString LSTR_41 1042 "$(LSTR_132) 설치를 시작합니다."
LangString LSTR_42 1042 굴림
LangString LSTR_43 1042 "이 프로그램은 당신의 컴퓨터에 $(LSTR_132)(을)를 설치할 것입니다.$\r$\n$\r$\n설치를 시작하기 전 가능한 한 모든 프로그램을 종료하여 주시기 바랍니다. 이는 재부팅을 하지 않고서도 시스템 파일을 수정할 수 있게 해줍니다.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1042 "당신의 권리를 확인했습니다. 계속하려면 클릭하세요."
LangString LSTR_45 1042 "다음 >"
LangString LSTR_46 1042 "사용권 계약"
LangString LSTR_47 1042 "$(LSTR_132)(을)를 설치하시기 전에 사용권 계약 내용을 살펴보시기 바랍니다."
LangString LSTR_48 1042 "사용권 계약 동의 사항의 나머지 부분을 보시려면 [Page Down] 키를 눌러 주세요."
LangString LSTR_49 1042 "구성 요소 선택"
LangString LSTR_50 1042 "설치하고자 하는 $(LSTR_132)의 구성 요소를 선택해 주세요."
LangString LSTR_51 1042 "상세 설명"
LangString LSTR_52 1042 "상세 설명을 보고 싶으신 부분에 마우스를 올려놓으세요."
LangString LSTR_53 1042 "설치 위치 선택"
LangString LSTR_54 1042 "$(LSTR_132)(을)를 설치할 폴더를 선택해 주세요."
LangString LSTR_55 1042 설치중
LangString LSTR_56 1042 "$(LSTR_132)(을)를 설치하는 동안 잠시 기다려 주세요."
LangString LSTR_57 1042 "설치 완료"
LangString LSTR_58 1042 "설치가 성공적으로 완료되었습니다."
LangString LSTR_59 1042 "설치 취소"
LangString LSTR_60 1042 "프로그램 설치가 취소되었습니다."
LangString LSTR_61 1042 마침
LangString LSTR_62 1042 "$(LSTR_132) 설치 완료"
LangString LSTR_63 1042 "$(LSTR_132)의 설치가 완료되었습니다.$\r$\n$\r$\n설치 프로그램을 마치려면 '마침' 버튼을 눌러 주세요."
LangString LSTR_64 1042 "$(LSTR_132) 실행하기(&R)"
LangString LSTR_65 1042 "VideoLAN VLC 웹사이트에 방문하기"
LangString LSTR_66 1042 9
LangString LSTR_67 1042 "$(LSTR_2) 설치를 취소하시겠습니까?"
LangString LSTR_68 1042 재생
LangString LSTR_69 1042 "VLC가 실행중인데, 곧 종료될 것입니다. "
LangString LSTR_70 1042 "VLC를 종료할 수 없습니다. 직접 종료해 주세요."
LangString LSTR_71 1042 "설치를 중단했습니다!"
LangString LSTR_72 1042 "재생기 (필요함)"
LangString LSTR_73 1042 "처리사항 확인 중..."
LangString LSTR_74 1042 "VLC 로 재생하기"
LangString LSTR_75 1042 "시작 메뉴 바로가기"
LangString LSTR_76 1042 "바탕화면 바로가기"
LangString LSTR_77 1042 "웹 플러그인"
LangString LSTR_78 1042 "액티브엑스 플러그인"
LangString LSTR_79 1042 "디스크 재생"
LangString LSTR_80 1042 "DVD 재생하기"
LangString LSTR_81 1042 "오디오 CD 재생하기"
LangString LSTR_82 1042 "VCD 재생하기"
LangString LSTR_83 1042 "SVCD 재생하기"
LangString LSTR_84 1042 "오디오 DVD 재생하기"
LangString LSTR_85 1042 "비디오 파일 재생하기"
LangString LSTR_86 1042 "오디오 파일 재생하기"
LangString LSTR_87 1042 "Blu-ray 재생"
LangString LSTR_88 1042 "파일 형식 연결"
LangString LSTR_89 1042 "오디오 파일"
LangString LSTR_90 1042 "비디오 파일"
LangString LSTR_91 1042 기타
LangString LSTR_92 1042 "컨텍스트 메뉴"
LangString LSTR_93 1042 "VLC의 재생목록에 추가하기"
LangString LSTR_94 1042 "환경설정과 캐쉬 지우기"
LangString LSTR_95 1042 "미디어 플레이어 그 자체"
LangString LSTR_96 1042 "시작 메뉴에 아이콘을 추가합니다"
LangString LSTR_97 1042 "바탕화면에 아이콘을 추가합니다"
LangString LSTR_98 1042 "VLC 액티브엑스 플러그인"
LangString LSTR_99 1042 "DVD / CD 재생 등록"
LangString LSTR_100 1042 "지정한 파일 형식에 대해 VLC 미디어 재생기를 기본 프로그램으로 설정합니다"
LangString LSTR_101 1042 "컨텍스트 메뉴 항목 추가하기 ('VLC로 재생하기', 'VLC 재생목록에 추가하기')"
LangString LSTR_102 1042 "이전에 설치된 VLC 미디어 플레이어의 환경설정과 남은 캐쉬 파일을 완전히 삭제합니다"
LangString LSTR_103 1042 "이미 설치했습니다"
LangString LSTR_104 1042 "VLC 설치 방법을 선택하세요."
LangString LSTR_105 1042 "이전 버전의 VLC가 이미 설치되어 있습니다. 수행할 동작을 선택하고 다음을 눌러 계속하세요."
LangString LSTR_106 1042 "이전 설정값을 사용하여 VLC 업그레이드 (권장)"
LangString LSTR_107 1042 "설정을 변경하기 (고급)"
LangString LSTR_108 1042 "새 버전의 VLC가 이미 설치되어 있습니다! 이전 버전으로 다운그레이드는 권장하지 않습니다. 수행할 동작을 선택하고 다음을 눌러 계속하세요."
LangString LSTR_109 1042 "이전 설정을 사용하여 다운그레이드하기 (권장)"
LangString LSTR_110 1042 "수행할 관리 옵션을 선택하세요."
LangString LSTR_111 1042 "VLC 3.0.24 가 이미 설치되어 있습니다. 수행할 동작을 선택하고 다음을 눌러 계속하세요."
LangString LSTR_112 1042 "컴포넌트 추가/제거/재설치하기"
LangString LSTR_113 1042 "VLC 제거하기"
LangString LSTR_114 1042 "사용자 정의"
LangString LSTR_115 1042 취소
LangString LSTR_116 1042 "< 뒤로"
LangString LSTR_117 1042 "계속하시려면 '다음' 버튼을 눌러 주세요."
LangString LSTR_118 1042 "설치를 원하시는 구성 요소를 선택하여 주시기 바랍니다. $_CLICK"
LangString LSTR_119 1042 "설치 형태 선택:"
LangString LSTR_120 1042 "구성요소 직접 선택:"
LangString LSTR_121 1042 "설치하려는 구성 요소 선택:"
LangString LSTR_122 1042 "$(LSTR_132)(을)를 다음 폴더에 설치할 예정입니다. $\r$\n다른 폴더에 설치하고 싶으시면 '찾아보기' 버튼을 눌러서 다른 폴더를 선택해 주세요. $_CLICK"
LangString LSTR_123 1042 "설치 폴더"
LangString LSTR_124 1042 찾아보기...
LangString LSTR_125 1042 "$(LSTR_132)(을)를 다음 폴더에 설치합니다:"
LangString LSTR_126 1042 설치
LangString LSTR_127 1042 "설치를 시작하시려면 '설치' 버튼을 눌러 주세요."
LangString LSTR_128 1042 "자세히 보기"
LangString LSTR_129 1042 완료
LangString LSTR_130 1042 " "
LangString LSTR_131 1042 닫음
LangString LSTR_132 1042 "VLC media player"


; LANG: 1086
LangString LSTR_0 1086 "VideoLAN VLC media player"
LangString LSTR_1 1086 "Setup $(LSTR_2)"
LangString LSTR_2 1086 "VLC media player"
LangString LSTR_3 1086 "Ruang cakera keras yang ada: "
LangString LSTR_4 1086 "Ruang cakera keras yang diperlukan: "
LangString LSTR_5 1086 "Gagal menulis pada: "
LangString LSTR_8 1086 "Symbol tidak jumpa : "
LangString LSTR_9 1086 "Tidak dapat membuka: "
LangString LSTR_10 1086 "Membuat folder: "
LangString LSTR_11 1086 "Membuat pintasan: "
LangString LSTR_12 1086 "Membuat program unistall: "
LangString LSTR_13 1086 "Memadam fail: "
LangString LSTR_14 1086 "Akan dipadam ketika reboot: "
LangString LSTR_15 1086 "Tidak dapat membuat pintasan: "
LangString LSTR_16 1086 "Ralat penciptaan: "
LangString LSTR_17 1086 "Ralat ketika membuka data! Program Installer rosak"
LangString LSTR_19 1086 "ExecShell: "
LangString LSTR_20 1086 "Menjalankan: "
LangString LSTR_21 1086 "Mengekstrak: "
LangString LSTR_22 1086 "Ekstrak: ralat ketika menulis ke fail "
LangString LSTR_23 1086 "Installer rosak: opcode tidak lengkap"
LangString LSTR_24 1086 "OLE tidak ditemukan: "
LangString LSTR_25 1086 "Folder tujuan: "
LangString LSTR_26 1086 "Menghapuskan folder: "
LangString LSTR_29 1086 "Diabaikan: "
LangString LSTR_30 1086 "Salin terperinci ke clipboard"
LangString LSTR_32 1086 Bait
LangString LSTR_33 1086 " Kilo"
LangString LSTR_34 1086 " Mega"
LangString LSTR_35 1086 " Giga"
LangString LSTR_36 1086 Disarankan
LangString LSTR_37 1086 Minimum
LangString LSTR_38 1086 Penuh
LangString LSTR_39 1086 "Tidak dapat menulis pada fail: $\r$\n$\t$\"$0$\"$\r$\nKlik abort untuk membatalkan kemasukan,$\r$\nretry untuk cuba lagi, atau$\r$\nignore untuk abaikan fail ini."
LangString LSTR_40 1086 0
LangString LSTR_41 1086 "Assalamualaikum, Selamat datang ke $(LSTR_132) Setup Wizard"
LangString LSTR_42 1086 "MS Shell Dlg"
LangString LSTR_43 1086 "Setup Wizard akan membantu anda untuk memasukkan $(LSTR_132).$\r$\n$\r$\nSila tutup program aplikasi yang lain sebelum Setup ini dimulakan. Ini supaya tiada proses reboot komputer diperlukan.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1086 "Anda kini sedar akan hak anda. Klik Berikut untuk teruskan."
LangString LSTR_45 1086 "&Ke Depan >"
LangString LSTR_46 1086 Perlesenan
LangString LSTR_47 1086 "Sila baca teks lesen berikut sebelum memasukkan $(LSTR_132)."
LangString LSTR_48 1086 "Tekan Page Down untuk melihat teks selebihnya."
LangString LSTR_49 1086 "Pilih Komponen"
LangString LSTR_50 1086 "Pilih fungsi-fungsi dari $(LSTR_132) yang ingin dimasukkan."
LangString LSTR_51 1086 Penerangan
LangString LSTR_52 1086 "Alihkan tetikus ke komponen untuk mengetahui penerangannya."
LangString LSTR_53 1086 "Pilih Lokasi Kemasukan"
LangString LSTR_54 1086 "Pilih folder untuk memasukkan $(LSTR_132)."
LangString LSTR_55 1086 Pemasangan
LangString LSTR_56 1086 "Sila tunggu ketika $(LSTR_132) sedang dimasukkan."
LangString LSTR_57 1086 "Proses Selesai"
LangString LSTR_58 1086 "Setup sudah selesai."
LangString LSTR_59 1086 "Proses Dibatalkan"
LangString LSTR_60 1086 "Setup terbatal."
LangString LSTR_61 1086 &Selesai
LangString LSTR_62 1086 "Menyelesaikan $(LSTR_132) Setup Wizard"
LangString LSTR_63 1086 "$(LSTR_132) sudah dimasukkan di komputer anda.$\r$\n$\r$\nKlik Selesai untuk menutup Setup Wizard."
LangString LSTR_64 1086 "&Jalankan $(LSTR_132)"
LangString LSTR_65 1086 "Lawati Laman Sesawang pemain media VLC"
LangString LSTR_66 1086 8
LangString LSTR_67 1086 "Adakan anda yakin ingin membatalkan Setup $(LSTR_2)?"
LangString LSTR_68 1086 Main
LangString LSTR_69 1086 "VLC kelihatan dijalankan dan kini akan ditutup."
LangString LSTR_70 1086 "Pemasang tidak dapat menutup VLC, sila lakukannya secara manual."
LangString LSTR_71 1086 "Pemasangan dihenti paksa!"
LangString LSTR_72 1086 "Pemain Media (diperlukan)"
LangString LSTR_73 1086 "Memeriksa proses..."
LangString LSTR_74 1086 "Main dengan pemain media VLC"
LangString LSTR_75 1086 "Pintasan Menu Start"
LangString LSTR_76 1086 "Pintasan Atas Meja"
LangString LSTR_77 1086 "Pemalam Sesawang"
LangString LSTR_78 1086 "Pemalam ActiveX"
LangString LSTR_79 1086 "Mainbalik Cakera"
LangString LSTR_80 1086 "Main filem DVD"
LangString LSTR_81 1086 "Main CD audio"
LangString LSTR_82 1086 "Main filem VCD"
LangString LSTR_83 1086 "Main filem SVCD"
LangString LSTR_84 1086 "Main DVD audio"
LangString LSTR_85 1086 "Main fail video"
LangString LSTR_86 1086 "Main fail audio"
LangString LSTR_87 1086 "Main Blu-ray"
LangString LSTR_88 1086 "Kesatuan jenis fail"
LangString LSTR_89 1086 "Fail Audio"
LangString LSTR_90 1086 "Fail Video"
LangString LSTR_91 1086 Lain-lain
LangString LSTR_92 1086 "Menu Konteks"
LangString LSTR_93 1086 "Tambah kepada Senarai Main pemain media VLC"
LangString LSTR_94 1086 "Hapus keutamaan dan cache"
LangString LSTR_95 1086 "Pemain media itu sendiri"
LangString LSTR_96 1086 "Tambah ikon pada menu mula untuk capaian mudah"
LangString LSTR_97 1086 "Tambah ikon pada atas meja untuk capaian mudah"
LangString LSTR_98 1086 "Pemalam ActiveX VLC"
LangString LSTR_99 1086 "Pendaftaran mainbalik DVD dan CD"
LangString LSTR_100 1086 "Tetapkan pemain media sebagai aplikasi lalai untuk jenis fail yang ditentukan"
LangString LSTR_101 1086 "Tambah item menu konteks ('Main Dengan VLC' dan 'Tambah Ke Senarai Main VLC')"
LangString LSTR_102 1086 "Hapus keutamaan dan fail cache pemain media VLC yang berbaki daripada pemasangan terdahulu"
LangString LSTR_103 1086 "Telah sedia terpasang"
LangString LSTR_104 1086 "Pilih bagaimana anda ingin memasang VLC."
LangString LSTR_105 1086 "Versi VLC lama sudah dipasang pada sistem anda. Pilih operasi yang anda ingin lakukan dan klik Berikut untuk teruskan."
LangString LSTR_106 1086 "Tatar VLC menggunakan tetapan terdahulu (disarankan)"
LangString LSTR_107 1086 "Tukar tetapan (lanjutan)"
LangString LSTR_108 1086 "Versi terbaru sudah dipasang! Adalah disarankan yang anda menyahtatar ke versi terdahulu. Pilih operasi yang anda ingin lakukan dan klik Berikut untuk teruskan."
LangString LSTR_109 1086 "Nyahtatar VLC menggunakan tetapan terdahulu (disarankan)"
LangString LSTR_110 1086 "Pilih pilihan penyelenggaraan untuk dilakukan."
LangString LSTR_111 1086 "VLC 3.0.24 sedia terpasang. Pilih operasi yang anda ingin lakukan dan klik Berikut untuk teruskan."
LangString LSTR_112 1086 "Tambah/Buang/Pasang Semula komponen"
LangString LSTR_113 1086 "Nyahpasang VLC"
LangString LSTR_114 1086 Custom
LangString LSTR_115 1086 Batal
LangString LSTR_116 1086 "< &Ke Belakang"
LangString LSTR_117 1086 "Klik Ke Depan untuk teruskan."
LangString LSTR_118 1086 "Beri tanda dicheckbox pada komponen yang ingin dimasukkan and hilangkan tanda pada komponen yang tidak perlu dimasukkan. $_CLICK"
LangString LSTR_119 1086 "Pilih kemasukan:"
LangString LSTR_120 1086 "Atau, pilih komponen berikut untuk dimasukkan:"
LangString LSTR_121 1086 "Pilih komponen-komponen untuk dimasukkan:"
LangString LSTR_122 1086 "Setup akan memasukkan $(LSTR_132) pada folder berikut. Untuk memilih folder lainnya, klik Selusur dan pilih folder pilihan anda. $_CLICK"
LangString LSTR_123 1086 "Folder tujuan"
LangString LSTR_124 1086 S&elusur...
LangString LSTR_125 1086 "Pilih folder untuk memasukkan $(LSTR_132):"
LangString LSTR_126 1086 &Masukkan
LangString LSTR_127 1086 "Klik Masukkan untuk kemasukkan."
LangString LSTR_128 1086 "Buka &lagi"
LangString LSTR_129 1086 Selesai
LangString LSTR_130 1086 " "
LangString LSTR_131 1086 &Tutup
LangString LSTR_132 1086 "VLC media player"


; LANG: 1044
LangString LSTR_0 1044 "VideoLAN VLC media player"
LangString LSTR_1 1044 "$(LSTR_2) installasjon"
LangString LSTR_2 1044 "VLC media player"
LangString LSTR_3 1044 "Ledig plass: "
LangString LSTR_4 1044 "Nødvendig plass: "
LangString LSTR_5 1044 "Kan ikke skrive: "
LangString LSTR_8 1044 "Kunne ikke finne symbol: "
LangString LSTR_9 1044 "Kunne ikke laste: "
LangString LSTR_10 1044 "Lag mappe: "
LangString LSTR_11 1044 "Lag snarvei: "
LangString LSTR_12 1044 "Avinstallasjon laget: "
LangString LSTR_13 1044 "Slett fil: "
LangString LSTR_14 1044 "Slett ved omstart: "
LangString LSTR_15 1044 "Feil under opprettelse av snarvei: "
LangString LSTR_16 1044 "Feil under opprettelse av: "
LangString LSTR_17 1044 "Feil under utpakking av data! Installasjonsprogrammet kan være skadet."
LangString LSTR_19 1044 "ExecShell: "
LangString LSTR_20 1044 "Kjøre: "
LangString LSTR_21 1044 "Pakk ut: "
LangString LSTR_22 1044 "Pakk ut: Feil under skriving til fil "
LangString LSTR_23 1044 "Installasjonsprogrammet er skadet: ukjent kode"
LangString LSTR_24 1044 "Ingen OLE for: "
LangString LSTR_25 1044 "Ut-mappe: "
LangString LSTR_26 1044 "Fjern mappe: "
LangString LSTR_29 1044 "Hoppet over: "
LangString LSTR_30 1044 "Kopier detaljer til utklippstavlen"
LangString LSTR_32 1044 B
LangString LSTR_33 1044 " K"
LangString LSTR_34 1044 " M"
LangString LSTR_35 1044 " G"
LangString LSTR_36 1044 Anbefalt
LangString LSTR_37 1044 Minimum
LangString LSTR_38 1044 Fullstendig
LangString LSTR_39 1044 "Feil under åpning av fil for skriving: $\r$\n$\t\$\"$0\$\"$\r$\nTrykk Avbryt for å avbryte installasjonen,$\r$\nPrøv igjen for å prøve igjen, eller$\r$\nIgnorer for å hoppe over denne filen"
LangString LSTR_40 1044 0
LangString LSTR_41 1044 "Velkommen til veiviseren for installasjon av $(LSTR_132) "
LangString LSTR_42 1044 "MS Shell Dlg"
LangString LSTR_43 1044 "Denne veiviseren vil lede deg gjennom installasjonen av $(LSTR_132).$\r$\n$\r$\nDet anbefales at du avslutter alle andre programmer før du fortsetter. Dette vil la installasjonsprogrammet forandre på systemfiler uten at du må starte datamaskinen på nytt.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1044 "Du er nå klar over rettighetene dine.  Trykk «Neste» for å fortsette."
LangString LSTR_45 1044 "&Neste >"
LangString LSTR_46 1044 Lisensavtale
LangString LSTR_47 1044 "Vennligst les gjennom lisensavtalen før du starter installasjonen av $(LSTR_132)."
LangString LSTR_48 1044 "Trykk Page Down knappen for å se resten av lisensavtalen."
LangString LSTR_49 1044 "Velg komponenter"
LangString LSTR_50 1044 "Velg hvilke deler av $(LSTR_132) du ønsker å installere."
LangString LSTR_51 1044 Beskrivelse
LangString LSTR_52 1044 "Beveg musen over komponentene for å se beskrivelsen."
LangString LSTR_53 1044 "Velg installasjonsmappe"
LangString LSTR_54 1044 "Velg hvilken mappe du vil installere $(LSTR_132) i."
LangString LSTR_55 1044 "Installasjonen pågår"
LangString LSTR_56 1044 "Vennligst vent mens $(LSTR_132) blir installert."
LangString LSTR_57 1044 "Installasjonen er ferdig"
LangString LSTR_58 1044 "Installasjonen ble fullført uten feil."
LangString LSTR_59 1044 "Installasjonen er avbrutt"
LangString LSTR_60 1044 "Installasjonen ble ikke fullført riktig."
LangString LSTR_61 1044 &Ferdig
LangString LSTR_62 1044 "Avslutter $(LSTR_132) installasjonsveiviser"
LangString LSTR_63 1044 "$(LSTR_132) er klart til bruk på din datamskin.$\r$\n$\r$\nTrykk Ferdig for å avslutte installasjonsprogrammet."
LangString LSTR_64 1044 "&Kjør $(LSTR_132)"
LangString LSTR_65 1044 "Se nettstedet til VideoLAN VLC mediespiller"
LangString LSTR_66 1044 8
LangString LSTR_67 1044 "Er du sikker på at du vil avslutte installasjonen av $(LSTR_2)?"
LangString LSTR_68 1044 "Spill av"
LangString LSTR_69 1044 "VLC ser ut til å kjøre og vil nå lukkes."
LangString LSTR_70 1044 "Denne veiviseren kunne ikke lukke VLC, gjør det manuelt."
LangString LSTR_71 1044 "Installasjonen ble avbrutt!"
LangString LSTR_72 1044 "Mediaspiller (nødvendig)"
LangString LSTR_73 1044 "Sjekker prosesser…"
LangString LSTR_74 1044 "Spill i VLC mediespiller"
LangString LSTR_75 1044 "Snarvei fra startmenyen"
LangString LSTR_76 1044 Skrivebordssnarvei
LangString LSTR_77 1044 Nettillegg
LangString LSTR_78 1044 ActiveX-tillegg
LangString LSTR_79 1044 "Avspilling av disker"
LangString LSTR_80 1044 "Spill DVD-film"
LangString LSTR_81 1044 "Spill lyd-CD"
LangString LSTR_82 1044 "Spill VCD-film"
LangString LSTR_83 1044 "Spill SVCD-film"
LangString LSTR_84 1044 "Spill lyd-DVDer"
LangString LSTR_85 1044 "Spill videofiler"
LangString LSTR_86 1044 "Spill lydfiler"
LangString LSTR_87 1044 "Spill av Blu-ray"
LangString LSTR_88 1044 "Assosiasjoner for filtyper"
LangString LSTR_89 1044 Lydfiler
LangString LSTR_90 1044 Videofiler
LangString LSTR_91 1044 Annet
LangString LSTR_92 1044 Sammenhengsmenyer
LangString LSTR_93 1044 "Legg til i VLCs spilleliste"
LangString LSTR_94 1044 "Slett innstillinger og hurtiglager"
LangString LSTR_95 1044 "Selve mediespilleren"
LangString LSTR_96 1044 "Legger til ikoner i startmenyen for lett tilgang"
LangString LSTR_97 1044 "Legger til ikon på skrivebordet for lett tilgang"
LangString LSTR_98 1044 "ActiveX-tillegget for VLC"
LangString LSTR_99 1044 "Registrering av avspilling for CD- og DVD-er"
LangString LSTR_100 1044 "Gjør VLC-mediespilleren til standardprogram for den angitte filtypen"
LangString LSTR_101 1044 "Legger til menyinlegg («Spill i VLC» og Legg til i spilleliste i VLC»)"
LangString LSTR_102 1044 "Sletter innstillingene og og mellomlageret som er til overs fra tidligere VLC-installasjoner"
LangString LSTR_103 1044 "Allerede installert"
LangString LSTR_104 1044 "Velg hvordan du vil installere VLC."
LangString LSTR_105 1044 "En eldre versjon av VLC er installert på systemet. Velg hva som skal gjøres og trykk «Neste» for å fortsette."
LangString LSTR_106 1044 "Oppgrader VLC med de forrige innstillingene (anbefalt)"
LangString LSTR_107 1044 "Endre innstillinger (avansert)"
LangString LSTR_108 1044 "En nyere versjon av VLC er allerede installert! Det anbefales at du ikke nedgraderer til en tidligere versjon. Velg hva som skal gjøres og trykk «Neste» for å fortsette."
LangString LSTR_109 1044 "Nedgrader VLC med de tidligere innstillingene (anbefalt)"
LangString LSTR_110 1044 "Velg hva som skal vedlikeholdes"
LangString LSTR_111 1044 "VLC 3.0.24 er allerede installert. Velg hva du vil gjøre og trykk «Neste» for å fortsette."
LangString LSTR_112 1044 "Legg til/Fjern/Ominstaller komponenter"
LangString LSTR_113 1044 "Avinstaller VLC"
LangString LSTR_114 1044 Egendefinert
LangString LSTR_115 1044 Avbryt
LangString LSTR_116 1044 "< &Tilbake"
LangString LSTR_117 1044 "Trykk Neste for å fortsette."
LangString LSTR_118 1044 "Merk komponentene du vil installere og fjern merkingen for de du ikke vil installere. $_CLICK"
LangString LSTR_119 1044 "Velg hvilken måte du vil installere på:"
LangString LSTR_120 1044 "Eller merk de valgfrie komponentene du ønsker å installere:"
LangString LSTR_121 1044 "Merk komponenter du vil installere:"
LangString LSTR_122 1044 "$(LSTR_2) vil bli installert i følgende mappe. For å velge en annen mappe, trykk Bla gjennom. $_CLICK"
LangString LSTR_123 1044 Målmappe
LangString LSTR_124 1044 "Bla &gjennom..."
LangString LSTR_125 1044 "Velg mappe du vil installere $(LSTR_2) i:"
LangString LSTR_126 1044 &Installer
LangString LSTR_127 1044 "Trykk Installer for å starte installasjonen."
LangString LSTR_128 1044 "Vis &detaljer"
LangString LSTR_129 1044 Ferdig
LangString LSTR_130 1044 " "
LangString LSTR_131 1044 &Lukk
LangString LSTR_132 1044 "VLC media player"


; LANG: 1054
LangString LSTR_0 1054 "VideoLAN VLC media player"
LangString LSTR_1 1054 "$(LSTR_2) ติดตั้ง"
LangString LSTR_2 1054 "VLC media player"
LangString LSTR_3 1054 "มีพื้นที่เหลือ: "
LangString LSTR_4 1054 "ต้องการพื้นที่: "
LangString LSTR_5 1054 "ไม่สามารถเขียน: "
LangString LSTR_8 1054 "ไม่สามารถหาสัญลักษณ์ได้: "
LangString LSTR_9 1054 "ไม่สามารถโหลดได้: "
LangString LSTR_10 1054 "สร้างแฟ้ม: "
LangString LSTR_11 1054 "สร้างชอร์ตคัท: "
LangString LSTR_12 1054 "สร้างตัวยกเลิกการติดตั้ง: "
LangString LSTR_13 1054 "ลบไฟล์: "
LangString LSTR_14 1054 "ลบตอนรีบูท: "
LangString LSTR_15 1054 "มีปัญหาสร้างไฟล์ชอร์ตคัท: "
LangString LSTR_16 1054 "มีปัญหาในการสร้างไฟล์: "
LangString LSTR_17 1054 "มีปัญหาในการคลายข้อมูล! เกิดข้อผิดพลาดจากตัวติดตั้ง?"
LangString LSTR_19 1054 "รันเชลล์ไฟล์: "
LangString LSTR_20 1054 "รันไฟล์: "
LangString LSTR_21 1054 "แตกไฟล์: "
LangString LSTR_22 1054 "แตกไฟล์: เกิดปัญหาในการเขียนไฟล์"
LangString LSTR_23 1054 "ตัวติดตั้งมีปัญหา: รหัส opcode ผิดพลาด"
LangString LSTR_24 1054 "ไม่มี OLE สำหรับ: "
LangString LSTR_25 1054 "แฟ้มทีติดตั้ง: "
LangString LSTR_26 1054 "ลบแฟ้ม: "
LangString LSTR_29 1054 "ข้าม: "
LangString LSTR_30 1054 คัดลอกรายละเอียดลงคลิปบอร์ด
LangString LSTR_32 1054 B
LangString LSTR_33 1054 " K"
LangString LSTR_34 1054 " M"
LangString LSTR_35 1054 " G"
LangString LSTR_36 1054 ตามที่แนะนำ
LangString LSTR_37 1054 ต่ำสุด
LangString LSTR_38 1054 เต็มที่
LangString LSTR_39 1054 "ไม่สามารถเปิดไฟล์สำหรับเขียนได้: $\r$\n$\r$\n$0$\r$\n$\r$\nกด ยกเลิก เพื่อหยุดการติดตั้ง,$\r$\nลองอีกครั้ง เพื่อลองอีกครั้ง, หรือ$\r$\nเพิกเฉย เพื่อข้ามไฟล์นี้."
LangString LSTR_40 1054 0
LangString LSTR_41 1054 "ยินดีต้อนรับเข้าสู่การติดตั้งโปรแกรม $(LSTR_132) "
LangString LSTR_42 1054 "MS Shell Dlg"
LangString LSTR_43 1054 "ตัวติดตั้งอัติโนมัติจะนำคุณไปสู่การติดตั้งของ $(LSTR_132).$\r$\n$\r$\nเราขอแนะนำให้ปิดโปรแกรมอื่นๆให้หมดก่อนที่จะเริ่มติดตั้ง, นี่จะเป็นการอัปเดทไฟล์ได้ง่ายขึ้นโดยคุณไม่จำเป็นต้องทำการรีบูทคอมพิวเตอร์ของคุณ$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1054 "คุณได้ตระหนักในสิทธิ์การใช้งานด้านต่างๆ แล้ว กด 'ถัดไป' เพื่อทำต่อ "
LangString LSTR_45 1054 "&ต่อไป >"
LangString LSTR_46 1054 ข้อตกลงเรื่องลิขสิทธิ์
LangString LSTR_47 1054 "โปรดอ่านทวนลิขสิทธิ์ในหัวข้อต่างๆอีกครั้งก่อนที่คุณจะทำการติดตั้ง $(LSTR_132)."
LangString LSTR_48 1054 "กด Page Down เพื่ออ่านข้อตกลงทั้งหมด"
LangString LSTR_49 1054 เลือกส่วนประกอบ
LangString LSTR_50 1054 "เลือกสิ่งที่คุณต้องการใช้งานจาก $(LSTR_132) ที่คุณต้องการติดตั้ง"
LangString LSTR_51 1054 รายละเอียด
LangString LSTR_52 1054 ขยับเมาส์ของคุณเหนือส่วนประกอบเพื่อดูรายละเอียด
LangString LSTR_53 1054 เลือกที่ที่ต้องการติดตั้ง
LangString LSTR_54 1054 "เลือกแผ้มที่ต้องการติดตั้ง $(LSTR_132)."
LangString LSTR_55 1054 กำลังติดตั้ง
LangString LSTR_56 1054 "โปรดรอในขณะที่ $(LSTR_132) กำลังถูกติดตั้ง"
LangString LSTR_57 1054 การติดตั้งเสร็จสิ้น
LangString LSTR_58 1054 การติดตั้งเสร็จสมบูรณ์
LangString LSTR_59 1054 การติดตั้งถูกยกเลิก
LangString LSTR_60 1054 การติดตั้งไม่เสร็จสมบูรณ์
LangString LSTR_61 1054 &เสร็จสิ้น
LangString LSTR_62 1054 "การติดตั้งอัติโนมัติของ  $(LSTR_132) กำลังเสร็จสิ้น"
LangString LSTR_63 1054 "$(LSTR_132) ได้ถูกติดตั้งลงในเครื่องคอมพิวเตอร์ของคุณแล้ว$\r$\n$\r$\nกด เสร็จสิ้นเพื่อปิดตัวติดตั้งอัติโนมัติ"
LangString LSTR_64 1054 "&รัน $(LSTR_132)"
LangString LSTR_65 1054 "เยี่ยมชมเว็บไซต์ VideoLAN ของโปรแกรมเล่นสื่อ VLC"
LangString LSTR_66 1054 8
LangString LSTR_67 1054 "คุณแน่ใจหรือว่าคุณต้องการจะออกจากการติดตั้งของ $(LSTR_2)?"
LangString LSTR_68 1054 เล่น
LangString LSTR_69 1054 "ดูเหมือนว่า VLC กำลังทำงานอยู่ และจะถูกปิดในขณะนี้"
LangString LSTR_70 1054 "ตัวติดตั้งนี้ไม่สามารถปิด VLC ได้ กรุณาปิดด้วยตัวคุณเอง"
LangString LSTR_71 1054 ยกเลิกการติดตั้งแล้ว!
LangString LSTR_72 1054 "โปรแกรมเล่นสื่อ (จำเป็นต้องเลือก)"
LangString LSTR_73 1054 กำลังตรวจสอบกระบวนการ...
LangString LSTR_74 1054 "เล่นด้วยโปรแกรมเล่นสื่อ VLC"
LangString LSTR_75 1054 "ทางลัดเมนู $\"เริ่ม$\""
LangString LSTR_76 1054 ทางลัดเดสก์ท็อป
LangString LSTR_77 1054 "ปลั๊กอิน Web"
LangString LSTR_78 1054 "ปลั๊กอิน ActiveX"
LangString LSTR_79 1054 การเล่นแผ่นดิสก์
LangString LSTR_80 1054 "เล่น DVD ภาพยนตร์"
LangString LSTR_81 1054 "เล่น CD เสียง"
LangString LSTR_82 1054 "เล่น VCD ภาพยนตร์"
LangString LSTR_83 1054 "เล่น SVCD ภาพยนตร์"
LangString LSTR_84 1054 "เล่น DVD เพลง"
LangString LSTR_85 1054 เล่นไฟล์วิดีโอ
LangString LSTR_86 1054 เล่นไฟล์เสียง
LangString LSTR_87 1054 เล่นบลูเรย์
LangString LSTR_88 1054 การเชื่อมโยงชนิดไฟล์
LangString LSTR_89 1054 ไฟล์เสียง
LangString LSTR_90 1054 ไฟล์วิดีโอ
LangString LSTR_91 1054 อื่นๆ
LangString LSTR_92 1054 เมนูบริบท
LangString LSTR_93 1054 "เพิ่มลงในเพลย์ลิสต์ของโปรแกรมเล่นสื่อ VLC"
LangString LSTR_94 1054 ลบการตั้งค่าและแคช
LangString LSTR_95 1054 ปลั๊กอินของตัวเล่นสื่อเอง
LangString LSTR_96 1054 "นำไอคอนไว้ตรงเมนู $\"เริ่ม$\" ของคุณ เพื่อให้ง่ายต่อการเข้าใช้งาน"
LangString LSTR_97 1054 "นำไอคอนไว้ตรงเดสก์ท็อปของคุณ เพื่อให้ง่ายต่อการเข้าใช้งาน"
LangString LSTR_98 1054 "ปลั๊กอินของ VLC ActiveX"
LangString LSTR_99 1054 "กำหนดการใช้งานการเล่น DVD และ CD"
LangString LSTR_100 1054 "ตั้งโปรแกรมเล่นสื่อ VLC ให้เป็นแอปพลิเคชันเริ่มต้นสำหรับชนิดไฟล์ที่ระบุ"
LangString LSTR_101 1054 "เพิ่มรายการเมนูบริบท ('เล่นด้วย VLC' และ 'เพิ่มลงในเพลย์ลิสต์ของ VLC')"
LangString LSTR_102 1054 "ลบแฟ้มค่าปรับแต่งและแคช ของโปรแกรมเล่นสื่อ VLC ที่เหลือทิ้งไว้จากการติดตั้งในครั้งก่อน"
LangString LSTR_103 1054 ติดตั้งเรียบร้อยแล้ว
LangString LSTR_104 1054 "เลือกว่าคุณต้องการที่จะติดตั้ง VLC อย่างไร"
LangString LSTR_105 1054 "ระบบของคุณมี VLC เวอร์ชั่นเก่าติดตั้งไว้อยู่ก่อนแล้ว เลือกการดำเนินการที่คุณต้องการทำ และคลิก $\"ถัดไป$\" เพื่อทำต่อ"
LangString LSTR_106 1054 "อัปเกรด VLC โดยใช้การตั้งค่าก่อนหน้านี้ (แนะนำ)"
LangString LSTR_107 1054 "เปลี่ยนการตั้งค่า (ขั้นสูง)"
LangString LSTR_108 1054 "มี VLC เวอร์ชั่นที่ใหม่กว่าติดตั้งอยู่แล้ว! ไม่แนะนำให้คุณดาวน์เกรดเป็นเวอร์ชั่นที่เก่ากว่า เลือกการดำเนินการที่คุณต้องการทำ และคลิก $\"ถัดไป$\" เพื่อทำต่อ"
LangString LSTR_109 1054 "ดาวน์เกรด VLC โดยใช้การตั้งค่าก่อนหน้านี้ (แนะนำ)"
LangString LSTR_110 1054 เลือกตัวเลือกการบำรุงรักษาที่จะดำเนินการ
LangString LSTR_111 1054 "VLC 3.0.24 ถูกติดตั้งไว้อยู่แล้ว เลือกการดำเนินการที่คุณต้องการทำ และคลิก $\"ถัดไป$\" เพื่อทำต่อ"
LangString LSTR_112 1054 เพิ่ม/ลบ/ติดตั้งส่วนประกอบใหม่
LangString LSTR_113 1054 "ถอนการติดตั้ง VLC"
LangString LSTR_114 1054 กำหนดเอง
LangString LSTR_115 1054 ยกเลิก
LangString LSTR_116 1054 "< &กลับไป"
LangString LSTR_117 1054 "กด ต่อไป เพื่อเริ่มระบบอัติโนมัติ"
LangString LSTR_118 1054 "เลื่อกสิ่งที่คุณต้องการติดตั้งและไม่เลือกสิ่งที่คุณไม่ต้องการติดตั้ง $_CLICK"
LangString LSTR_119 1054 เลือกวิธีการการติดตั้ง:
LangString LSTR_120 1054 "หรือ, เลือกตัวเลือกที่คุณต้องการติดตั้ง:"
LangString LSTR_121 1054 เลือกสิ่งที่คุณต้องการติดตั้ง:
LangString LSTR_122 1054 "ตัวติดตั้งจะทำการติดตั้ง $(LSTR_132) ลงในแฟ้มดังต่อไปนี้, ถ้าต้องการติดตั้งลงในแฟ้มอื่น, กด เรียกดูและเลือกแฟ้มอื่น $_CLICK"
LangString LSTR_123 1054 แฟ้มที่ต้องการติดตั้ง
LangString LSTR_124 1054 เ&รียกดู...
LangString LSTR_125 1054 "เลือกแฟ้มที่ต้องการติดตั้ง $(LSTR_132) ใน:"
LangString LSTR_126 1054 &ติดตั้ง
LangString LSTR_127 1054 "กด  ติดตั้ง เพื่อทำการติดตั้ง"
LangString LSTR_128 1054 &รายละเอียด
LangString LSTR_129 1054 เสร็จสิ้นแล้ว
LangString LSTR_130 1054 " "
LangString LSTR_131 1054 &ปิด
LangString LSTR_132 1054 "VLC media player"


; LANG: 1055
LangString LSTR_0 1055 "VideoLAN VLC media player"
LangString LSTR_1 1055 "$(LSTR_2) Kurulumu"
LangString LSTR_2 1055 "VLC media player"
LangString LSTR_3 1055 "Kullanılabilir boş alan: "
LangString LSTR_4 1055 "Gereken boş alan: "
LangString LSTR_5 1055 "Yazılamadı: "
LangString LSTR_8 1055 "Simge bulunamadı: "
LangString LSTR_9 1055 "Yüklenemedi: "
LangString LSTR_10 1055 "Dizin oluştur: "
LangString LSTR_11 1055 "Kısayol oluştur: "
LangString LSTR_12 1055 "Kaldırma uygulaması oluştur: "
LangString LSTR_13 1055 "Dosya sil: "
LangString LSTR_14 1055 "Açılışta sil: "
LangString LSTR_15 1055 "Kısayol oluşturulurken hata meydana geldi: "
LangString LSTR_16 1055 "Oluşturma hatası: "
LangString LSTR_17 1055 "Veriyi açarken hata meydana geldi! Acaba kurulum uygulaması mı bozuk?"
LangString LSTR_19 1055 "ExecShell: "
LangString LSTR_20 1055 "Çalıştır: "
LangString LSTR_21 1055 "Aç: "
LangString LSTR_22 1055 "Açma: Dosyaya yazarken hata meydana geldi "
LangString LSTR_23 1055 "Kurulum bozuk: Geçersiz kod"
LangString LSTR_24 1055 "OLE yok: "
LangString LSTR_25 1055 "Çıktı dizini: "
LangString LSTR_26 1055 "Dizini sil: "
LangString LSTR_29 1055 "Atlandı: "
LangString LSTR_30 1055 "Ayrıntıları panoya kopyala"
LangString LSTR_32 1055 B
LangString LSTR_33 1055 " K"
LangString LSTR_34 1055 " M"
LangString LSTR_35 1055 " G"
LangString LSTR_36 1055 Önerilen
LangString LSTR_37 1055 "En Düşük"
LangString LSTR_38 1055 Tam
LangString LSTR_39 1055 "Dosya yazmak için açılırken hata meydana geldi: $\r$\n$\r$\n$0$\r$\n$\r$\nKurulumu durdurmak için Dur düğmesine,$\r$\nyeniden denemek için Yeniden Dene düğmesine,$\r$\nbu dosyayı atlamak için Yoksay düğmesine basın."
LangString LSTR_40 1055 0
LangString LSTR_41 1055 "$(LSTR_132) Kurulum sihirbazına hoş geldiniz"
LangString LSTR_42 1055 "MS Shell Dlg"
LangString LSTR_43 1055 "Bu sihirbaz size $(LSTR_132) kurulumu boyunca rehberlik edecektir.$\r$\n$\r$\nKurulumu başlatmadan önce çalışan diğer programlari kapatmanızı öneririz. Böylece bilgisayarınızı yeniden başlatmadan bazı sistem dosyaları sorunsuz kurulabilir.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1055 "Artık haklarınızı biliyorsunuz. Devam etmek için Sonraki düğmesine tıklayın."
LangString LSTR_45 1055 "İ&leri >"
LangString LSTR_46 1055 "Lisans Sözleşmesi"
LangString LSTR_47 1055 "Lütfen $(LSTR_132) programını kurmadan önce sözleşmeyi okuyunuz."
LangString LSTR_48 1055 "Sözleşmenin geri kalanını okumak için 'page down' tuşuna basabilirsiniz."
LangString LSTR_49 1055 "Bileşen seçimi"
LangString LSTR_50 1055 "Lütfen $(LSTR_132) için kurmak istediginiz bileşenleri seçiniz."
LangString LSTR_51 1055 Açıklama
LangString LSTR_52 1055 "Bileşenlerin açıklamalarını görmek için imleci bileşen üzerine götürün."
LangString LSTR_53 1055 "Hedef dizini seçimi"
LangString LSTR_54 1055 "$(LSTR_132) programını kurmak istediğiniz dizini şeçiniz."
LangString LSTR_55 1055 Kuruluyor
LangString LSTR_56 1055 "Lütfen $(LSTR_132) kurulurken bekleyiniz."
LangString LSTR_57 1055 "Kurulum Tamamlandı"
LangString LSTR_58 1055 "Kurulum başarıyla tamamlandı."
LangString LSTR_59 1055 "Kurulum İptal Edildi"
LangString LSTR_60 1055 "Kurulum tam olarak tamamlanmadı."
LangString LSTR_61 1055 &Bitir
LangString LSTR_62 1055 "$(LSTR_132) Kurulum sihirbazı tamamlanıyor."
LangString LSTR_63 1055 "$(LSTR_132)  bilgisayariniza yüklendi.$\r$\n$\r$\nLütfen 'Bitir'e basarak kurulumu sonlandırın."
LangString LSTR_64 1055 "$(LSTR_132) programını çalıştır"
LangString LSTR_65 1055 "VideoLAN VLC web sitesine git"
LangString LSTR_66 1055 8
LangString LSTR_67 1055 "$(LSTR_2) kurulumundan çıkmak istediğinize emin misiniz?"
LangString LSTR_68 1055 Oynat
LangString LSTR_69 1055 "VLC çalışıyor görünüyor ve şimdi kapatılacak."
LangString LSTR_70 1055 "Kurucu etkin VLC uygulamasını kapatamadı, lütfen el ile kapatın."
LangString LSTR_71 1055 "Kurulum iptal edildi!"
LangString LSTR_72 1055 "Ortam Oynatıcısı (zorunlu)"
LangString LSTR_73 1055 "İşlemler denetleniyor..."
LangString LSTR_74 1055 "VLC ile Oynat"
LangString LSTR_75 1055 "Başlat Menüsü Kısayolu"
LangString LSTR_76 1055 "Masaüstü Kısayolu"
LangString LSTR_77 1055 "Web eklentileri"
LangString LSTR_78 1055 "ActiveX eklentisi"
LangString LSTR_79 1055 "Disk Oynatımı"
LangString LSTR_80 1055 "DVD film oynatımı"
LangString LSTR_81 1055 "Ses CD oynatımı"
LangString LSTR_82 1055 "VCD film oynatımı"
LangString LSTR_83 1055 "SVCD film oynatımı"
LangString LSTR_84 1055 "Ses DVD oynatımı"
LangString LSTR_85 1055 "Görüntü dosyalarının oynatımı"
LangString LSTR_86 1055 "Ses dosyalarının oynatımı"
LangString LSTR_87 1055 "Blu-Ray oynatımı"
LangString LSTR_88 1055 "Dosya türü ilişkilendirmeleri"
LangString LSTR_89 1055 "Ses Dosyaları"
LangString LSTR_90 1055 "Görüntü Dosyaları"
LangString LSTR_91 1055 Diğer
LangString LSTR_92 1055 "Sağ Tık Menüleri"
LangString LSTR_93 1055 "VLC Oynatma Listesine Ekle"
LangString LSTR_94 1055 "Ayarları ve ön belleği sil"
LangString LSTR_95 1055 "Ortam oynatıcısının kendisi"
LangString LSTR_96 1055 "Başlat menünüze kolay erişim simgeleri ekler"
LangString LSTR_97 1055 "Masaüstünüze kolay erişim simgeleri ekler"
LangString LSTR_98 1055 "VLC ActiveX eklentisi"
LangString LSTR_99 1055 "DVD ve CD oynatma kaydı"
LangString LSTR_100 1055 "VLC ortam oynatıcısını belirtilen dosya türü için varsayılan uygulama olarak ayarlar"
LangString LSTR_101 1055 "Sağ tık menüsü ögelerini ekler ('VLC ile Oynat' ve 'VLC oynatma Listesine Ekle')"
LangString LSTR_102 1055 "VLC ortam oynatıcısının önceki kurulumlarından kalan ayarları ve ön bellek dosyalarını siler"
LangString LSTR_103 1055 "Zaten Kurulu"
LangString LSTR_104 1055 "VLC uygulamasını nasıl kurmak istediğinizi seçin."
LangString LSTR_105 1055 "Sisteminizde eski bir VLC sürümü kurulu. Yapmak istediğiniz işlemi seçip Sonraki düğmesine tıklayın."
LangString LSTR_106 1055 "Önceki ayarlar kullanılarak VLC güncellensin (önerilir)"
LangString LSTR_107 1055 "Ayarları değiştir (gelişmiş)"
LangString LSTR_108 1055 "Daha yeni bir VLC sürümü zaten kurulu! Eski bir sürüme geri dönmeniz önerilmez. Yapmak istediğiniz işlemi seçip Sonraki düğmesine tıklayın."
LangString LSTR_109 1055 "Önceki ayarlar kullanılarak VLC sürümü düşürülsün (önerilir)"
LangString LSTR_110 1055 "Yürütmek istediğiniz bakım işlemini seçin."
LangString LSTR_111 1055 "VLC 3.0.24 zaten kurulu. Yapmak istediğiniz işlemi seçip Sonraki düğmesine tıklayın."
LangString LSTR_112 1055 "Bileşenleri Ekle/Sil/Yeniden Kur"
LangString LSTR_113 1055 "VLC Uygulamasını Kaldır"
LangString LSTR_114 1055 Özel
LangString LSTR_115 1055 Vazgeç
LangString LSTR_116 1055 "< &Geri"
LangString LSTR_117 1055 "Devam etmek için İleri düğmesine basın."
LangString LSTR_118 1055 "Kurmak istediğiniz bileşenleri işaretleyip kurmak istemediklerinizi işaretlemeden bırakın. $_CLICK"
LangString LSTR_119 1055 "Kurulum türünü seçin:"
LangString LSTR_120 1055 "ya da isteğe bağlı olarak kurmak istediğiniz bileşenleri seçin:"
LangString LSTR_121 1055 "Kurulacak bileşenleri seçin:"
LangString LSTR_122 1055 "$(LSTR_132) aşağıdaki dizinde kurulacak. Farklı bir dizinde kurmak için Gözat düğmesine basıp başka bir dizin seçin. $_CLICK"
LangString LSTR_123 1055 "Hedef Dizin"
LangString LSTR_124 1055 &Gözat...
LangString LSTR_125 1055 "$(LSTR_132) uygulamasının kurulacağı dizini seçin:"
LangString LSTR_126 1055 &Kur
LangString LSTR_127 1055 "Kurulumu başlatmak için Kur düğmesine basın."
LangString LSTR_128 1055 "&Ayrıntıları göster"
LangString LSTR_129 1055 Tamamlandı
LangString LSTR_130 1055 " "
LangString LSTR_131 1055 &Kapat
LangString LSTR_132 1055 "VLC media player"


; LANG: 1058
LangString LSTR_0 1058 "VideoLAN VLC media player"
LangString LSTR_1 1058 "Встановлення $(LSTR_2)"
LangString LSTR_2 1058 "VLC media player"
LangString LSTR_3 1058 "Доступно місця: "
LangString LSTR_4 1058 "Потрібно місця: "
LangString LSTR_5 1058 "Неможливо записати: "
LangString LSTR_8 1058 "Неможливо знайти символ: "
LangString LSTR_9 1058 "Неможливо завантажити: "
LangString LSTR_10 1058 "Створення теки: "
LangString LSTR_11 1058 "Створення ярлика: "
LangString LSTR_12 1058 "Створення програми видалення: "
LangString LSTR_13 1058 "Видалення файлу: "
LangString LSTR_14 1058 "Видалення після перезавантаження: "
LangString LSTR_15 1058 "Помилка створення ярлика: "
LangString LSTR_16 1058 "Помилка створення: "
LangString LSTR_17 1058 "Помилка розпакування даних! Можливо, пошкоджений файл встановлення."
LangString LSTR_19 1058 "Виконання команди оболонки: "
LangString LSTR_20 1058 "Виконання: "
LangString LSTR_21 1058 "Розпакування: "
LangString LSTR_22 1058 "Розпакування: помилка запису даних у файл "
LangString LSTR_23 1058 "Пошкоджений файл встановлення: неприпустимий код відповіді"
LangString LSTR_24 1058 "Немає OLE для: "
LangString LSTR_25 1058 "Тека призначення: "
LangString LSTR_26 1058 "Видалення теки: "
LangString LSTR_29 1058 "Пропущено: "
LangString LSTR_30 1058 "Копіювати подробиці до буфера обміну"
LangString LSTR_32 1058 Б
LangString LSTR_33 1058 "  К"
LangString LSTR_34 1058 "  М"
LangString LSTR_35 1058 "  Г"
LangString LSTR_36 1058 Рекомендовано
LangString LSTR_37 1058 Мінімальна
LangString LSTR_38 1058 Повна
LangString LSTR_39 1058 "Помилка під час відкриття файлу для запису: $\r$\n$\r$\n$0$\r$\n$\r$\nНатисніть «Перервати», щоб зупинити встановлення,$\r$\n«Повторити», щоб спробувати знову, або$\r$\n«Ігнорувати», щоб пропустити цей файл."
LangString LSTR_40 1058 0
LangString LSTR_41 1058 "Ласкаво просимо до встановлення $(LSTR_132)"
LangString LSTR_42 1058 "MS Shell Dlg"
LangString LSTR_43 1058 "Ця програма допоможе вам встановити $(LSTR_132).$\r$\n$\r$\nРадимо закрити всі інші програми, перш ніж почати встановлення. Завдяки цьому будуть оновлені відповідні системні файли без потреби перезапускати комп’ютер.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1058 "Тепер ви обізнані про свої права. Натисніть кнопку Далі, аби продовжити."
LangString LSTR_45 1058 "&Далі >"
LangString LSTR_46 1058 "Ліцензійна угода"
LangString LSTR_47 1058 "Ознайомтеся з умовами ліцензійної угоди перед встановленням $(LSTR_132)."
LangString LSTR_48 1058 "Натисніть клавішу PageDown, щоб переглянути угоду далі."
LangString LSTR_49 1058 "Оберіть компоненти"
LangString LSTR_50 1058 "Оберіть, які компоненти $(LSTR_132) ви хочете встановити."
LangString LSTR_51 1058 Опис
LangString LSTR_52 1058 "Наведіть мишу на компонент, щоб побачити його опис."
LangString LSTR_53 1058 "Оберіть теку встановлення"
LangString LSTR_54 1058 "Оберіть теку, в яку потрібно встановити $(LSTR_132)."
LangString LSTR_55 1058 Встановлення
LangString LSTR_56 1058 "Будь ласка, зачекайте поки триває встановлення $(LSTR_132)."
LangString LSTR_57 1058 "Встановлення завершено"
LangString LSTR_58 1058 "Встановлення успішно завершено."
LangString LSTR_59 1058 "Встановлення перервано"
LangString LSTR_60 1058 "Встановлення не було завершено."
LangString LSTR_61 1058 &Завершити
LangString LSTR_62 1058 "Завершення встановлення $(LSTR_132)"
LangString LSTR_63 1058 "$(LSTR_132) встановлено на ваш комп’ютер.$\r$\n$\r$\nНатисніть «Завершити» для виходу."
LangString LSTR_64 1058 "&Запустити $(LSTR_132)"
LangString LSTR_65 1058 "Відвідати веб-сайт медіапрогравача VLC від  VideoLAN"
LangString LSTR_66 1058 8
LangString LSTR_67 1058 "Ви дійсно хочете вийти з встановлення $(LSTR_2)?"
LangString LSTR_68 1058 Відтворити
LangString LSTR_69 1058 "VLC наразі запущена і невдовзі буде закрита."
LangString LSTR_70 1058 "Програма установки не може закрити VLC. Будь ласка, зробіть це вручну."
LangString LSTR_71 1058 "Перервано встановлення!"
LangString LSTR_72 1058 "Медіапрогравач (обов'язковий)"
LangString LSTR_73 1058 "Перевіряються процеси…"
LangString LSTR_74 1058 "Відтворити через медіапрогравач VLC"
LangString LSTR_75 1058 "Ярлик у меню „Пуск“"
LangString LSTR_76 1058 "Ярлик на робочому столі"
LangString LSTR_77 1058 Веб-модуль
LangString LSTR_78 1058 "Модуль ActiveX"
LangString LSTR_79 1058 "Відтворення дисків"
LangString LSTR_80 1058 "Відтворювати DVD-Video"
LangString LSTR_81 1058 "Відтворювати CD-Audio"
LangString LSTR_82 1058 "Відтворювати VCD"
LangString LSTR_83 1058 "Відтворювати SVCD"
LangString LSTR_84 1058 "Відтворювати DVD-Audio"
LangString LSTR_85 1058 "Відтворювати відеофайли"
LangString LSTR_86 1058 "Відтворювати звукові файли"
LangString LSTR_87 1058 "Відтворювати Blu-ray"
LangString LSTR_88 1058 "Асоціації типів файлів"
LangString LSTR_89 1058 "Звукові файли"
LangString LSTR_90 1058 Відеофайли
LangString LSTR_91 1058 Інші
LangString LSTR_92 1058 "Контекстне меню"
LangString LSTR_93 1058 "Додати до списку відтворення медіапрогравача VLC"
LangString LSTR_94 1058 "Вилучити налаштування і кеш"
LangString LSTR_95 1058 "Сам медіапрогравач"
LangString LSTR_96 1058 "Додає піктограми до вашого меню „Пуск“ для легкого доступу"
LangString LSTR_97 1058 "Додає піктограми до вашого робочого столу для легкого доступу"
LangString LSTR_98 1058 "Модуль VLC ActiveX"
LangString LSTR_99 1058 "Реєстрація відтворення DVD та CD"
LangString LSTR_100 1058 "Установлює медіапрогравач VLC як типову програму для вказаного типу файлів"
LangString LSTR_101 1058 "Додати елементи контекстного меню ('Відтворити з VLC' and 'Додати до списку відтворення VLC')"
LangString LSTR_102 1058 "Вилучає налаштування медіапрогравача VLC та файли кешу, які залишилися від попередніх інсталяцій"
LangString LSTR_103 1058 "Вже встановлено"
LangString LSTR_104 1058 "Виберіть, як ви хочете встановити VLC."
LangString LSTR_105 1058 "Старіша версія VLC встановлена у вашій системі. Виберіть, яку дію слід виконати, і натисніть Далі для продовження."
LangString LSTR_106 1058 "Встановити новішу версію VLC з попередніми установками (рекомендовано)"
LangString LSTR_107 1058 "Змінити параметри (розширені)"
LangString LSTR_108 1058 "Новіша версія VLC встановлена у вашій системі. Не рекомендується встановлювати старішу версію. Виберіть, яку дію слід виконати, і натисніть Далі для продовження."
LangString LSTR_109 1058 "Встановити старішу версію VLC з попередніми установками (рекомендовано)"
LangString LSTR_110 1058 "Виберіть варіант дії для виконання."
LangString LSTR_111 1058 "Програма VLC 3.0.24 встановлена у вашій системі. Виберіть, яку дію слід виконати, і натисніть Далі для продовження."
LangString LSTR_112 1058 "Додати/Вилучити/Перевстановити компоненти"
LangString LSTR_113 1058 "Видалити VLC"
LangString LSTR_114 1058 "Власний вибір"
LangString LSTR_115 1058 Скасувати
LangString LSTR_116 1058 "< &Назад"
LangString LSTR_117 1058 "Натисніть «Далі» для продовження."
LangString LSTR_118 1058 "Позначте компоненти, які ви хочете встановити, та приберіть позначки з непотрібних. $_CLICK"
LangString LSTR_119 1058 "Виберіть тип встановлення:"
LangString LSTR_120 1058 "Або виберіть необов'язкові компоненти, які ви бажаєте встановити:"
LangString LSTR_121 1058 "Виберіть компоненти для встановлення:"
LangString LSTR_122 1058 "Програму $(LSTR_132) буде встановлено в зазначену теку. Щоб встановити в іншу теку, натисніть «Огляд» і вкажіть потрібну теку. $_CLICK"
LangString LSTR_123 1058 "Тека призначення"
LangString LSTR_124 1058 О&гляд...
LangString LSTR_125 1058 "Виберіть теку для встановлення $(LSTR_132):"
LangString LSTR_126 1058 &Встановити
LangString LSTR_127 1058 "Натисніть «Встановити», щоб запустити процес встановлення."
LangString LSTR_128 1058 &Подробиці
LangString LSTR_129 1058 Завершено
LangString LSTR_130 1058 " "
LangString LSTR_131 1058 &Закрити
LangString LSTR_132 1058 "VLC media player"


; LANG: 1091
LangString LSTR_0 1091 "VideoLAN VLC media player"
LangString LSTR_1 1091 "O'rnatish $(LSTR_2)"
LangString LSTR_2 1091 "VLC media player"
LangString LSTR_3 1091 "Diskda joriy qilingan: "
LangString LSTR_4 1091 "Diskda talab qilinadigan: "
LangString LSTR_5 1091 "Yozish uchun imkoniyat yuq: "
LangString LSTR_8 1091 "Simvolni topish imkoniyati yuq: "
LangString LSTR_9 1091 "Zagruzka qilish imkoniyati yuq: "
LangString LSTR_10 1091 "Papkani yaratish: "
LangString LSTR_11 1091 "Belgini yaratish: "
LangString LSTR_12 1091 "O'chirish dasturini yaratish: "
LangString LSTR_13 1091 "Faylni o'chirish: "
LangString LSTR_14 1091 "Kompyuter qayta yuklash jaraonida o'chirish: "
LangString LSTR_15 1091 "$\"Belgini yaratish jarayonida xato: $\" "
LangString LSTR_16 1091 "Yaratish xatosi: "
LangString LSTR_17 1091 "Ma'lumotlarni asilga qaytarish xatosi! Distributiv ziyonlangan bulishi mumkin."
LangString LSTR_19 1091 "$\"Qoplang'ich komandasini bajarish: $\" "
LangString LSTR_20 1091 "Bajarish: "
LangString LSTR_21 1091 "Ichidan olish: "
LangString LSTR_22 1091 "Ichidan olish: fayl yozish xatosi "
LangString LSTR_23 1091 "Distributiv ziyonlangan: ruxsatlanmangan kod"
LangString LSTR_24 1091 "$\"Quydagilarga OLE yuq: $\" "
LangString LSTR_25 1091 "Papkani o'rnatish: "
LangString LSTR_26 1091 "Papkani o'chirish: "
LangString LSTR_29 1091 "O'tkazib yuborish: "
LangString LSTR_30 1091 "Bufer obmenaga ma'lumotlarni kopiya qilish"
LangString LSTR_32 1091 áàéò
LangString LSTR_33 1091 " Ê"
LangString LSTR_34 1091 " Ì"
LangString LSTR_35 1091 " Ã"
LangString LSTR_36 1091 "Tavsiya etilgan"
LangString LSTR_37 1091 Minimum
LangString LSTR_38 1091 To‘liq
LangString LSTR_39 1091 "Yozish uchun faylni ochish imkoniyati yuq: $\r$\n$\t$\"$0$\"$\r$\n'Tuxtashish': O'rnatishni tuxtatish;$\r$\n$\"Takrorlash$\":yana bir o'rinib ko'rish;$\r$\n$\"Taylab ketish$\": shu xarakatni taylab ketish."
LangString LSTR_40 1091 0
LangString LSTR_41 1091 "Sizni o'rnatish dastur tabriklaydi $(LSTR_132)"
LangString LSTR_42 1091 "MS Shell Dlg"
LangString LSTR_43 1091 "Bu dastur sizning komputeringizga $(LSTR_132) dasturni o'rnatadi.$\r$\n$\r$\nO'rnatishdan oldin ishlayotgan barcha ilovalarni yopish tavsiya etiladi. Bu o'rnatuvchi dasturga kompyuterni qayta yuklamasdan sistemali fayllarni yangilash imkonini beradi.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1091 "Siz o‘z huquqlaringiz bo‘yicha haqsiz. Davom etish uchun $\"Keyingi$\" tugmasini bosing."
LangString LSTR_45 1091 "&Oldinga >"
LangString LSTR_46 1091 "Lisenzion kelishuv"
LangString LSTR_47 1091 "$(LSTR_132) dasturini o'rnatishdan oldin lisenzion kelishuv bilan tanishib chiking."
LangString LSTR_48 1091 "Matn bo'icha silgish uchun $\"PageUp$\" va $\"PageDown$\" tugmasidan foydalaning."
LangString LSTR_49 1091 "O'rnatilayotgan dastur komponentlari"
LangString LSTR_50 1091 "$(LSTR_132) dasturning o'zingizga kerak bo'lgan komponentasini tanlang."
LangString LSTR_51 1091 Tasvir
LangString LSTR_52 1091 "Sichqonchaning kursorini komponent tasvirini o'qish uchun ustiga quying."
LangString LSTR_53 1091 "O'rnatish papkasini tanlash"
LangString LSTR_54 1091 "$(LSTR_132)ni o'rnatish uchun papka tanlang."
LangString LSTR_55 1091 "Fayllarni ko'chirish"
LangString LSTR_56 1091 "Biror kuting, $(LSTR_132) fayllari ko'chirilmoqda..."
LangString LSTR_57 1091 "O'rnatish jarayoni tugadi"
LangString LSTR_58 1091 "O'rnatish jarayoni muvaffaqiyat bilan tugadi."
LangString LSTR_59 1091 "O'rnatish jarayoni uzildi"
LangString LSTR_60 1091 "O'rnatish jarayoni tugamadi."
LangString LSTR_61 1091 &Tayor
LangString LSTR_62 1091 "$(LSTR_132)ni o'rnatuvci dasturi o'z ishini tugatmoqda"
LangString LSTR_63 1091 "$(LSTR_132)ni o'rnatish bajarildi.$\r$\n$\r$\nO'rnatuvchi dasturdan chiqish uchun $\"Tayor$\" tugmasini bosing."
LangString LSTR_64 1091 "$(LSTR_132) &Ishga tushirilsin"
LangString LSTR_65 1091 "VideoLAN VLC media pleyer veb sahifasiga tashrif buyuring"
LangString LSTR_66 1091 8
LangString LSTR_67 1091 "Haqiqatdan ham siz $(LSTR_2)ni o'rnatishni bekor qilmoqchimisiz?"
LangString LSTR_68 1091 "Ijro etish"
LangString LSTR_69 1091 "VLC ishga tushirilganga o‘xhaydi, shuning uchun hozir yopiladi."
LangString LSTR_70 1091 "Ushbu o‘rnatgich VLC’ni yopa olmaydi. Buni o‘zingiz amalga oshiring."
LangString LSTR_71 1091 "O‘rnatish bekor qilindi!"
LangString LSTR_72 1091 "Media pleyeri (talab etiladi)"
LangString LSTR_73 1091 "Jarayonlar tekshirilmoqda..."
LangString LSTR_74 1091 "VLC media pleyer bilan qo‘yish"
LangString LSTR_75 1091 "Boshlash menyusi yorlig'i"
LangString LSTR_76 1091 "Ishchi stoli yorlig'i"
LangString LSTR_77 1091 Veb-plaginlar
LangString LSTR_78 1091 "ActiveX plagini"
LangString LSTR_79 1091 "Disklarni ijro ettirish"
LangString LSTR_80 1091 "DVD filmni qo‘yish"
LangString LSTR_81 1091 "Audio CD qo‘yish"
LangString LSTR_82 1091 "VCD filmni qo‘yish"
LangString LSTR_83 1091 "SVCD filmni qo‘yish"
LangString LSTR_84 1091 "DVD audion qo‘yish"
LangString LSTR_85 1091 "Video fayllarni qo‘yish"
LangString LSTR_86 1091 "Audio fayllarni qo‘yish"
LangString LSTR_87 1091 "Play Blu-ray"
LangString LSTR_88 1091 "Fayl turlari"
LangString LSTR_89 1091 "Audio fayllar"
LangString LSTR_90 1091 "Video fayllar"
LangString LSTR_91 1091 Boshqa
LangString LSTR_92 1091 "Kontekst menyular"
LangString LSTR_93 1091 "VLC media pleyer ijro ro‘yxatiga qo‘shish"
LangString LSTR_94 1091 "Sozlashlarni va keshni o'chirish"
LangString LSTR_95 1091 "Media pleyerning o‘zi"
LangString LSTR_96 1091 "Oson foydalanish uchun nishonchalarni $\"Boshlash$\" menyusiga qo‘shadi"
LangString LSTR_97 1091 "Oson ishga tushirish uchun ish stolingizga nishonchani qo‘shadi."
LangString LSTR_98 1091 "VLC ActiveX plagini"
LangString LSTR_99 1091 "DVD va CD’larni ijro etishni ro‘yxatdan o‘tkazish"
LangString LSTR_100 1091 "VLC media pleyerni ko‘rsatilgan turdagi fayllar uchun standart dastur sifatida o‘rnatadi"
LangString LSTR_101 1091 "Menyu bandi matni qo‘shing (VLC bilan ijro etish va 'VLC ijro ro‘yxatiga qo‘shish')"
LangString LSTR_102 1091 "VLC media pleyer sozlamalari va oldingi o‘rnatishlga tegishli kesh fayllarini o‘chiradi"
LangString LSTR_103 1091 "Allaqachon o‘rnatilgan"
LangString LSTR_104 1091 "VLC’ni qanday usulda o‘rnatish kerakligini tanlang."
LangString LSTR_105 1091 "Tizimingizda VLC’ning eskiroq versiyasi o‘rnatilgan. Amalga oshirish kerak bo‘lgan jarayonni tanlang va davom etish uchun $\"Keyingi$\" tugmasini bosing."
LangString LSTR_106 1091 "VLC’ni oldingi sozlamalari bilan yangilash (tavsiya qilinadi)"
LangString LSTR_107 1091 "Sozlamalarni o‘zgartirish (qo‘shimcha)"
LangString LSTR_108 1091 "VLC’ning yangiroq versiyasi allaqachon o‘rnatilgan! Eskiroq versiyasiga qaytarish tavsiya qilinmaydi. Amalga oshirish kerak bo‘lgan jarayonni tanlang va davom etish uchun $\"Keyingi$\" tugmasini bosing."
LangString LSTR_109 1091 "VLC’ni oldingi sozlamalaridan foydalanib tiklash (tavsiya qilinadi)"
LangString LSTR_110 1091 "Bajarish uchun asosiy sozlamalarni tanlang."
LangString LSTR_111 1091 "VLC 3.0.24 allaqachon o‘rnatilgan. Amalga oshirishni xohlagan jarayonlarni tanlang va $\"Keyingi$\" tugmasini bosing."
LangString LSTR_112 1091 "Komponentlarni qo‘shish/o‘chirish/qayta o‘rnatish"
LangString LSTR_113 1091 "VLC’ni o‘chirish"
LangString LSTR_114 1091 "Tanlash bo'icha"
LangString LSTR_115 1091 "Bekor qilish"
LangString LSTR_116 1091 "< &Orqaga"
LangString LSTR_117 1091 "Davom etish uchun 'Oldinga'tugmachasini bosing."
LangString LSTR_118 1091 "O'rnatish ucun dastur komponentlarini tanlang. $_CLICK"
LangString LSTR_119 1091 "O'rnatish jarayonini tanlang:"
LangString LSTR_120 1091 "Yoki o'rnatish uchun qushimcha komponentlarini tanlang:"
LangString LSTR_121 1091 "O'rnatish uchun dastur komponentlarini tanlang:"
LangString LSTR_122 1091 "Dastur $(LSTR_132)ni ko'rsatilgan papkaga o'rnatadi. Boshqa papkaga o'rnatish uchun, 'Ko'rish'tugmachasini bosing va uni ko'rsatib bering. $_CLICK"
LangString LSTR_123 1091 "O'rnatish papkasi"
LangString LSTR_124 1091 "&Ko'rish ..."
LangString LSTR_125 1091 "O'rnatish papkasini ko'rsating $(LSTR_132):"
LangString LSTR_126 1091 &O'rnatish
LangString LSTR_127 1091 "Dasturni o'rnatish uchun'O'rnatish' tugmachasini bosing."
LangString LSTR_128 1091 &Äåòàëè...
LangString LSTR_129 1091 Tayor
LangString LSTR_130 1091 " "
LangString LSTR_131 1091 &Yopish
LangString LSTR_132 1091 "VLC media player"


; LANG: 1106
LangString LSTR_0 1106 "VideoLAN VLC media player"
LangString LSTR_1 1106 "Rhaglen Osod $(LSTR_2)"
LangString LSTR_2 1106 "VLC media player"
LangString LSTR_3 1106 "Lle ar gael: "
LangString LSTR_4 1106 "Lle angenrheidiol: "
LangString LSTR_5 1106 "Methu ysgrifennu: "
LangString LSTR_8 1106 "Methu canfod symbol: "
LangString LSTR_9 1106 "Methu llwytho: "
LangString LSTR_10 1106 "Creu ffolder: "
LangString LSTR_11 1106 "Creu llwybr byr: "
LangString LSTR_12 1106 "Creu dadosodwr: "
LangString LSTR_13 1106 "Dileu ffeil: "
LangString LSTR_14 1106 "Dileu wrth ailgychwyn: "
LangString LSTR_15 1106 "Gwall wrth greu llwybr byr: "
LangString LSTR_16 1106 "Gwall wrth greu: "
LangString LSTR_17 1106 "Gwall wrth ddatgywasgu data! Gosodwr llwgr?"
LangString LSTR_19 1106 "ExecShell: "
LangString LSTR_20 1106 "Gweithredu: "
LangString LSTR_21 1106 "Echdynnu: "
LangString LSTR_22 1106 "Echdynnu: gwall ysgrifennu i ffeil "
LangString LSTR_23 1106 "Gosodwr llwgr: opcode annilys"
LangString LSTR_24 1106 "Dim OLE ar gyfer: "
LangString LSTR_25 1106 "Ffolder allbwn: "
LangString LSTR_26 1106 "Tynnu ffolder: "
LangString LSTR_29 1106 "Hepgor: "
LangString LSTR_30 1106 "Copïo Manylion i'r Clipfwrdd"
LangString LSTR_32 1106 B
LangString LSTR_33 1106 " K"
LangString LSTR_34 1106 " M"
LangString LSTR_35 1106 " G"
LangString LSTR_36 1106 Argymhellwyd
LangString LSTR_37 1106 Lleiaf
LangString LSTR_38 1106 Llawn
LangString LSTR_39 1106 "Gwall agor ffeil i'w hysgrifennu: $\r$\n$\r$\n$0$\r$\n$\r$\nCliciwch Atal i atal y gosod,$\r$\nEto i geisio eto, neu$\r$\nAnwybyddu i hepgor y ffeil."
LangString LSTR_40 1106 0
LangString LSTR_41 1106 "Croeso i Ddewin Gosod $(LSTR_132)"
LangString LSTR_42 1106 "MS Shell Dlg"
LangString LSTR_43 1106 "Bydd y dewin yn eich arwain drwy osodiad $(LSTR_132).$\r$\n$\r$\nCaewch pob rhaglen cyn cychwyn y rhaglen osod. Bydd hyn yn ei gwneud yn bosibl i ddiweddaru'r ffeiliau system berthnasol heb fod angen ailgychwyn eich cyfrifiadur.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1106 "Wedi ei ddarllen, rydych yn ymwybodol o'ch hawliau. Cliciwch $\"Nesaf$\" i barhau."
LangString LSTR_45 1106 "&Nesaf >"
LangString LSTR_46 1106 "Cytundeb Trwyddedu"
LangString LSTR_47 1106 "Darllenwch amodau'r drwydded cyn gosod $(LSTR_132)."
LangString LSTR_48 1106 "Pwyswch Page Down i ddarllen gweddill y cytundeb."
LangString LSTR_49 1106 "Dewis Cydrannau"
LangString LSTR_50 1106 "Dewis pa nodweddion o $(LSTR_132) rydych am eu gosod."
LangString LSTR_51 1106 Disgrifiad
LangString LSTR_52 1106 "Gosod eich llygoden dros gydran i weld ei ddisgrifiad."
LangString LSTR_53 1106 "Dewis Lleoliad Gosod"
LangString LSTR_54 1106 "Dewis y ffolder i osod $(LSTR_132)."
LangString LSTR_55 1106 Gosod
LangString LSTR_56 1106 "Arhoswch tra fo $(LSTR_132) yn cael ei osod."
LangString LSTR_57 1106 "Cwblhawyd y Gosod"
LangString LSTR_58 1106 "Mae'r Gosod wedi ei gwblhau'n llwyddiannus."
LangString LSTR_59 1106 "Ataliwyd y Gosod"
LangString LSTR_60 1106 "Methwyd â chwblhau'r gosod yn llwyddiannus."
LangString LSTR_61 1106 &Gorffen
LangString LSTR_62 1106 "Cwblhau Dewin Gosod $(LSTR_132)"
LangString LSTR_63 1106 "Mae $(LSTR_132) wedi cael ei osod ar eich cyfrifiadur.$\r$\n$\r$\nCliciwch Gorffen i gau'r dewin."
LangString LSTR_64 1106 "&Rhedeg $(LSTR_132)"
LangString LSTR_65 1106 "Ymweld â gwefan chwaraeydd VLC gan VideoLAN"
LangString LSTR_66 1106 8
LangString LSTR_67 1106 "Ydych chi'n si?r eich bod am adael Rhaglen Osod $(LSTR_2)?"
LangString LSTR_68 1106 Chwarae
LangString LSTR_69 1106 "Mae'n ymddangos bod VLC yn rhedeg, felly bydd nawr yn cael ei gau."
LangString LSTR_70 1106 "Methwyd cau VLC. Caewch y chwaraeydd, os gwelwch yn dda."
LangString LSTR_71 1106 "Diweddwyd y broses gosod cyn gorffen!"
LangString LSTR_72 1106 "Chwaraeydd Cyfryngau (gofynnol)"
LangString LSTR_73 1106 "Yn gwirio..."
LangString LSTR_74 1106 "Chwarae gyda chwaraeydd VLC"
LangString LSTR_75 1106 "Llwybr Byr yn y Ddewislen Cychwyn"
LangString LSTR_76 1106 "Llwybr Byr ar y Bwrdd Gwaith"
LangString LSTR_77 1106 "Ategion We"
LangString LSTR_78 1106 "Ategyn ActiveX"
LangString LSTR_79 1106 "Chwaraeydd Disgiau"
LangString LSTR_80 1106 "Chwarae ffilm DVD"
LangString LSTR_81 1106 "Chwarae CD sain"
LangString LSTR_82 1106 "Chwarae ffilm VCD"
LangString LSTR_83 1106 "Chwarae ffilm SVCD"
LangString LSTR_84 1106 "Chwarae DVD sain"
LangString LSTR_85 1106 "Chwarae ffeiliau fideo"
LangString LSTR_86 1106 "Chwarae ffeiliau sain"
LangString LSTR_87 1106 "Chwarae Blu-ray"
LangString LSTR_88 1106 "Cysylltiadau mathau ffeil "
LangString LSTR_89 1106 "Ffeiliau Sain"
LangString LSTR_90 1106 "Ffeiliau Fideo"
LangString LSTR_91 1106 Eraill
LangString LSTR_92 1106 "Dewislenni Cyd-destun"
LangString LSTR_93 1106 "Ychwanegu at restr chwarae VLC"
LangString LSTR_94 1106 "Dileu'r dewisiadau a'r cuddstôr"
LangString LSTR_95 1106 "Y chwaraeydd cyfryngau ei hun"
LangString LSTR_96 1106 "Rhoi eiconau yn eich dewislen cychwyn i allu agor VLC yn hawdd"
LangString LSTR_97 1106 "Rhoi eicon ar eich bwrdd gwaith i allu agor VLC yn hawdd"
LangString LSTR_98 1106 "Gosod ategyn VLC ar gyfer ActiveX"
LangString LSTR_99 1106 "Cofrestriad chwarae CD a DVD"
LangString LSTR_100 1106 "Gosod chwaraeydd VLC fel y rhaglen ddiofyn ar gyfer y mathau o ffeil a dewisir"
LangString LSTR_101 1106 "Ychwanegu eitemau cyd-destun at ddewislenni ('Chwarae gyda VLC' ac 'Ychwanegu i restr chwarae VLC')"
LangString LSTR_102 1106 "Dileu dewisiadau a ffeiliau cuddstôr (cache) yn weddill o fersiynau gynt o chwaraeydd VLC"
LangString LSTR_103 1106 "Eisoes wedi'i osod"
LangString LSTR_104 1106 "Dewiswch sut hoffech osod VLC."
LangString LSTR_105 1106 "Mae fersiwn gynt o VLC wedi'i osod ar eich system. Dewiswch un o'r gweithredoedd a chliciwch $\"Nesaf$\" i barhau."
LangString LSTR_106 1106 "Uwchraddio VLC gyda'r un gosodiadau (argymhellwyd)"
LangString LSTR_107 1106 "Newid gosodiadau (uwch)"
LangString LSTR_108 1106 "Mae fersiwn mwy diweddar o VLC eisoes wedi'i osod! Nid yw'n arferol i israddio at fersiwn gynt. Dewiswch un o'r gweithredoedd a chliciwch $\"Nesaf$\" i barhau."
LangString LSTR_109 1106 "Israddio VLC gyda'r un gosodiadau (argymhellwyd)"
LangString LSTR_110 1106 "Dewiswch yr opsiwn cynnal a chadw i'w weithredu."
LangString LSTR_111 1106 "Mae VLC 3.0.24 eisoes wedi'i osod. Dewiswch un o'r gweithredoedd a chliciwch $\"Nesaf$\" i barhau."
LangString LSTR_112 1106 "Ychwanegu/Tynnu/Ailosod cydrannau"
LangString LSTR_113 1106 "Dadosod VLC"
LangString LSTR_114 1106 Addasu
LangString LSTR_115 1106 Diddymu
LangString LSTR_116 1106 "< &Nôl"
LangString LSTR_117 1106 "Cliciwch Nesaf i barhau."
LangString LSTR_118 1106 "Ticiwch y cydrannau rydych am eu gosod a dad-dicio'r cydrannau nad ydych am eu gosod. $_CLICK"
LangString LSTR_119 1106 "Dewis y math o osod:"
LangString LSTR_120 1106 "Neu, ddewis y cydrannau ychwanegol i'w gosod:"
LangString LSTR_121 1106 "Dewis cydrannau i'w gosod:"
LangString LSTR_122 1106 "Bydd y Rhaglen Osod yn gosod $(LSTR_132) yn y ffolder canlynol. I'w osod mewn ffolder gwahanol, cliciwch Pori a dewis ffolder arall. $_CLICK"
LangString LSTR_123 1106 "Ffolder Cyrchfan"
LangString LSTR_124 1106 &Pori...
LangString LSTR_125 1106 "Dewis y ffolder i osod $(LSTR_132) ynddo:"
LangString LSTR_126 1106 &Gosod
LangString LSTR_127 1106 "Cliciwch Gosod i gychwyn gosod."
LangString LSTR_128 1106 "&Dangos manylion"
LangString LSTR_129 1106 Cwblhawyd
LangString LSTR_130 1106 " "
LangString LSTR_131 1106 C&au
LangString LSTR_132 1106 "VLC media player"


; LANG: 1046
LangString LSTR_0 1046 "VideoLAN VLC media player"
LangString LSTR_1 1046 "Instalação do $(LSTR_2)"
LangString LSTR_2 1046 "VLC media player"
LangString LSTR_3 1046 "Espaço disponível: "
LangString LSTR_4 1046 "Espaço requerido: "
LangString LSTR_5 1046 "Não pôde gravar: "
LangString LSTR_8 1046 "Não pôde achar o símbolo: "
LangString LSTR_9 1046 "Não pôde carregar: "
LangString LSTR_10 1046 "Criar pasta: "
LangString LSTR_11 1046 "Criar atalho: "
LangString LSTR_12 1046 "Desinstalador criado: "
LangString LSTR_13 1046 "Apagar o arquivo: "
LangString LSTR_14 1046 "Apagar ao reiniciar: "
LangString LSTR_15 1046 "Erro ao criar o atalho: "
LangString LSTR_16 1046 "Erro ao criar: "
LangString LSTR_17 1046 "Erro ao descomprimir os dados! Instalador corrompido?"
LangString LSTR_19 1046 "ExecShell: "
LangString LSTR_20 1046 "Executar: "
LangString LSTR_21 1046 "Extrair: "
LangString LSTR_22 1046 "Extrair: erro ao gravar no arquivo "
LangString LSTR_23 1046 "Instalador corrompido: opcode inválido"
LangString LSTR_24 1046 "Sem OLE para: "
LangString LSTR_25 1046 "Pasta de saída: "
LangString LSTR_26 1046 "Remover a pasta: "
LangString LSTR_29 1046 "Ignorado: "
LangString LSTR_30 1046 "Copiar os Detalhes pra Área de Transferência"
LangString LSTR_32 1046 B
LangString LSTR_33 1046 " K"
LangString LSTR_34 1046 " M"
LangString LSTR_35 1046 " G"
LangString LSTR_36 1046 Recomendado
LangString LSTR_37 1046 Mínimo
LangString LSTR_38 1046 Completa
LangString LSTR_39 1046 "Erro ao abrir o arquivo pra gravação: $\r$\n$\r$\n$0$\r$\n$\r$\nClique em Abortar pra parar a instalação,$\r$\nRepetir pra tentar de novo ou em$\r$\nIgnorar pra ignorar este arquivo."
LangString LSTR_40 1046 0
LangString LSTR_41 1046 "Bem-vindo ao Instalador do $(LSTR_132)"
LangString LSTR_42 1046 "MS Shell Dlg"
LangString LSTR_43 1046 "O instalador guiará você através da instalação do $(LSTR_132).$\r$\n$\r$\nÉ recomendado que você feche todos os outros aplicativos antes de iniciar o instalador. Isto tornará possível atualizar os arquivos de sistema relevantes sem ter que reiniciar seu computador.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1046 "Agora você está ciente dos seus direitos. Clique em Próximo para continuar."
LangString LSTR_45 1046 "&Próximo >"
LangString LSTR_46 1046 "Acordo de Licença"
LangString LSTR_47 1046 "Por favor reveja os termos da licença antes de instalar o $(LSTR_132)."
LangString LSTR_48 1046 "Pressione Page Down pra ver o resto do acordo."
LangString LSTR_49 1046 "Escolher Componentes"
LangString LSTR_50 1046 "Escolha quais funções do $(LSTR_132) você quer instalar."
LangString LSTR_51 1046 Descrição
LangString LSTR_52 1046 "Posicione seu mouse sobre um componente pra ver a descrição dele."
LangString LSTR_53 1046 "Escolha o Local da Instalação"
LangString LSTR_54 1046 "Escolha a pasta na qual instalar o $(LSTR_132)."
LangString LSTR_55 1046 Instalando
LangString LSTR_56 1046 "Por favor espere enquanto o $(LSTR_132) está sendo instalado."
LangString LSTR_57 1046 "Instalação Completa"
LangString LSTR_58 1046 "A instalação foi completada com sucesso."
LangString LSTR_59 1046 "Instalação Abortada"
LangString LSTR_60 1046 "A instalação não foi completada com sucesso."
LangString LSTR_61 1046 &Concluir
LangString LSTR_62 1046 "Completando a instalação do $(LSTR_132)"
LangString LSTR_63 1046 "O $(LSTR_132) foi instalado no seu computador.$\r$\n$\r$\nClique em Concluir pra fechar o instalador."
LangString LSTR_64 1046 "&Executar o $(LSTR_132)"
LangString LSTR_65 1046 "Visite o sítio do reprodutor de mídias VLC na Internet"
LangString LSTR_66 1046 8
LangString LSTR_67 1046 "Você tem certeza que você quer sair da Instalação do $(LSTR_2)?"
LangString LSTR_68 1046 Reproduzir
LangString LSTR_69 1046 "Parece que o VLC está sendo executado e não será fechado."
LangString LSTR_70 1046 "Este instalador não foi capaz de fechar o VLC. Por favor, faça isso manualmente."
LangString LSTR_71 1046 "Instalação interrompida!"
LangString LSTR_72 1046 "Reprodutor de Mídias (obrigatório)"
LangString LSTR_73 1046 "Verificando processos..."
LangString LSTR_74 1046 "Reproduzir com o reprodutor de mídias VLC"
LangString LSTR_75 1046 "Atalho do Menu Iniciar"
LangString LSTR_76 1046 "Atalho da Área de Trabalho"
LangString LSTR_77 1046 "Complementos da Web"
LangString LSTR_78 1046 "Complemento ActiveX"
LangString LSTR_79 1046 "Reprodução de Discos"
LangString LSTR_80 1046 "Reproduzir filme em DVD"
LangString LSTR_81 1046 "Reproduzir áudio em CD"
LangString LSTR_82 1046 "Reproduzir filme em VCD"
LangString LSTR_83 1046 "Reproduzir filme em SVCD"
LangString LSTR_84 1046 "Reproduzir áudio em DVD"
LangString LSTR_85 1046 "Reproduzir arquivos de vídeo"
LangString LSTR_86 1046 "Reproduzir arquivos de áudio"
LangString LSTR_87 1046 "Reproduzir Blu-Ray"
LangString LSTR_88 1046 "Associações de Extensões de Arquivos"
LangString LSTR_89 1046 "Arquivos de Áudio"
LangString LSTR_90 1046 "Arquivos de Vídeo"
LangString LSTR_91 1046 Outro
LangString LSTR_92 1046 "Menus de Contexto"
LangString LSTR_93 1046 "Adicionar à Lista de Reprodução do reprodutor de mídias VLC"
LangString LSTR_94 1046 "Excluir as preferências e o cache"
LangString LSTR_95 1046 "O própro reprodutor de mídias"
LangString LSTR_96 1046 "Adiciona ícones ao menu iniciar para acesso fácil"
LangString LSTR_97 1046 "Adiciona ícone à sua área de trabalho para acesso fácil"
LangString LSTR_98 1046 "O complemento VLC ActiveX"
LangString LSTR_99 1046 "Registro da reprodução de DVD e CD"
LangString LSTR_100 1046 "Define o reprodutor de mídias VLC como o aplicativo padrão para uma extensão de arquivo específica"
LangString LSTR_101 1046 "Adicionar itens ao menu de contexto ('Reproduzir com o VLC' e 'Adicionar à Lista de Reprodução do VLC')"
LangString LSTR_102 1046 "Exclui as preferências e arquivos de cache de instalações anteriores do reprodutor de mídias VLC"
LangString LSTR_103 1046 "Já instalado"
LangString LSTR_104 1046 "Escolha como deseja instalar o VLC."
LangString LSTR_105 1046 "Uma versão anterior do VLC está instalada em seu sistema. Selecione a operação que deseja executar e clique em Próximo para continuar."
LangString LSTR_106 1046 "Atualizar o VLC usando configurações definidas (recomendado)"
LangString LSTR_107 1046 "Alterar as configurações (avançado)"
LangString LSTR_108 1046 "Uma versão mais recente do VLC já está instalada em seu sistema e não é recomendado que você regrida para uma versão anterior. Selecione a operação que deseja e clique em Próximo para continuar."
LangString LSTR_109 1046 "Regredir a versão do VLC usando as configurações definidas (recomendado)"
LangString LSTR_110 1046 "Escolha a opção de manutenção que deseja executar."
LangString LSTR_111 1046 "O VLC 3.0.24 já está instalado. Selecione a operação que deseja executar e clique em Próximo para continuar."
LangString LSTR_112 1046 "Adicionar/Remover/Reinstalar componentes"
LangString LSTR_113 1046 "Desinstalar o VLC"
LangString LSTR_114 1046 Personalizar
LangString LSTR_115 1046 Cancelar
LangString LSTR_116 1046 "< &Voltar"
LangString LSTR_117 1046 "Clique em Próximo pra continuar."
LangString LSTR_118 1046 "Marque os componentes que você quer instalar e desmarque os componentes que você não quer instalar. $_CLICK"
LangString LSTR_119 1046 "Selecione o tipo de instalação:"
LangString LSTR_120 1046 "Ou selecione os componentes opcionais que você deseja instalar:"
LangString LSTR_121 1046 "Selecione os componentes a instalar:"
LangString LSTR_122 1046 "O Instalador instalará o $(LSTR_132) na seguinte pasta. Pra instalar em uma pasta diferente clique em Procurar e selecione outra pasta. $_CLICK"
LangString LSTR_123 1046 "Pasta Destino"
LangString LSTR_124 1046 P&rocurar...
LangString LSTR_125 1046 "Selecione a pasta pra instalar o $(LSTR_132):"
LangString LSTR_126 1046 &Instalar
LangString LSTR_127 1046 "Clique em Instalar pra iniciar a instalação."
LangString LSTR_128 1046 "Mostrar &detalhes"
LangString LSTR_129 1046 Completado
LangString LSTR_130 1046 " "
LangString LSTR_131 1046 &Fechar
LangString LSTR_132 1046 "VLC media player"


; LANG: 2070
LangString LSTR_0 2070 "VideoLAN VLC media player"
LangString LSTR_1 2070 "Instalação de $(LSTR_2)"
LangString LSTR_2 2070 "VLC media player"
LangString LSTR_3 2070 "Espaço disponível: "
LangString LSTR_4 2070 "Espaço necessário: "
LangString LSTR_5 2070 "Não foi possível escrever: "
LangString LSTR_8 2070 "Símbolo não encontrado: "
LangString LSTR_9 2070 "Não foi possível carregar: "
LangString LSTR_10 2070 "Criando diretório: "
LangString LSTR_11 2070 "Criando atalho: "
LangString LSTR_12 2070 "Criando desinstalador: "
LangString LSTR_13 2070 "Apagando ficheiro: "
LangString LSTR_14 2070 "Apagar ao reiniciar: "
LangString LSTR_15 2070 "Erro ao criar atalho: "
LangString LSTR_16 2070 "Erro ao criar: "
LangString LSTR_17 2070 "Erro ao descomprimir dados! Instalador corrompido?"
LangString LSTR_19 2070 "Executando pelo Shell: "
LangString LSTR_20 2070 "Executando: "
LangString LSTR_21 2070 "Extraindo: "
LangString LSTR_22 2070 "Extraindo: erro ao escrever ficheiro "
LangString LSTR_23 2070 "Instalador corrompido: código de operação inválido"
LangString LSTR_24 2070 "Sem OLE para: "
LangString LSTR_25 2070 "Pasta de destino: "
LangString LSTR_26 2070 "Removendo pasta: "
LangString LSTR_29 2070 "Ignorado: "
LangString LSTR_30 2070 "Copiar detalhes para a Área de Transfêrencia"
LangString LSTR_32 2070 B
LangString LSTR_33 2070 " K"
LangString LSTR_34 2070 " M"
LangString LSTR_35 2070 " G"
LangString LSTR_36 2070 Recomendado
LangString LSTR_37 2070 Mínima
LangString LSTR_38 2070 Completa
LangString LSTR_39 2070 "Erro ao abrir ficheiro para escrita: $\r$\n$\t$\"$0$\"$\r$\nClique em Abortar para abortar a instalação,$\r$\nRepetir para tentar novamente a escrita do ficheiro, ou$\r$\nIgnorar para ignorar este ficheiro."
LangString LSTR_40 2070 0
LangString LSTR_41 2070 "Bem vindo ao Assistente de Instalação do $(LSTR_132)"
LangString LSTR_42 2070 "MS Shell Dlg"
LangString LSTR_43 2070 "Este assistente ajudá-lo-á durante a instalação do $(LSTR_132).$\r$\n$\r$\nÉ recomendado que feche todas as outras aplicações antes de iniciar a Instalação. Isto permitirá que o Instalador actualize ficheiros relacionados com o sistema sem necessidade de reiniciar o computador.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 2070 "Agora está ciente dos seus direitos. Clique em 'Seguinte' para continuar."
LangString LSTR_45 2070 "&Seguinte >"
LangString LSTR_46 2070 "Contrato de Licença"
LangString LSTR_47 2070 "Por favor, verifique os termos da licença antes de instalar o $(LSTR_132)."
LangString LSTR_48 2070 "Tecle Page Down para ver o restante da licença."
LangString LSTR_49 2070 "Escolha de Componentes"
LangString LSTR_50 2070 "Escolha quais as características do $(LSTR_132) que deseja instalar."
LangString LSTR_51 2070 Descrição
LangString LSTR_52 2070 "Posicione o rato sobre um componente para ver a sua descrição."
LangString LSTR_53 2070 "Escolha do Local da Instalação"
LangString LSTR_54 2070 "Escolha a pasta na qual deseja instalar o $(LSTR_132)."
LangString LSTR_55 2070 Instalando
LangString LSTR_56 2070 "Por favor, aguarde enquanto o $(LSTR_132) está sendo instalado."
LangString LSTR_57 2070 "Instalação Completa"
LangString LSTR_58 2070 "A instalação foi concluída com sucesso."
LangString LSTR_59 2070 "Instalação Abortada"
LangString LSTR_60 2070 "A instalação não foi concluída com sucesso."
LangString LSTR_61 2070 &Terminar
LangString LSTR_62 2070 "Concluindo o Assistente de Instalação do $(LSTR_132)"
LangString LSTR_63 2070 "$(LSTR_132) foi instalado no seu computador.$\r$\n$\r$\nClique em Terminar para fechar este assistente."
LangString LSTR_64 2070 "&Executar $(LSTR_132)"
LangString LSTR_65 2070 "Visite o site da Web VideoLAN do VLC media player"
LangString LSTR_66 2070 8
LangString LSTR_67 2070 "Deseja realmente cancelar a instalação do $(LSTR_2)?"
LangString LSTR_68 2070 Reproduzir
LangString LSTR_69 2070 "Parece que o VLC está em execução e será fechado agora."
LangString LSTR_70 2070 "O instalador não conseguiu fechar o VLC, por favor, feche-o manualmente."
LangString LSTR_71 2070 "Instalação cancelada!"
LangString LSTR_72 2070 "Reprodutor de Multimédia (necessário)"
LangString LSTR_73 2070 "A verificar os processos ..."
LangString LSTR_74 2070 "Reproduzir com VLC media player"
LangString LSTR_75 2070 "Atalho do Menu Iniciar"
LangString LSTR_76 2070 "Atalho do ambiente de trabalho"
LangString LSTR_77 2070 "Plug-ins da Web"
LangString LSTR_78 2070 "Plug-in ActiveX"
LangString LSTR_79 2070 "Reprodução de discos"
LangString LSTR_80 2070 "Reproduzir filme DVD"
LangString LSTR_81 2070 "Reproduzir áudio CD"
LangString LSTR_82 2070 "Reproduzir filme VCD"
LangString LSTR_83 2070 "Reproduzir filme SVCD"
LangString LSTR_84 2070 "Reproduzir áudio DVD"
LangString LSTR_85 2070 "Reproduzir ficheiros de vídeo"
LangString LSTR_86 2070 "Reproduzir ficheiros de áudio"
LangString LSTR_87 2070 "Reproduzir Blu-ray"
LangString LSTR_88 2070 "Associações do tipo de ficheiro"
LangString LSTR_89 2070 "Ficheiros de áudio"
LangString LSTR_90 2070 "Ficheiros de vídeo"
LangString LSTR_91 2070 Outros
LangString LSTR_92 2070 "Menus de contexto"
LangString LSTR_93 2070 "Adicione à 'Lista de Reprodução' VLC media player"
LangString LSTR_94 2070 "Apague as preferências e a cache"
LangString LSTR_95 2070 "O próprio reprodutor de multimédia"
LangString LSTR_96 2070 "Adiciona um ícone ao seu menu iniciar para um acesso fácil"
LangString LSTR_97 2070 "Adiciona um ícone ao seu ambiente de trabalho para um acesso fácil"
LangString LSTR_98 2070 "O plug-in ActiveX do VLC"
LangString LSTR_99 2070 "Registo da reprodução de DVD e CD"
LangString LSTR_100 2070 "Define o VLC media player como a aplicação predefinida para o tipo de ficheiro especificado"
LangString LSTR_101 2070 "Adicione os itens do menu de contexto ('Reproduzir Com o VLC' e 'Adicionar À Lista de Reprodução do VLC')"
LangString LSTR_102 2070 "Elimina as preferências e os vestígios dos ficheiros da cache de instalações anteriores do VLC media player"
LangString LSTR_103 2070 "Já está instalado"
LangString LSTR_104 2070 "Escolha como quer instalar o VLC."
LangString LSTR_105 2070 "Está instalada uma versão antiga do VLC no seu sistema. Selecione a operação que pretende realizar e clique em $\"Seguinte$\" para continuar."
LangString LSTR_106 2070 "Atualizar o VLC com as definições anteriores (recomendado)"
LangString LSTR_107 2070 "Alterar definições (avançado)"
LangString LSTR_108 2070 "Já está instalada uma versão mais recente do VLC! Não é recomendado a instalação de uma versão anterior. Selecione a operação que deseja realizar e clique em $\"Seguinte$\" para continuar."
LangString LSTR_109 2070 "Instalar versão anterior do VLC com as definições anteriores (recomendado)"
LangString LSTR_110 2070 "Escolha a opção de manutenção a executar."
LangString LSTR_111 2070 "Está instalada a versão 3.0.24 do VLC. Selecione a operação que pretende realizar e clique em $\"Seguinte$\" para continuar."
LangString LSTR_112 2070 "Adicionar/Remover/Reinstalar componentes"
LangString LSTR_113 2070 "Desinstalar VLC"
LangString LSTR_114 2070 Personalizado
LangString LSTR_115 2070 Cancelar
LangString LSTR_116 2070 "< &Anterior"
LangString LSTR_117 2070 "Clique em 'Seguinte' para continuar."
LangString LSTR_118 2070 "Marque os componentes que deseja instalar e desmarque os componentes que não deseja instalar. $_CLICK"
LangString LSTR_119 2070 "Escolha o tipo de instalação:"
LangString LSTR_120 2070 "Ou, escolha os componentes opcionais que deseja instalar:"
LangString LSTR_121 2070 "Escolha os componentes para instalar:"
LangString LSTR_122 2070 "O $(LSTR_132) será instalado na seguinte pasta. Para instalar numa pasta diferente, clique em 'Procurar...' e escolha outra pasta. $_CLICK"
LangString LSTR_123 2070 "Pasta de Destino"
LangString LSTR_124 2070 &Procurar...
LangString LSTR_125 2070 "Escolha uma pasta para instalar o $(LSTR_132):"
LangString LSTR_126 2070 &Instalar
LangString LSTR_127 2070 "Clique em 'Instalar' para iniciar a instalação."
LangString LSTR_128 2070 "Ver &Detalhes"
LangString LSTR_129 2070 Concluído
LangString LSTR_130 2070 " "
LangString LSTR_131 2070 &Fechar
LangString LSTR_132 2070 "VLC media player"


; LANG: 1049
LangString LSTR_0 1049 "VideoLAN VLC media player"
LangString LSTR_1 1049 "Установка $(LSTR_2)"
LangString LSTR_2 1049 "VLC media player"
LangString LSTR_3 1049 "Доступно на диске: "
LangString LSTR_4 1049 "Требуется на диске: "
LangString LSTR_5 1049 "Невозможно записать: "
LangString LSTR_8 1049 "Невозможно найти символ: "
LangString LSTR_9 1049 "Невозможно загрузить: "
LangString LSTR_10 1049 "Создание папки: "
LangString LSTR_11 1049 "Создание ярлыка: "
LangString LSTR_12 1049 "Создание программы удаления: "
LangString LSTR_13 1049 "Удаление файла: "
LangString LSTR_14 1049 "Удаление при перезагрузке ПК: "
LangString LSTR_15 1049 "Ошибка создания ярлыка: "
LangString LSTR_16 1049 "Ошибка создания: "
LangString LSTR_17 1049 "Ошибка распаковки данных! Возможно, повреждён дистрибутив."
LangString LSTR_19 1049 "Выполнение команды оболочки: "
LangString LSTR_20 1049 "Выполнение: "
LangString LSTR_21 1049 "Извлечение: "
LangString LSTR_22 1049 "Извлечение: ошибка записи файла "
LangString LSTR_23 1049 "Дистрибутив поврежден: недопустимый код"
LangString LSTR_24 1049 "Нет OLE для: "
LangString LSTR_25 1049 "Папка установки: "
LangString LSTR_26 1049 "Удаление папки: "
LangString LSTR_29 1049 "Пропуск: "
LangString LSTR_30 1049 "Копировать сведения в буфер обмена"
LangString LSTR_32 1049 байт
LangString LSTR_33 1049 " К"
LangString LSTR_34 1049 " М"
LangString LSTR_35 1049 " Г"
LangString LSTR_36 1049 Рекомендуемый
LangString LSTR_37 1049 Минимальный
LangString LSTR_38 1049 Полный
LangString LSTR_39 1049 "Невозможно открыть файл для записи: $\r$\n$\t$\"$0$\"$\r$\n$\"Прервать$\": остановить установку;$\r$\n$\"Повтор$\": повторить попытку;$\r$\n$\"Пропуск$\": пропустить это действие."
LangString LSTR_40 1049 0
LangString LSTR_41 1049 "Вас приветствует мастер установки $(LSTR_132)"
LangString LSTR_42 1049 "MS Shell Dlg"
LangString LSTR_43 1049 "Эта программа установит $(LSTR_132) на ваш компьютер.$\r$\n$\r$\nПеред началом установки рекомендуется закрыть все работающие приложения. Это позволит программе установки обновить системные файлы без перезагрузки компьютера.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1049 "Теперь вы знаете о своих правах. Для продолжения нажмите Далее."
LangString LSTR_45 1049 "&Далее >"
LangString LSTR_46 1049 "Лицензионное соглашение"
LangString LSTR_47 1049 "Перед установкой $(LSTR_132) ознакомьтесь с лицензионным соглашением."
LangString LSTR_48 1049 "Для перемещения по тексту используйте клавиши $\"PageUp$\" и $\"PageDown$\"."
LangString LSTR_49 1049 "Компоненты устанавливаемой программы"
LangString LSTR_50 1049 "Выберите компоненты $(LSTR_132), которые вы хотите установить."
LangString LSTR_51 1049 Описание
LangString LSTR_52 1049 "Наведите курсор мыши на название компонента, чтобы прочесть его описание."
LangString LSTR_53 1049 "Выбор папки установки"
LangString LSTR_54 1049 "Выберите папку для установки $(LSTR_132)."
LangString LSTR_55 1049 "Копирование файлов"
LangString LSTR_56 1049 "Подождите, идет копирование файлов $(LSTR_132)..."
LangString LSTR_57 1049 "Установка завершена"
LangString LSTR_58 1049 "Установка успешно завершена."
LangString LSTR_59 1049 "Установка прервана"
LangString LSTR_60 1049 "Установка не завершена."
LangString LSTR_61 1049 &Готово
LangString LSTR_62 1049 "Завершение работы мастера установки $(LSTR_132)"
LangString LSTR_63 1049 "Установка $(LSTR_132) выполнена.$\r$\n$\r$\nНажмите кнопку $\"Готово$\" для выхода из программы установки."
LangString LSTR_64 1049 "&Запустить $(LSTR_132)"
LangString LSTR_65 1049 "Посетить сайт VideoLAN медиаплеера VLC"
LangString LSTR_66 1049 8
LangString LSTR_67 1049 "Вы действительно хотите отменить установку $(LSTR_2)?"
LangString LSTR_68 1049 Воспроизвести
LangString LSTR_69 1049 "Похоже, VLC сейчас запущен, его придётся закрыть."
LangString LSTR_70 1049 "Программа установки не смогла завершить VLC, пожалуйста, закройте его сами."
LangString LSTR_71 1049 "Установка прервана!"
LangString LSTR_72 1049 "Медиаплеер (обязательно)"
LangString LSTR_73 1049 "Проверка процессов..."
LangString LSTR_74 1049 "Воспроизвести в VLC"
LangString LSTR_75 1049 "Ярлык в меню Пуск"
LangString LSTR_76 1049 "Ярлык на рабочем столе"
LangString LSTR_77 1049 Веб-модули
LangString LSTR_78 1049 "Модуль ActiveX"
LangString LSTR_79 1049 "Воспроизведение дисков"
LangString LSTR_80 1049 "Воспроизвести DVD-фильм"
LangString LSTR_81 1049 "Воспроизвести аудио-CD"
LangString LSTR_82 1049 "Воспроизвести VCD-фильм"
LangString LSTR_83 1049 "Воспроизвести SVCD-фильм"
LangString LSTR_84 1049 "Воспроизвести аудио-DVD"
LangString LSTR_85 1049 "Воспроизвести видеофайлы"
LangString LSTR_86 1049 "Воспроизвести аудиофайлы"
LangString LSTR_87 1049 "Воспроизводить Blu-ray"
LangString LSTR_88 1049 "Привязки к типам файлов"
LangString LSTR_89 1049 Аудиофайлы
LangString LSTR_90 1049 Видеофайлы
LangString LSTR_91 1049 Другое
LangString LSTR_92 1049 "Контекстное меню"
LangString LSTR_93 1049 "Добавить в плейлист VLC"
LangString LSTR_94 1049 "Сбросить настройки и кэш"
LangString LSTR_95 1049 "Медиаплеер как таковой"
LangString LSTR_96 1049 "Добавить значки в меню Пуск для облегчения доступа"
LangString LSTR_97 1049 "Добавить значки на рабочий стол для облегчения доступа"
LangString LSTR_98 1049 "Модуль VLC ActiveX"
LangString LSTR_99 1049 "Регистрация воспроизведения CD и DVD"
LangString LSTR_100 1049 "Назначить медиаплеер VLC приложением по умолчанию для заданного типа файлов"
LangString LSTR_101 1049 "Добавить пункты контекстного меню ('Воспроизвести при помощи VLC' и 'Добавить в список воспроизведения VLC')"
LangString LSTR_102 1049 "Удаляет настройки и кэш VLC от прошлых установок"
LangString LSTR_103 1049 "Уже установлен"
LangString LSTR_104 1049 "Выберите вариант установки VLC."
LangString LSTR_105 1049 "В вашей системе установлена более старая версия VLC. Выберите действие, которое вы хотите совершить, и нажмите Далее."
LangString LSTR_106 1049 "Обновить VLC, используя предыдущие настройки (рекомендуется)"
LangString LSTR_107 1049 "Изменить настройки (расширенный режим)"
LangString LSTR_108 1049 "В вашей системе уже установлена более новая версия VLC! Возвращаться к старой версии не рекомендуется. Выберите действие, которое вы хотите совершить, и нажмите Далее для продолжения."
LangString LSTR_109 1049 "Понизить версию VLC, используя предыдущие настройки (рекомендуется)"
LangString LSTR_110 1049 "Выберите действие, которое вы хотите выполнить."
LangString LSTR_111 1049 "Установлена версия VLC 3.0.24. Выберите действие, которое вы хотите совершить, и нажмите Далее для продолжения."
LangString LSTR_112 1049 "Добавить/удалить/переустановить компоненты"
LangString LSTR_113 1049 "Удалить VLC"
LangString LSTR_114 1049 "По выбору"
LangString LSTR_115 1049 Отмена
LangString LSTR_116 1049 "< &Назад"
LangString LSTR_117 1049 "Нажмите кнопку $\"Далее$\" для продолжения."
LangString LSTR_118 1049 "Выберите компоненты программы, которые вы хотите установить. $_CLICK"
LangString LSTR_119 1049 "Выберите тип установки:"
LangString LSTR_120 1049 "или выберите дополнительные компоненты для установки:"
LangString LSTR_121 1049 "Выберите компоненты программы для установки:"
LangString LSTR_122 1049 "Программа установит $(LSTR_132) в указанную папку. Чтобы установить приложение в другую папку, нажмите кнопку $\"Обзор$\" и укажите ее. $_CLICK"
LangString LSTR_123 1049 "Папка установки"
LangString LSTR_124 1049 "О&бзор ..."
LangString LSTR_125 1049 "Укажите папку для установки $(LSTR_132):"
LangString LSTR_126 1049 &Установить
LangString LSTR_127 1049 "Нажмите кнопку $\"Установить$\", чтобы установить программу."
LangString LSTR_128 1049 &Детали...
LangString LSTR_129 1049 Готово
LangString LSTR_130 1049 " "
LangString LSTR_131 1049 &Закрыть
LangString LSTR_132 1049 "VLC media player"


; LANG: 1035
LangString LSTR_0 1035 "VideoLAN VLC media player"
LangString LSTR_1 1035 "$(LSTR_2) -ohjelman asennus"
LangString LSTR_2 1035 "VLC media player"
LangString LSTR_3 1035 "Tilaa vapaana: "
LangString LSTR_4 1035 "Tarvittava tila: "
LangString LSTR_5 1035 "Ei voi kirjoittaa: "
LangString LSTR_8 1035 "Symbolia ei löytynyt: "
LangString LSTR_9 1035 "Ei voitu ladata: "
LangString LSTR_10 1035 "Luo kansio: "
LangString LSTR_11 1035 "Luo pikakuvake: "
LangString LSTR_12 1035 "Poisto-ohjelma luotiin: "
LangString LSTR_13 1035 "Poista: "
LangString LSTR_14 1035 "Poista käynnistyksen yhteydessä: "
LangString LSTR_15 1035 "Virhe luotaessa pikakuvaketta: "
LangString LSTR_16 1035 "Virhe luotaessa: "
LangString LSTR_17 1035 "Pakettia ei voitu purkaa. Korruptoitunut asennusohjelma?"
LangString LSTR_19 1035 "ExecShell: "
LangString LSTR_20 1035 "Suorita: "
LangString LSTR_21 1035 "Pura: "
LangString LSTR_22 1035 "Pura: tiedostoon ei voitu kirjoittaa "
LangString LSTR_23 1035 "Asennuspaketti on vioittunut: virheellinen opcode"
LangString LSTR_24 1035 "Ei OLEa: "
LangString LSTR_25 1035 "Kansio: "
LangString LSTR_26 1035 "Poista kansio: "
LangString LSTR_29 1035 "Ohitettiin: "
LangString LSTR_30 1035 "Kopioi tiedot leikepöydälle"
LangString LSTR_32 1035 t
LangString LSTR_33 1035 " k"
LangString LSTR_34 1035 " M"
LangString LSTR_35 1035 " G"
LangString LSTR_36 1035 Suositeltava
LangString LSTR_37 1035 Vähintään
LangString LSTR_38 1035 Täysi
LangString LSTR_39 1035 "Tiedostoon ei voitu kirjoittaa: $\r$\n$\t$\"$0$\"$\r$\nLopeta asennus valitsemalla Hylkää,$\r$\nyritä uudelleen valitsemalla Uudelleen, tai$\r$\nohita tiedosto valitsemalla Ohita"
LangString LSTR_40 1035 0
LangString LSTR_41 1035 "Tervetuloa $(LSTR_132) -ohjelman asennukseen"
LangString LSTR_42 1035 "MS Shell Dlg"
LangString LSTR_43 1035 "Saat tarvittavia ohjeita sitä mukaa kuin $(LSTR_132) -ohjelman asennus edistyy.$\r$\n$\r$\nOn suositeltavaa sulkea kaikki muut ohjelmat ennen asennuksen aloittamista, jotta asennus voi päivittää järjestelmätiedostoja käynnistämättä konetta uudelleen.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1035 "Nyt olet tietoinen oikeuksistasi. Paina Seuraava jatkaaksesi."
LangString LSTR_45 1035 "&Seuraava >"
LangString LSTR_46 1035 Käyttöoikeussopimus
LangString LSTR_47 1035 "Lue käyttöehdot huolellisesti ennen $(LSTR_132) -ohjelman asentamista."
LangString LSTR_48 1035 "Paina Page Down -näppäintä nähdäksesi loput sopimuksesta."
LangString LSTR_49 1035 "Valitse komponentit"
LangString LSTR_50 1035 "Valitse toiminnot, jotka haluat asentaa ohjelmaan $(LSTR_132)."
LangString LSTR_51 1035 Selitys
LangString LSTR_52 1035 "Siirrä hiiri komponentin nimen päälle nähdäksesi sen selityksen."
LangString LSTR_53 1035 "Valitse asennuskansio"
LangString LSTR_54 1035 "Valitse kansio, johon haluat asentaa $(LSTR_132) -ohjelman."
LangString LSTR_55 1035 Asennetaan
LangString LSTR_56 1035 "Odota... $(LSTR_132) asennetaan..."
LangString LSTR_57 1035 "Asennus valmis."
LangString LSTR_58 1035 "Asennus onnistui."
LangString LSTR_59 1035 "Asennus keskeytyi."
LangString LSTR_60 1035 "Asennus ei onnistunut."
LangString LSTR_61 1035 &Valmis
LangString LSTR_62 1035 "$(LSTR_132) -ohjelman asennus on valmis"
LangString LSTR_63 1035 "$(LSTR_132) on asennettu tietokoneelle.$\r$\n$\r$\nValitse Valmis sulkeaksesi asennusohjelman."
LangString LSTR_64 1035 "Käynnistä $(LSTR_132)"
LangString LSTR_65 1035 "Vieraile VideoLAN VLC-mediatoistimen kotisivuilla"
LangString LSTR_66 1035 8
LangString LSTR_67 1035 "Haluatko varmasti keskeyttää $(LSTR_2) -ohjelman asennuksen?"
LangString LSTR_68 1035 Toista
LangString LSTR_69 1035 "VLC näyttäisi olevan käynnissä se suljetaan."
LangString LSTR_70 1035 "Asennusohjelma ei kyennyt sulkemaan VLC-mediatoistinta, suljethan sen itse."
LangString LSTR_71 1035 "Asennus keskeytettiin!"
LangString LSTR_72 1035 "Mediatoistin (vaadittu)"
LangString LSTR_73 1035 "Tarkistetaan prosessit..."
LangString LSTR_74 1035 "Toista VLC-mediatoistimella"
LangString LSTR_75 1035 "Käynnistä-valikon pikakuvake"
LangString LSTR_76 1035 "Työpöydän pikakuvake"
LangString LSTR_77 1035 Web-liitännäiset
LangString LSTR_78 1035 ActiveX-liitännäinen
LangString LSTR_79 1035 "Levyjen toisto"
LangString LSTR_80 1035 "Toista DVD-elokuva"
LangString LSTR_81 1035 "Toista audio-CD"
LangString LSTR_82 1035 "Toista VCD-elokuva"
LangString LSTR_83 1035 "Toista SVCD-elokuva"
LangString LSTR_84 1035 "Toista ääni-DVD"
LangString LSTR_85 1035 "Toista videotiedostot"
LangString LSTR_86 1035 "Toista äänitiedostot"
LangString LSTR_87 1035 "Toista Blu-ray"
LangString LSTR_88 1035 "Liitokset tiedostotyyppien kanssa"
LangString LSTR_89 1035 Äänitiedostot
LangString LSTR_90 1035 Videotiedostot
LangString LSTR_91 1035 Muu
LangString LSTR_92 1035 Asiayhteysvalikot
LangString LSTR_93 1035 "Lisää VLC-mediatoistimen soittolistaan"
LangString LSTR_94 1035 "Tyhjää asetukset ja välimuisti"
LangString LSTR_95 1035 "Mediasoitin itsessään"
LangString LSTR_96 1035 "Lisää kuvakkeita käynnistä-valikkoon jotta käyttö on helpompaa"
LangString LSTR_97 1035 "Lisää kuvakkeita työpöydälle jotta käyttö on helpompaa"
LangString LSTR_98 1035 "VLC ActiveX-liitännäinen"
LangString LSTR_99 1035 "DVD- ja CD-toiston rekisteröinti"
LangString LSTR_100 1035 "Asettaa VLC-mediatoistimen oletusohjelmaksi valitulle tiedostotyypille"
LangString LSTR_101 1035 "Lisää asiayhteysvalikkoon kohteet ('Toista VLC:n kanssa' ja 'Lisää VLC:n soittolistaan')"
LangString LSTR_102 1035 "Poistaa vanhat VLC-mediatoistimen asetukset ja välimuistitiedostot edellisistä asennuksista"
LangString LSTR_103 1035 "On jo asennettu"
LangString LSTR_104 1035 "Valitse kuinka haluat asentaa VLC:n."
LangString LSTR_105 1035 "Vanhempi versio VLC-mediatoistimesta on asennettu järjestelmääsi. Valitse toiminto jonka haluat suorittaa ja klikkaa Seuraava jatkaaksesi."
LangString LSTR_106 1035 "Päivitä VLC käyttäen edellisiä asetuksia (suositeltavaa)"
LangString LSTR_107 1035 "Muuta asetuksia (edistyneille)"
LangString LSTR_108 1035 "Uudempi versio VLC-mediatoistimesta on asennettu! Ei ole suositeltavaa, että vaihdat vanhempaan versioon. Valitse toiminto jonka haluat suorittaa ja paina Seuraava jatkaaksesi."
LangString LSTR_109 1035 "Asenna vanhempi versio VLC:sta käyttäen edellisiä asetuksia (suositeltavaa)"
LangString LSTR_110 1035 "Valitse suoritettava huoltotoimenpide."
LangString LSTR_111 1035 "VLC 3.0.24 on jo asennettu. Valitse toiminto jonka haluat suorittaa ja paina Seuraava jatkaaksesi."
LangString LSTR_112 1035 "Lisää/Poista/Uudelleenasenna komponentteja"
LangString LSTR_113 1035 "Poista VLC:n asennus"
LangString LSTR_114 1035 Oma
LangString LSTR_115 1035 Peruuta
LangString LSTR_116 1035 "< &Takaisin"
LangString LSTR_117 1035 "Valitse Seuraava jatkaaksesi."
LangString LSTR_118 1035 "Valitse komponentit, jotka haluat asentaa, ja poista valinta komponenteista, joita et halua asentaa. $_CLICK"
LangString LSTR_119 1035 "Valitse asennustyyppi:"
LangString LSTR_120 1035 "Tai, valitse valinnaiset komponentit, jotka haluat asentaa:"
LangString LSTR_121 1035 "Valitse asennettavat komponentit:"
LangString LSTR_122 1035 "$(LSTR_132) -ohjelma asennetaan seuraavaan kansioon. Jos haluat asentaa sen johonkin muuhun kansioon, valitse Selaa, ja valitse toinen kansio. $_CLICK"
LangString LSTR_123 1035 Kohdekansio
LangString LSTR_124 1035 S&elaa...
LangString LSTR_125 1035 "Valitse kansio, johon haluat asentaa ohjelman $(LSTR_132):"
LangString LSTR_126 1035 &Asenna
LangString LSTR_127 1035 "Valitse Asenna aloittaaksesi asennuksen."
LangString LSTR_128 1035 "&Näytä tiedot"
LangString LSTR_129 1035 Valmis
LangString LSTR_130 1035 " "
LangString LSTR_131 1035 &Sulje
LangString LSTR_132 1035 "VLC media player"


; LANG: 1053
LangString LSTR_0 1053 "VideoLAN VLC media player"
LangString LSTR_1 1053 "$(LSTR_2) Installation"
LangString LSTR_2 1053 "VLC media player"
LangString LSTR_3 1053 "Utrymme tillgängligt: "
LangString LSTR_4 1053 "Utrymme som behövs: "
LangString LSTR_5 1053 "Kan inte skriva: "
LangString LSTR_8 1053 "Kunde inte hitta symbol: "
LangString LSTR_9 1053 "Kunde inte ladda: "
LangString LSTR_10 1053 "Skapa katalog: "
LangString LSTR_11 1053 "Skapa genväg: "
LangString LSTR_12 1053 "Skapade avinstallationsprogram: "
LangString LSTR_13 1053 "Radera fil: "
LangString LSTR_14 1053 "Radera vid omstart: "
LangString LSTR_15 1053 "Fel vid skapande av genväg: "
LangString LSTR_16 1053 "Fel vid skapande: "
LangString LSTR_17 1053 "Fel vid uppackning av data! Skadat installationspaket?"
LangString LSTR_19 1053 "ExecShell: "
LangString LSTR_20 1053 "Kör: "
LangString LSTR_21 1053 "Extrahera: "
LangString LSTR_22 1053 "Extrahera: fel vid skrivning till fil "
LangString LSTR_23 1053 "Installationspaket skadat: ogiltig opcode"
LangString LSTR_24 1053 "Ingen OLE för: "
LangString LSTR_25 1053 "Målkatalog: "
LangString LSTR_26 1053 "Ta bort katalog: "
LangString LSTR_29 1053 "Ignorerad: "
LangString LSTR_30 1053 "Kopiera detaljinformation till klippbordet"
LangString LSTR_32 1053 B
LangString LSTR_33 1053 " K"
LangString LSTR_34 1053 " M"
LangString LSTR_35 1053 " G"
LangString LSTR_36 1053 Rekommenderad
LangString LSTR_37 1053 Minimal
LangString LSTR_38 1053 Fullständig
LangString LSTR_39 1053 "Fel vid Öppning av fil för skrivning: $\r$\n$\t$\"$0$\"$\r$\nKlicka på avbryt för att avbryta installationen,$\r$\nförsök igen för att försöka skriva till filen igen, eller$\r$\nIgnorera för att skippa denna fil"
LangString LSTR_40 1053 0
LangString LSTR_41 1053 "Välkommen till installationsguiden för $(LSTR_132)."
LangString LSTR_42 1053 "MS Shell Dlg"
LangString LSTR_43 1053 "Denna guide tar dig igenom installationen av $(LSTR_132).$\r$\n$\r$\nDet rekommenderas att du avslutar alla andra program innan du fortsätter installationen. Detta tillåter att installationen uppdaterar nödvändiga systemfiler utan att behöva starta om din dator.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1053 "Du är nu medveten om dina rättigheter. Klicka på Nästa för att fortsätta."
LangString LSTR_45 1053 "&Nästa >"
LangString LSTR_46 1053 Licensavtal
LangString LSTR_47 1053 "Var vänlig läs igenom licensvillkoren innan du installerar $(LSTR_132)."
LangString LSTR_48 1053 "Tryck Page Down för att se resten av licensavtalet."
LangString LSTR_49 1053 "Välj komponenter"
LangString LSTR_50 1053 "Välj vilka alternativ av $(LSTR_132) som du vill installera."
LangString LSTR_51 1053 Beskrivning
LangString LSTR_52 1053 "Håll muspekaren över ett alternativ för att se dess beskrivning."
LangString LSTR_53 1053 "Välj installationsväg"
LangString LSTR_54 1053 "Välj katalog att installera $(LSTR_132) i."
LangString LSTR_55 1053 Installerar
LangString LSTR_56 1053 "Var vänlig vänta medan $(LSTR_132) installeras."
LangString LSTR_57 1053 "Installationen är klar"
LangString LSTR_58 1053 "Guiden avslutades korrekt."
LangString LSTR_59 1053 "Installationen avbröts"
LangString LSTR_60 1053 "Guiden genomfördes inte korrekt."
LangString LSTR_61 1053 &Slutför
LangString LSTR_62 1053 "Avslutar installationsguiden för $(LSTR_132)."
LangString LSTR_63 1053 "$(LSTR_132) har installerats på din dator.$\r$\n$\r$\nKlicka på Slutför för att avsluta guiden."
LangString LSTR_64 1053 "&Kör $(LSTR_132)"
LangString LSTR_65 1053 "Besök VideoLANs webbsida för VLC media player"
LangString LSTR_66 1053 8
LangString LSTR_67 1053 "Är du säker på att du vill avbryta installationen av $(LSTR_2)?"
LangString LSTR_68 1053 "Spela upp"
LangString LSTR_69 1053 "Det verkar som att VLC körs och kommer nu att stängas."
LangString LSTR_70 1053 "Denna installation kunde inte stänga VLC, var god gör det manuellt."
LangString LSTR_71 1053 "Installationen avbröts!"
LangString LSTR_72 1053 "Mediaspelare (nödvändig)"
LangString LSTR_73 1053 "Kontrollerar processer..."
LangString LSTR_74 1053 "Spela upp i VLC media player"
LangString LSTR_75 1053 "Genväg på startmenyn"
LangString LSTR_76 1053 "Genväg på skrivbordet"
LangString LSTR_77 1053 Insticksmoduler
LangString LSTR_78 1053 ActiveX-tillägg
LangString LSTR_79 1053 Skivuppspelning
LangString LSTR_80 1053 "Spela upp DVD-film"
LangString LSTR_81 1053 "Spela upp ljud-CD"
LangString LSTR_82 1053 "Spela upp VCD-film"
LangString LSTR_83 1053 "Spela upp SVCD-film"
LangString LSTR_84 1053 "Spela upp ljud-DVD"
LangString LSTR_85 1053 "Spela upp videofiler"
LangString LSTR_86 1053 "Spela upp ljudfiler"
LangString LSTR_87 1053 "Spela upp Blu-ray"
LangString LSTR_88 1053 Filtypsassociationer
LangString LSTR_89 1053 Ljudfiler
LangString LSTR_90 1053 Videofiler
LangString LSTR_91 1053 Övrigt
LangString LSTR_92 1053 Högerklicksmenyer
LangString LSTR_93 1053 "Lägg till i VLC media player-listan"
LangString LSTR_94 1053 "Radera inställningar och cache"
LangString LSTR_95 1053 "Själva mediaspelaren"
LangString LSTR_96 1053 "Lägger till ikoner till din startmeny för enkel åtkomst"
LangString LSTR_97 1053 "Lägger till en ikon till ditt skrivbord för enkel åtkomst"
LangString LSTR_98 1053 "VLC-insticksmodul för ActiveX"
LangString LSTR_99 1053 "Uppspelningsregistrering för DVD och CD"
LangString LSTR_100 1053 "Ställer in VLC media player som standardprogram för de valda filtyperna"
LangString LSTR_101 1053 "Lägger till objekt i högerklicksmenyn ($\"Spela upp i VLC media player$\" och $\"Lägg till i VLC media player-listan$\")"
LangString LSTR_102 1053 "Raderar inställningar och cachefiler som lämnats kvar från tidigare installationer av VLC media player"
LangString LSTR_103 1053 "Redan installerad"
LangString LSTR_104 1053 "Välj hur du vill installera VLC."
LangString LSTR_105 1053 "En äldre version av VLC är installerad på ditt system. Välj åtgärden du vill utföra och klicka på Nästa för att fortsätta."
LangString LSTR_106 1053 "Uppgradera VLC med tidigare inställningar (rekommenderas)"
LangString LSTR_107 1053 "Ändra inställningar (avancerat)"
LangString LSTR_108 1053 "En nyare version av VLC är redan installerad! Det rekommenderas inte att du nedgraderar till en äldre version. Välj åtgärden du vill utföra och klicka på Nästa för att fortsätta."
LangString LSTR_109 1053 "Nedgradera VLC med tidigare inställningar (rekommenderas)"
LangString LSTR_110 1053 "Välj ett underhållsalternativ att utföra."
LangString LSTR_111 1053 "VLC 3.0.24 är redan installerad. Välj den åtgärd du vill utföra och klicka på Nästa för att fortsätta."
LangString LSTR_112 1053 "Lägg till/Ta bort/Ominstallera komponenter"
LangString LSTR_113 1053 "Avinstallera VLC"
LangString LSTR_114 1053 Valfri
LangString LSTR_115 1053 Avbryt
LangString LSTR_116 1053 "< &Tillbaka"
LangString LSTR_117 1053 "Klicka på Nästa för att fortsätta."
LangString LSTR_118 1053 "Markera de komponenter du vill installera och avmarkera de komponenter du inte vill installera. $_CLICK"
LangString LSTR_119 1053 "Välj typ av installation:"
LangString LSTR_120 1053 "Eller, välj de alternativa komponenter du önskar installera:"
LangString LSTR_121 1053 "Välj komponenter att installera:"
LangString LSTR_122 1053 "Guiden kommer att installera $(LSTR_132) i följande katalog. För att installera i en annan katalog, klicka Bläddra och välj en alternativ katalog. $_CLICK"
LangString LSTR_123 1053 Målkatalog
LangString LSTR_124 1053 B&läddra...
LangString LSTR_125 1053 "Välj katalog att installera $(LSTR_132) i:"
LangString LSTR_126 1053 &Installera
LangString LSTR_127 1053 "Klicka på Installera för att starta installationen."
LangString LSTR_128 1053 "Visa &detaljer"
LangString LSTR_129 1053 Slutförd
LangString LSTR_130 1053 " "
LangString LSTR_131 1053 &Stäng
LangString LSTR_132 1053 "VLC media player"


; LANG: 1030
LangString LSTR_0 1030 "VideoLAN VLC media player"
LangString LSTR_1 1030 "$(LSTR_2) Installation"
LangString LSTR_2 1030 "VLC media player"
LangString LSTR_3 1030 "Ledig plads: "
LangString LSTR_4 1030 "Nødvendig plads: "
LangString LSTR_5 1030 "Kan ikke skrive: "
LangString LSTR_8 1030 "Kunne ikke finde symbol: "
LangString LSTR_9 1030 "Kunne ikke indlæse: "
LangString LSTR_10 1030 "Opret mappe: "
LangString LSTR_11 1030 "Opret genvej: "
LangString LSTR_12 1030 "Afinstallationsguide oprettet: "
LangString LSTR_13 1030 "Slet fil: "
LangString LSTR_14 1030 "Slet ved genstart: "
LangString LSTR_15 1030 "Fejl ved oprettelse af genvej: "
LangString LSTR_16 1030 "Fejl ved oprettelse: "
LangString LSTR_17 1030 "Fejl ved udpakning af data! Beskadiget installationsguide?"
LangString LSTR_19 1030 "ExecShell: "
LangString LSTR_20 1030 "Kør: "
LangString LSTR_21 1030 "Udpak: "
LangString LSTR_22 1030 "Udpak: fejl ved skrivning til fil "
LangString LSTR_23 1030 "Beskadiget installationsguide: ugyldig opcode"
LangString LSTR_24 1030 "Ingen OLE for: "
LangString LSTR_25 1030 "Outputmappe: "
LangString LSTR_26 1030 "Slet mappe: "
LangString LSTR_29 1030 "Sprunget over: "
LangString LSTR_30 1030 "Kopier detaljer til udklipsholderen"
LangString LSTR_32 1030 B
LangString LSTR_33 1030 " K"
LangString LSTR_34 1030 " M"
LangString LSTR_35 1030 " G"
LangString LSTR_36 1030 Anbefalet
LangString LSTR_37 1030 Minimal
LangString LSTR_38 1030 Fuld
LangString LSTR_39 1030 "Fejl ved skrivning af fil til skrivning: $\r$\n$\r$\n$0$\r$\n$\r$\nTryk på Annuller for at stoppe installationen,$\r$\nPrøv igen for at prøve igen, eller$\r$\nIgnorer for at springe over denne fil."
LangString LSTR_40 1030 0
LangString LSTR_41 1030 "Velkommen til installationsguiden for $(LSTR_132)"
LangString LSTR_42 1030 "MS Shell Dlg"
LangString LSTR_43 1030 "Denne guide hjælper dig gennem installationen af $(LSTR_132).$\r$\n$\r$\nDet anbefales, at du lukker alle kørende programmer inden start af installationsguiden. Det gør det muligt at opdatere de nødvendige systemfiler uden at skulle genstarte din computer.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1030 "Nu kender du dine rettigheder. Klik på Næste for at fortsætte."
LangString LSTR_45 1030 "&Næste >"
LangString LSTR_46 1030 Licensaftale
LangString LSTR_47 1030 "Læs venligst licensaftalen før installationen af $(LSTR_132)."
LangString LSTR_48 1030 "Tryk på Page Down for at se resten af aftalen."
LangString LSTR_49 1030 "Vælg komponenter"
LangString LSTR_50 1030 "Vælg hvilke faciliteter af $(LSTR_132) du vil installere."
LangString LSTR_51 1030 Beskrivelse
LangString LSTR_52 1030 "Placer musemarkøren over en komponent for at se dens beskrivelse."
LangString LSTR_53 1030 "Vælg installationsmappe"
LangString LSTR_54 1030 "Vælg den mappe hvori du vil installere $(LSTR_132)."
LangString LSTR_55 1030 Installerer
LangString LSTR_56 1030 "Vent venligst mens $(LSTR_132) bliver installeret."
LangString LSTR_57 1030 "Installation gennemført"
LangString LSTR_58 1030 "Installationsguiden blev gennemført."
LangString LSTR_59 1030 "Installation afbrudt"
LangString LSTR_60 1030 "Installationsguiden blev ikke gennemført."
LangString LSTR_61 1030 &Afslut
LangString LSTR_62 1030 "Gennemfører $(LSTR_132) installationsguiden"
LangString LSTR_63 1030 "$(LSTR_132) er blevet installeret på din computer.$\r$\n$\r$\nTryk på Afslut for at lukke installationsguiden."
LangString LSTR_64 1030 "&Kør $(LSTR_132)"
LangString LSTR_65 1030 "Besøg hjemmesiden for VideoLAN VLC media player"
LangString LSTR_66 1030 8
LangString LSTR_67 1030 "Er du sikker på, at du vil afslutte installationen af $(LSTR_2)?"
LangString LSTR_68 1030 Afspil
LangString LSTR_69 1030 "VLC ser ud til at køre og vil nu blive lukket."
LangString LSTR_70 1030 "Installationsprogrammet kunne ikke lukke VLC - gør det venligst manuelt."
LangString LSTR_71 1030 "Installationen blev afbrudt!"
LangString LSTR_72 1030 "Medieafspiller (påkrævet)"
LangString LSTR_73 1030 "Tjekker processer ..."
LangString LSTR_74 1030 "Afspil med VLC media player"
LangString LSTR_75 1030 "Genvej i menuen Start"
LangString LSTR_76 1030 "Genvej på skrivebordet"
LangString LSTR_77 1030 "Web plugins"
LangString LSTR_78 1030 "ActiveX plugin"
LangString LSTR_79 1030 "Afspilning af diske"
LangString LSTR_80 1030 "Afspil DVD-film"
LangString LSTR_81 1030 "Afspil lyd-CD"
LangString LSTR_82 1030 "Afspil VCD-film"
LangString LSTR_83 1030 "Afspil SVCD-film"
LangString LSTR_84 1030 "Afspil lyd-DVD"
LangString LSTR_85 1030 "Afspil videofiler"
LangString LSTR_86 1030 "Afspil lydfiler"
LangString LSTR_87 1030 "Afspil Blu-ray"
LangString LSTR_88 1030 Filtypetilknytninger
LangString LSTR_89 1030 Lydfiler
LangString LSTR_90 1030 Videofiler
LangString LSTR_91 1030 Andre
LangString LSTR_92 1030 Genvejsmenuer
LangString LSTR_93 1030 "Tilføj til spilleliste i VLC media player"
LangString LSTR_94 1030 "Slet indstillinger og mellemlager"
LangString LSTR_95 1030 "Selve medieafspilleren"
LangString LSTR_96 1030 "Tilføjer ikoner til menuen Start for nem adgang"
LangString LSTR_97 1030 "Tilføjer ikon på dit skrivebord for nem adgang"
LangString LSTR_98 1030 "VLC ActiveX pluginet"
LangString LSTR_99 1030 "Registrering af DVD- og CD-afspilning"
LangString LSTR_100 1030 "Indstil VLC media player som standardprogram til den angive filtype"
LangString LSTR_101 1030 "Tilføj menupunkter i genvejsmenuen ($\"Afspil med VLC$\" og $\"Tilføj til spilleliste i VLC$\")"
LangString LSTR_102 1030 "Sletter VLC media player-indstillinger og mellemlager-filer efterladt fra tidligere installationer"
LangString LSTR_103 1030 "Allerede installeret"
LangString LSTR_104 1030 "Vælg hvordan du vil installere VLC."
LangString LSTR_105 1030 "Dit system har en ældre version af VLC installeret. Vælg den handling, du ønsker at udføre, og klik på Næste for at fortsætte."
LangString LSTR_106 1030 "Opgradér VLC med forrige indstillinger (anbefales)"
LangString LSTR_107 1030 "Tilpas indstillinger (avanceret)"
LangString LSTR_108 1030 "Der er allerede installeret en nyere version af VLC! Det frarådes at nedgradere til en ældre version. Vælg den handling, du ønsker at udføre, og klik på Næste for at fortsætte."
LangString LSTR_109 1030 "Nedgradér VLC med forrige indstillinger (anbefales)"
LangString LSTR_110 1030 "Vælg den vedligeholdelsesfunktion, der skal udføres."
LangString LSTR_111 1030 "VLC 3.0.24 er allerede installeret. Vælg den handling, du ønsker at udføre, og klik på Næste for at fortsætte."
LangString LSTR_112 1030 "Tilføj/fjern/geninstallér komponenter"
LangString LSTR_113 1030 "Afinstallér VLC"
LangString LSTR_114 1030 Brugerdefineret
LangString LSTR_115 1030 Annuller
LangString LSTR_116 1030 "< &Tilbage"
LangString LSTR_117 1030 "Tryk på Næste for at fortsætte."
LangString LSTR_118 1030 "Tilvælg de komponenter du vil installere, og fravælg de komponenter du ikke vil installere. $_CLICK"
LangString LSTR_119 1030 "Vælg installationstype:"
LangString LSTR_120 1030 "Eller vælg de valgfrie komponenter du ønsker at installere:"
LangString LSTR_121 1030 "Vælg de komponenter der skal installeres:"
LangString LSTR_122 1030 "Installationsguiden vil installere $(LSTR_132) i følgende mappe. For at installere i en anden mappe, tryk på Gennemse og vælg en anden mappe. $_CLICK"
LangString LSTR_123 1030 Destinationsmappe
LangString LSTR_124 1030 G&ennemse...
LangString LSTR_125 1030 "Vælg den mappe hvori $(LSTR_132) skal installeres:"
LangString LSTR_126 1030 &Installer
LangString LSTR_127 1030 "Tryk på Installer for at starte installationen."
LangString LSTR_128 1030 "Vis &detaljer"
LangString LSTR_129 1030 Gennemført
LangString LSTR_130 1030 " "
LangString LSTR_131 1030 &Luk
LangString LSTR_132 1030 "VLC media player"


; LANG: 1043
LangString LSTR_0 1043 "VideoLAN VLC media player"
LangString LSTR_1 1043 $(LSTR_2)-installatie
LangString LSTR_2 1043 "VLC media player"
LangString LSTR_3 1043 "Beschikbare ruimte: "
LangString LSTR_4 1043 "Vereiste ruimte: "
LangString LSTR_5 1043 "Kon niet schrijven: "
LangString LSTR_8 1043 "Kon symbool niet vinden: "
LangString LSTR_9 1043 "Kon niet laden: "
LangString LSTR_10 1043 "Map maken: "
LangString LSTR_11 1043 "Snelkoppeling maken: "
LangString LSTR_12 1043 "Deïnstallatieprogramma gemaakt: "
LangString LSTR_13 1043 "Bestand verwijderen: "
LangString LSTR_14 1043 "Verwijderen na opnieuw opstarten: "
LangString LSTR_15 1043 "Fout bij maken snelkoppeling: "
LangString LSTR_16 1043 "Fout bij maken: "
LangString LSTR_17 1043 "Fout bij uitpakken van gegevens! Gegevens beschadigd?"
LangString LSTR_19 1043 "ExecShell: "
LangString LSTR_20 1043 "Uitvoeren: "
LangString LSTR_21 1043 "Uitpakken: "
LangString LSTR_22 1043 "Uitpakken: fout bij schrijven naar bestand "
LangString LSTR_23 1043 "Installatieprogramma beschadigd: ongeldige opcode"
LangString LSTR_24 1043 "Geen OLE voor: "
LangString LSTR_25 1043 "Uitvoermap: "
LangString LSTR_26 1043 "Map verwijderen: "
LangString LSTR_29 1043 "Overgeslagen: "
LangString LSTR_30 1043 "Details kopiëren naar klembord"
LangString LSTR_32 1043 B
LangString LSTR_33 1043 " K"
LangString LSTR_34 1043 " M"
LangString LSTR_35 1043 " G"
LangString LSTR_36 1043 Aanbevolen
LangString LSTR_37 1043 Minimaal
LangString LSTR_38 1043 Volledig
LangString LSTR_39 1043 "Fout bij het schrijven naar bestand: $\r$\n$\r$\n$0$\r$\n$\r$\nKlik op Afbreken om de installatie te stoppen,$\r$\nOpnieuw om het opnieuw te proberen of$\r$\nNegeren om dit bestand over te slaan."
LangString LSTR_40 1043 0
LangString LSTR_41 1043 "Welkom bij de $(LSTR_132)-installatiewizard"
LangString LSTR_42 1043 "MS Shell Dlg"
LangString LSTR_43 1043 "Deze wizard zal $(LSTR_132) op uw systeem installeren.$\r$\n$\r$\nHet wordt aanbevolen alle overige toepassingen af te sluiten alvorens de installatie te starten. Dit maakt het mogelijk relevante systeembestanden bij te werken zonder uw systeem opnieuw op te moeten starten.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1043 "U bent zich nu bewust van uw rechten. Klik op Volgende om door te gaan."
LangString LSTR_45 1043 "&Volgende >"
LangString LSTR_46 1043 Licentieovereenkomst
LangString LSTR_47 1043 "Lees de licentieovereenkomst voordat u $(LSTR_132) installeert."
LangString LSTR_48 1043 "Druk op Page Down om de rest van de overeenkomst te zien."
LangString LSTR_49 1043 "Onderdelen kiezen"
LangString LSTR_50 1043 "Kies de onderdelen die u wilt installeren."
LangString LSTR_51 1043 Beschrijving
LangString LSTR_52 1043 "Beweeg uw muis over een onderdeel om de beschrijving te zien."
LangString LSTR_53 1043 "Installatielocatie kiezen"
LangString LSTR_54 1043 "Kies de map waarin u $(LSTR_132) wilt installeren."
LangString LSTR_55 1043 "Bezig met installeren"
LangString LSTR_56 1043 "Een ogenblik geduld terwijl $(LSTR_132) wordt geïnstalleerd."
LangString LSTR_57 1043 "Installatie voltooid"
LangString LSTR_58 1043 "De installatie is succesvol voltooid."
LangString LSTR_59 1043 "Installatie afgebroken"
LangString LSTR_60 1043 "De installatie is niet voltooid."
LangString LSTR_61 1043 &Voltooien
LangString LSTR_62 1043 "Voltooien van de $(LSTR_132)-installatiewizard"
LangString LSTR_63 1043 "$(LSTR_132) is geïnstalleerd op uw systeem.$\r$\n$\r$\nKlik op Voltooien om deze wizard te sluiten."
LangString LSTR_64 1043 "$(LSTR_132) &starten"
LangString LSTR_65 1043 "Bezoek de website van Videolan VLC Media Player"
LangString LSTR_66 1043 8
LangString LSTR_67 1043 "Weet u zeker dat u de $(LSTR_2)-installatie wilt afsluiten?"
LangString LSTR_68 1043 Afspelen
LangString LSTR_69 1043 "VLC lijkt actief te zijn en zal nu worden afgesloten."
LangString LSTR_70 1043 "Deze installer kon VLC niet afsluiten. Gelieve dit manueel te doen."
LangString LSTR_71 1043 "Installatie afgebroken!"
LangString LSTR_72 1043 "Media Player (vereist)"
LangString LSTR_73 1043 "Processen controleren..."
LangString LSTR_74 1043 "VLC Media Player - Afspelen"
LangString LSTR_75 1043 Startmenu-snelkoppeling
LangString LSTR_76 1043 Bureaublad-snelkoppeling
LangString LSTR_77 1043 Web-plugins
LangString LSTR_78 1043 ActiveX-plugin
LangString LSTR_79 1043 "Schijven afspelen"
LangString LSTR_80 1043 "Dvd-film afspelen"
LangString LSTR_81 1043 "Audio-cd afspelen"
LangString LSTR_82 1043 "VCD-film afspelen"
LangString LSTR_83 1043 "SVCD-film afspelen"
LangString LSTR_84 1043 "Audio-dvd afspelen"
LangString LSTR_85 1043 "Videobestanden afspelen"
LangString LSTR_86 1043 "Audiobestanden afspelen"
LangString LSTR_87 1043 "Blu-ray afspelen"
LangString LSTR_88 1043 Bestandstype-toewijzingen
LangString LSTR_89 1043 Audiobestanden
LangString LSTR_90 1043 Videobestanden
LangString LSTR_91 1043 Andere
LangString LSTR_92 1043 Contextmenu's
LangString LSTR_93 1043 "VLC Media Player - Aan afspeellijst toevoegen"
LangString LSTR_94 1043 "Voorkeuren en buffer wissen"
LangString LSTR_95 1043 "De mediaspeler zelf"
LangString LSTR_96 1043 "Pictogrammen aan startmenu toevoegen voor eenvoudige toegang"
LangString LSTR_97 1043 "Pictogram aan bureaublad toevoegen voor eenvoudige toegang"
LangString LSTR_98 1043 "De VLC ActiveX-plugin"
LangString LSTR_99 1043 "Dvd- en cd-afspeelregistratie"
LangString LSTR_100 1043 "Stelt VLC Media Player in als standaardtoepassing voor het opgegeven bestandstype"
LangString LSTR_101 1043 "Contextmenu-items toevoegen ('Afspelen met VLC Media Player',...)"
LangString LSTR_102 1043 "Verwijdert voorkeuren en bufferbestanden die van vorige installaties van VLC Media Player zijn overgebleven"
LangString LSTR_103 1043 "Reeds geïnstalleerd"
LangString LSTR_104 1043 "Kies hoe u VLC wilt installeren."
LangString LSTR_105 1043 "Er is een oudere versie van VLC op uw systeem geïnstalleerd. Selecteer de bewerking die u wilt uitvoeren en klik op Volgende om verder te gaan."
LangString LSTR_106 1043 "VLC bijwerken en vorige instellingen behouden (aanbevolen)"
LangString LSTR_107 1043 "Instellingen wijzigen (geavanceerd)"
LangString LSTR_108 1043 "Er is al een nieuwere versie van VLC geïnstalleerd! Het is niet aanbevolen om te downgraden naar een oudere versie. Selecteer de bewerking die u wilt uitvoeren en klik op Volgende om verder te gaan."
LangString LSTR_109 1043 "VLC downgraden en vorige instellingen behouden (aanbevolen)"
LangString LSTR_110 1043 "Kies de uit te voeren onderhoudsoptie."
LangString LSTR_111 1043 "VLC 3.0.24 is al geïnstalleerd. Selecteer de bewerking die u wilt uitvoeren en klik op Volgende om verder te gaan."
LangString LSTR_112 1043 "Onderdelen toevoegen, verwijderen of opnieuw installeren"
LangString LSTR_113 1043 "VLC verwijderen"
LangString LSTR_114 1043 Aangepast
LangString LSTR_115 1043 Annuleren
LangString LSTR_116 1043 "< V&orige"
LangString LSTR_117 1043 "Klik op Volgende om verder te gaan."
LangString LSTR_118 1043 "Selecteer de onderdelen die u wilt installeren en deselecteer welke u niet wilt installeren. $_CLICK"
LangString LSTR_119 1043 "Selecteer het installatietype:"
LangString LSTR_120 1043 "Of selecteer de optionele onderdelen die moeten worden geïnstalleerd:"
LangString LSTR_121 1043 "Selecteer de onderdelen die moeten worden geïnstalleerd:"
LangString LSTR_122 1043 "Setup zal $(LSTR_132) in de volgende map installeren. Klik op Bladeren als u $(LSTR_132) in een andere map wilt installeren en selecteer deze. $_CLICK"
LangString LSTR_123 1043 Installatiemap
LangString LSTR_124 1043 &Bladeren...
LangString LSTR_125 1043 "Selecteer de map om $(LSTR_132) in te installeren:"
LangString LSTR_126 1043 &Installeren
LangString LSTR_127 1043 "Klik op Installeren om de installatie te beginnen."
LangString LSTR_128 1043 "&Details tonen"
LangString LSTR_129 1043 Voltooid
LangString LSTR_130 1043 " "
LangString LSTR_131 1043 &Afsluiten
LangString LSTR_132 1043 "VLC media player"


; LANG: 1040
LangString LSTR_0 1040 "VideoLAN VLC media player"
LangString LSTR_1 1040 "Installazione di $(LSTR_2)"
LangString LSTR_2 1040 "VLC media player"
LangString LSTR_3 1040 "Spazio disponibile: "
LangString LSTR_4 1040 "Spazio richiesto: "
LangString LSTR_5 1040 "Impossibile scrivere: "
LangString LSTR_8 1040 "Impossibile trovare il simbolo: "
LangString LSTR_9 1040 "Impossibile caricare: "
LangString LSTR_10 1040 "Creazione cartella: "
LangString LSTR_11 1040 "Creazione collegamento: "
LangString LSTR_12 1040 "Creazione programma disinstallazione: "
LangString LSTR_13 1040 "Eliminazione file: "
LangString LSTR_14 1040 "Elimina al riavvio: "
LangString LSTR_15 1040 "Errore nella creazione del collegamento: "
LangString LSTR_16 1040 "Errore nella creazione di: "
LangString LSTR_17 1040 "Errore nella decompressione dei dati! Probabile programma di installazione corrotto."
LangString LSTR_19 1040 "ExecShell: "
LangString LSTR_20 1040 "Esecuzione di: "
LangString LSTR_21 1040 "Estrazione di: "
LangString LSTR_22 1040 "Estrazione: errore nella scrittura nel file "
LangString LSTR_23 1040 "Programma di installazione corrotto: opcode non valido"
LangString LSTR_24 1040 "Nessuna OLE per: "
LangString LSTR_25 1040 "Cartella destinazione: "
LangString LSTR_26 1040 "Rimozione cartella: "
LangString LSTR_29 1040 "Saltato: "
LangString LSTR_30 1040 "Copia i dettagli negli Appunti"
LangString LSTR_32 1040 B
LangString LSTR_33 1040 " K"
LangString LSTR_34 1040 " M"
LangString LSTR_35 1040 " G"
LangString LSTR_36 1040 Consigliata
LangString LSTR_37 1040 Minimale
LangString LSTR_38 1040 Completa
LangString LSTR_39 1040 "Errore nell'apertura del file per la scrittura: $\r$\n$\t$\"$0$\"$\r$\nSeleziona 'Termina' per interrompere l'installazione,$\r$\n'Riprova' per ritentare, oppure$\r$\n'Ignora' per saltare questo file."
LangString LSTR_40 1040 0
LangString LSTR_41 1040 "Installazione di $(LSTR_132)"
LangString LSTR_42 1040 "MS Shell Dlg"
LangString LSTR_43 1040 "Questo programma installerà $(LSTR_132) nel computer.$\r$\n$\r$\nSi raccomanda di chiudere tutte le altre applicazioni prima di iniziare l'installazione. Questo permetterà al programma di installazione di aggiornare i file di sistema senza dover riavviare il computer.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1040 "Ora conosci i tuoi diritti. Fai clic su Avanti per continuare."
LangString LSTR_45 1040 "&Avanti >"
LangString LSTR_46 1040 "Accordo di licenza"
LangString LSTR_47 1040 "Leggi le condizioni dell'accordo di licenza prima di installare $(LSTR_132)."
LangString LSTR_48 1040 "Premi 'PagGiù' per visualizzare il resto dell'accordo di licenza."
LangString LSTR_49 1040 "Selezione componenti"
LangString LSTR_50 1040 "Seleziona i componenti di $(LSTR_132) da installare."
LangString LSTR_51 1040 Descrizione
LangString LSTR_52 1040 "Posiziona il puntatore del mouse sul componente per visualizzare  la relativa descrizione."
LangString LSTR_53 1040 "Selezione cartella installazione"
LangString LSTR_54 1040 "Seleziona la cartella nella quale installare $(LSTR_132)."
LangString LSTR_55 1040 Installazione
LangString LSTR_56 1040 "Attendi il completamento dell'installazione di $(LSTR_132)."
LangString LSTR_57 1040 "Installazione completata"
LangString LSTR_58 1040 "L'installazione è stata completata correttamente."
LangString LSTR_59 1040 "Installazione interrotta"
LangString LSTR_60 1040 "L'installazione non è stata completata correttamente."
LangString LSTR_61 1040 &Chiudi
LangString LSTR_62 1040 "Installazione di $(LSTR_132) completata."
LangString LSTR_63 1040 "$(LSTR_132) è stato installato.$\r$\n$\r$\nScegli 'Chiudi' per chiudere il programma di installazione."
LangString LSTR_64 1040 "Esegui $(LSTR_132)"
LangString LSTR_65 1040 "Visita il sito web del lettore multimediale VLC di VideoLAN"
LangString LSTR_66 1040 8
LangString LSTR_67 1040 "Sei sicuro di voler interrompere l'installazione di $(LSTR_2) ?"
LangString LSTR_68 1040 Riproduci
LangString LSTR_69 1040 "VLC sembra essere in esecuzione e sarà chiuso subito."
LangString LSTR_70 1040 "L'installatore non è riuscito a chiudere VLC, chiudilo manualmente."
LangString LSTR_71 1040 "Installazione interrotta!"
LangString LSTR_72 1040 "Lettore multimediale (richiesto)"
LangString LSTR_73 1040 "Verifica processi in corso..."
LangString LSTR_74 1040 "Riproduci con il lettore multimediale VLC"
LangString LSTR_75 1040 "Collegamento nel menu Start"
LangString LSTR_76 1040 "Collegamento del desktop"
LangString LSTR_77 1040 "Estensioni web"
LangString LSTR_78 1040 "Estensione ActiveX"
LangString LSTR_79 1040 "Riproduzione dischi"
LangString LSTR_80 1040 "Riproduci DVD video"
LangString LSTR_81 1040 "Riproduci CD audio"
LangString LSTR_82 1040 "Riproduci VCD video"
LangString LSTR_83 1040 "Riproduci SVCD video"
LangString LSTR_84 1040 "Riproduci DVD audio"
LangString LSTR_85 1040 "Riproduci file video"
LangString LSTR_86 1040 "Riproduci file audio"
LangString LSTR_87 1040 "Riproduci Blu-ray"
LangString LSTR_88 1040 "Associazioni dei tipi di file"
LangString LSTR_89 1040 "File audio"
LangString LSTR_90 1040 "File video"
LangString LSTR_91 1040 Altro
LangString LSTR_92 1040 "Menu contestuali"
LangString LSTR_93 1040 "Aggiungi alla scaletta del lettore multimediale VLC"
LangString LSTR_94 1040 "Elimina le preferenze e la cache"
LangString LSTR_95 1040 "Il lettore multimediale"
LangString LSTR_96 1040 "Aggiunge le icona al menu di avvio per un accesso rapido"
LangString LSTR_97 1040 "Aggiunge l'icona al tuo desktop per un accesso rapido"
LangString LSTR_98 1040 "L'estensione ActiveX di VLC"
LangString LSTR_99 1040 "Riproduzione diretta di DVD e CD"
LangString LSTR_100 1040 "Imposta il lettore multimediale VLC come applicazione predefinita per il tipo di file specificato"
LangString LSTR_101 1040 "Aggiunge elementi al menu contestuale ('Riproduci con VLC' e 'Aggiungi alla scaletta di VLC')"
LangString LSTR_102 1040 "Elimina i file delle preferenze e della cache del lettore VLC delle precedenti installazioni"
LangString LSTR_103 1040 "Già installato"
LangString LSTR_104 1040 "Scegli come installare VLC."
LangString LSTR_105 1040 "Una versione più datata di VLC è installata sul tuo sistema. Seleziona l'operazione che desideri eseguire e fai clic su Avanti per continuare."
LangString LSTR_106 1040 "Aggiorna VLC utilizzando le impostazioni precedenti (consigliata)"
LangString LSTR_107 1040 "Modifica le impostazioni (avanzato)"
LangString LSTR_108 1040 "Una versione più recente di VLC è già installata! Non è consigliato tornare a una versione più datata. Seleziona l'operazione che desideri eseguire e fai clic su Avanti per continuare."
LangString LSTR_109 1040 "Torna alla versione più datata di VLC utilizzando le impostazioni precedenti (consigliato)"
LangString LSTR_110 1040 "Scegli l'opzione di manutenzione da eseguire."
LangString LSTR_111 1040 "VLC 3.0.24 è già installato. Seleziona l'operazione che desideri eseguire e fai clic su Avanti per continuare."
LangString LSTR_112 1040 "Aggiungi/Rimuovi/Reinstalla componenti"
LangString LSTR_113 1040 "Disinstalla VLC"
LangString LSTR_114 1040 Personalizzata
LangString LSTR_115 1040 Annulla
LangString LSTR_116 1040 "< &Indietro"
LangString LSTR_117 1040 "Per proseguire, seleziona 'Avanti'."
LangString LSTR_118 1040 "Seleziona componenti da installare."
LangString LSTR_119 1040 "Seleziona tipo installazione:"
LangString LSTR_120 1040 "Oppure, seleziona componenti opzionali da installare:"
LangString LSTR_121 1040 "Seleziona componenti da installare:"
LangString LSTR_122 1040 "Questa procedura installerà $(LSTR_132) in questa cartella.$\r$\nPer installare in una cartella diversa, seleziona 'Sfoglia' e scegli un'altra cartella.$\r$\n$_CLICK"
LangString LSTR_123 1040 "Cartella destinazione"
LangString LSTR_124 1040 S&foglia...
LangString LSTR_125 1040 "Seleziona la cartella dove installare $(LSTR_132):"
LangString LSTR_126 1040 Ins&talla
LangString LSTR_127 1040 "Per avviare l'installazione, seleziona 'Installa'."
LangString LSTR_128 1040 "Visualizza &dettagli"
LangString LSTR_129 1040 "Installazione completata"
LangString LSTR_130 1040 " "
LangString LSTR_131 1040 &Fine
LangString LSTR_132 1040 "VLC media player"


; LANG: 1041
LangString LSTR_0 1041 "VideoLAN VLC media player"
LangString LSTR_1 1041 "$(LSTR_2) セットアップ"
LangString LSTR_2 1041 "VLC media player"
LangString LSTR_3 1041 "空き容量: "
LangString LSTR_4 1041 "必要容量: "
LangString LSTR_5 1041 書き込めません:
LangString LSTR_8 1041 シンボルが見つかりません:
LangString LSTR_9 1041 読み込みに失敗:
LangString LSTR_10 1041 フォルダ作成:
LangString LSTR_11 1041 ショートカット作成:
LangString LSTR_12 1041 アンインストーラ作成:
LangString LSTR_13 1041 ファイル削除:
LangString LSTR_14 1041 再起動時に削除:
LangString LSTR_15 1041 ショートカット作成エラー:
LangString LSTR_16 1041 作成エラー:
LangString LSTR_17 1041 データの展開エラー$\r$\n$\r$\nインストーラが破損していませんか？
LangString LSTR_19 1041 "拡張子の関連付け実行: "
LangString LSTR_20 1041 実行:
LangString LSTR_21 1041 展開:
LangString LSTR_22 1041 展開:ファイルへの書き込みエラー
LangString LSTR_23 1041 "インストーラーが壊れている:無効な opcode"
LangString LSTR_24 1041 "OLE がありません:"
LangString LSTR_25 1041 出力先フォルダ:
LangString LSTR_26 1041 フォルダ削除:
LangString LSTR_29 1041 省略:
LangString LSTR_30 1041 クリップボードへ詳細をコピー
LangString LSTR_32 1041 B
LangString LSTR_33 1041 " K"
LangString LSTR_34 1041 " M"
LangString LSTR_35 1041 " G"
LangString LSTR_36 1041 推奨
LangString LSTR_37 1041 最小
LangString LSTR_38 1041 すべて
LangString LSTR_39 1041 書き込みファイルオープンのエラー:$\r$\n$\t$\"$0$\"$\r$\nインストールを中止するには「中止」、$\r$\n再びこのファイルの作成を試みるには「再試行」、$\r$\nこのファイルをスキップして続けるには「無視」を押してください。
LangString LSTR_40 1041 0
LangString LSTR_41 1041 "$(LSTR_132) セットアップへようこそ"
LangString LSTR_42 1041 "ＭＳ Ｐゴシック"
LangString LSTR_43 1041 "セットアップは、$(LSTR_132) のインストールをご案内します。$\r$\n$\r$\nセットアップを開始する前に、他のすべてのアプリケーションを終了することを推奨します。これによってセットアップがコンピュータを再起動せずに、システム ファイルを更新することができるようになります。$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1041 あなたの権利について確認したら、次へをクリックしてください。
LangString LSTR_45 1041 "次へ(&N) >"
LangString LSTR_46 1041 使用許諾契約
LangString LSTR_47 1041 "$(LSTR_132) をインストールする前に、ライセンス条件を確認してください。"
LangString LSTR_48 1041 "[Page Down] を押し契約をすべてお読みください。"
LangString LSTR_49 1041 構成要素の選択
LangString LSTR_50 1041 "インストールしたい $(LSTR_132) の機能を選択してください。"
LangString LSTR_51 1041 説明
LangString LSTR_52 1041 "構成要素にマウス カーソルを載せると、説明が表示されます。"
LangString LSTR_53 1041 インストール先の選択
LangString LSTR_54 1041 "$(LSTR_132) をインストールするフォルダを選択してください。"
LangString LSTR_55 1041 インストール
LangString LSTR_56 1041 "$(LSTR_132) をインストール中です。お待ちください。"
LangString LSTR_57 1041 インストールの完了
LangString LSTR_58 1041 インストールに成功しました。
LangString LSTR_59 1041 インストールの中止
LangString LSTR_60 1041 セットアップは正常に完了しませんでした。
LangString LSTR_61 1041 完了(&F)
LangString LSTR_62 1041 "$(LSTR_132) セットアップの完了"
LangString LSTR_63 1041 "$(LSTR_132) は、このコンピュータにインストールされました。$\r$\n$\r$\n「完了」をクリックしセットアップを閉じます。"
LangString LSTR_64 1041 "$(LSTR_132) を実行(&R)"
LangString LSTR_65 1041 "VideoLAN VLCメディアプレイヤーのウェブサイトに移動"
LangString LSTR_66 1041 9
LangString LSTR_67 1041 "$(LSTR_2) セットアップを中止しますか？"
LangString LSTR_68 1041 再生
LangString LSTR_69 1041 VLCが実行中なので、閉じられます。
LangString LSTR_70 1041 インストーラーはVLCを閉じることができません、手動で行ってください。
LangString LSTR_71 1041 インストールが異常終了しました!
LangString LSTR_72 1041 "メディアプレイヤー (必須)"
LangString LSTR_73 1041 チェック中...
LangString LSTR_74 1041 VLCメディアプレイヤーで再生
LangString LSTR_75 1041 スタートメニューショートカット
LangString LSTR_76 1041 デスクトップショートカット
LangString LSTR_77 1041 ウェブプラグイン
LangString LSTR_78 1041 ActiveXプラグイン
LangString LSTR_79 1041 ディスク再生
LangString LSTR_80 1041 DVDムービー再生
LangString LSTR_81 1041 オーディオCD再生
LangString LSTR_82 1041 VCDムービー再生
LangString LSTR_83 1041 SVCDムービー再生
LangString LSTR_84 1041 オーディオDVD再生
LangString LSTR_85 1041 ビデオファイル再生
LangString LSTR_86 1041 オーディオファイル再生
LangString LSTR_87 1041 ブルーレイを再生
LangString LSTR_88 1041 ファイル形式の関連付け
LangString LSTR_89 1041 オーディオファイル
LangString LSTR_90 1041 ビデオファイル
LangString LSTR_91 1041 その他
LangString LSTR_92 1041 コンテキストメニュー
LangString LSTR_93 1041 VLCメディアプレイヤーのプレイリストに追加
LangString LSTR_94 1041 設定とキャッシュを削除
LangString LSTR_95 1041 メディアプレイヤー自身
LangString LSTR_96 1041 簡単にアクセスできるようにスタートメニューにアイコンを追加
LangString LSTR_97 1041 簡単にアクセスできるようにデスクトップにアイコンを追加
LangString LSTR_98 1041 "VLC ActiveXプラグイン"
LangString LSTR_99 1041 DVDとCD再生の登録
LangString LSTR_100 1041 指定されたファイル形式のデフォルトアプリケーションとしてVLCメディアプレイヤーを設定
LangString LSTR_101 1041 "コンテキストメニューを追加 ('VLCで再生'と'VLCのプレイリストに追加')"
LangString LSTR_102 1041 前回のインストール時から残っているVLCメディアプレイヤーの設定とキャッシュを削除
LangString LSTR_103 1041 すでにインストールされています
LangString LSTR_104 1041 VLCをインストールする方法を選択してください。
LangString LSTR_105 1041 古いバージョンのVLCがシステムにインストールされています。処理したいオペレーションを選択して次へをクリックしてください。
LangString LSTR_106 1041 "以前の設定を使ってVLCをアップグレード (推奨)"
LangString LSTR_107 1041 "設定の変更 (詳細)"
LangString LSTR_108 1041 新しいバージョンのVLCが既にインストールされています。古いバージョンへのダウングレードは推奨されていません。処理したいオペレーションを選択して次へをクリックしてください。
LangString LSTR_109 1041 "以前の設定を使ってVLCをダウングレード (推奨)"
LangString LSTR_110 1041 処理したいメンテナンスオプションを選択してください。
LangString LSTR_111 1041 "VLC 3.0.24 は既にインストールされています。処理したいオペレーションを選択して次へをクリックしてください。"
LangString LSTR_112 1041 コンポーネントの追加/削除/再インストール
LangString LSTR_113 1041 VLCのアンインストール
LangString LSTR_114 1041 カスタム
LangString LSTR_115 1041 キャンセル
LangString LSTR_116 1041 "< 戻る(&B)"
LangString LSTR_117 1041 「次へ」をクリックし続行します。
LangString LSTR_118 1041 "インストールしたい構成要素にチェックしてください。不要なものはチェックを外してください。 $_CLICK"
LangString LSTR_119 1041 インストールの種類を選択:
LangString LSTR_120 1041 またはインストールしたい構成要素を選択:
LangString LSTR_121 1041 インストールする構成要素を選択:
LangString LSTR_122 1041 "$(LSTR_132) を以下のフォルダにインストールします。別のフォルダにインストールするには、「参照」 を押しフォルダを選択してください。 $_CLICK"
LangString LSTR_123 1041 インストール先のフォルダ
LangString LSTR_124 1041 参照(&R)...
LangString LSTR_125 1041 "$(LSTR_132) をインストールするフォルダを選択:"
LangString LSTR_126 1041 インストール(&I)
LangString LSTR_127 1041 「インストール」をクリックしインストールを開始します。
LangString LSTR_128 1041 詳細を表示(&D)
LangString LSTR_129 1041 完了
LangString LSTR_130 1041 " "
LangString LSTR_131 1041 閉じる(&C)
LangString LSTR_132 1041 "VLC media player"


; LANG: 1028
LangString LSTR_0 1028 "VideoLAN VLC media player"
LangString LSTR_1 1028 "$(LSTR_2) 安裝"
LangString LSTR_2 1028 "VLC media player"
LangString LSTR_3 1028 "可用空間: "
LangString LSTR_4 1028 "所需空間: "
LangString LSTR_5 1028 "無法寫入: "
LangString LSTR_8 1028 "無法找到符號: "
LangString LSTR_9 1028 "無法載入: "
LangString LSTR_10 1028 "$\"建立資料夾: $\" "
LangString LSTR_11 1028 "建立捷徑: "
LangString LSTR_12 1028 "建立解除安裝程式: "
LangString LSTR_13 1028 "刪除檔案: "
LangString LSTR_14 1028 "重新開機後刪除: "
LangString LSTR_15 1028 "建立捷徑時發生錯誤: "
LangString LSTR_16 1028 "建立時發生錯誤: "
LangString LSTR_17 1028 解壓縮資料發生錯誤！安裝程式是否已損壞？
LangString LSTR_19 1028 "執行殼層程式: "
LangString LSTR_20 1028 "執行: "
LangString LSTR_21 1028 "抽取: "
LangString LSTR_22 1028 "抽取: 無法寫入檔案 "
LangString LSTR_23 1028 "安裝程式損毀: 無效的作業代碼 "
LangString LSTR_24 1028 "沒有 OLE 用於: "
LangString LSTR_25 1028 "輸出資料夾: "
LangString LSTR_26 1028 "移除資料夾: "
LangString LSTR_29 1028 "已略過: "
LangString LSTR_30 1028 "複製細節到剪貼簿 "
LangString LSTR_32 1028 B
LangString LSTR_33 1028 " K"
LangString LSTR_34 1028 " M"
LangString LSTR_35 1028 " G"
LangString LSTR_36 1028 建議的安裝
LangString LSTR_37 1028 最小化安裝
LangString LSTR_38 1028 完整安裝
LangString LSTR_39 1028 "無法開啟要寫入的檔案: $\r$\n$\t$\"$0$\"$\r$\n按「中止」停止安裝，$\r$\n「重試」重新嘗試寫入檔案，或$\r$\n「忽略」略過此檔案。"
LangString LSTR_40 1028 0
LangString LSTR_41 1028 "歡迎使用 $(LSTR_132) 安裝精靈"
LangString LSTR_42 1028 新細明體
LangString LSTR_43 1028 "本精靈會引導您完成安裝 $(LSTR_132)。$\r$\n$\r$\n在開始安裝之前，建議先關閉其他所有應用程式。這將允許安裝程式更新相關的系統檔案，而不需要重新啟動電腦。$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1028 您已經被告知您的權利了，請按下一步以繼續
LangString LSTR_45 1028 "下一步(&N) >"
LangString LSTR_46 1028 授權協議
LangString LSTR_47 1028 "在安裝 $(LSTR_132) 之前，請檢閱授權條款。"
LangString LSTR_48 1028 "檢閱協議的其餘部分，按 [PgDn] 往下捲動頁面。"
LangString LSTR_49 1028 選擇元件
LangString LSTR_50 1028 "選擇想要安裝 $(LSTR_132) 的功能。"
LangString LSTR_51 1028 說明
LangString LSTR_52 1028 將滑鼠指標停懸到元件之上，即可見到其說明。
LangString LSTR_53 1028 選取安裝位置
LangString LSTR_54 1028 "選取 $(LSTR_132) 要安裝的資料夾。"
LangString LSTR_55 1028 安裝
LangString LSTR_56 1028 "$(LSTR_132) 正在安裝，請稍候。"
LangString LSTR_57 1028 完成安裝
LangString LSTR_58 1028 安裝已完成。
LangString LSTR_59 1028 已中止安裝
LangString LSTR_60 1028 安裝並未完成。
LangString LSTR_61 1028 完成(&F)
LangString LSTR_62 1028 "即將完成安裝 $(LSTR_132)"
LangString LSTR_63 1028 "已在電腦安裝 $(LSTR_132) 。$\r$\n按 [完成(F)] 關閉安裝程式。"
LangString LSTR_64 1028 "執行 $(LSTR_132)(&R)"
LangString LSTR_65 1028 "前往 the VideoLAN VLC 媒體播放器網站"
LangString LSTR_66 1028 9
LangString LSTR_67 1028 "確定要結束 $(LSTR_2) 的安裝程式嗎？"
LangString LSTR_68 1028 播放
LangString LSTR_69 1028 "VLC 似乎正在執行中且將被關閉"
LangString LSTR_70 1028 "安裝程式無法順利關閉 VLC，請手動關閉。"
LangString LSTR_71 1028 中止安裝！
LangString LSTR_72 1028 "媒體播放器 (必要)"
LangString LSTR_73 1028 執行檢查中...
LangString LSTR_74 1028 "以 VLC 媒體播放器播放"
LangString LSTR_75 1028 開始功能表捷徑
LangString LSTR_76 1028 桌面捷徑
LangString LSTR_77 1028 網頁外掛
LangString LSTR_78 1028 "ActiveX 外掛"
LangString LSTR_79 1028 光碟播放
LangString LSTR_80 1028 "播放 DVD 電影"
LangString LSTR_81 1028 "播放音樂 CD"
LangString LSTR_82 1028 "播放 VCD 電影"
LangString LSTR_83 1028 "播放 SVCD 電影"
LangString LSTR_84 1028 "播放音訊 DVD"
LangString LSTR_85 1028 播放視訊檔案
LangString LSTR_86 1028 播放音訊檔案
LangString LSTR_87 1028 播放藍光
LangString LSTR_88 1028 檔案類型關聯
LangString LSTR_89 1028 音訊檔案
LangString LSTR_90 1028 視訊檔案
LangString LSTR_91 1028 其他
LangString LSTR_92 1028 右鍵選單
LangString LSTR_93 1028 "新增至 VLC 媒體播放器的播放清單"
LangString LSTR_94 1028 刪除偏好設定與快取
LangString LSTR_95 1028 媒體播放器本體
LangString LSTR_96 1028 在開始功能表新增啟動圖示以利存取
LangString LSTR_97 1028 在桌面新增圖示以利存取
LangString LSTR_98 1028 "VLC ActiveX 外掛"
LangString LSTR_99 1028 "註冊 DVD 與 CD 播放"
LangString LSTR_100 1028 "設定 VLC 媒體播放器為特定檔案類型的預設程式"
LangString LSTR_101 1028 "新增右鍵選單項目 (「以 VLC 播放」與「新增至 VLC 播放清單」)"
LangString LSTR_102 1028 "刪除上一個 VLC 媒體播放器安裝留下來的偏好設定與快取"
LangString LSTR_103 1028 已安裝
LangString LSTR_104 1028 "請選擇您要如何安裝 VLC。"
LangString LSTR_105 1028 您的系統上已安裝了舊的版本，請選擇一個您要執行的動作並按下一步以繼續。
LangString LSTR_106 1028 "使用之前的設定值更新 VLC (建議選項)"
LangString LSTR_107 1028 "修改設定 (進階)"
LangString LSTR_108 1028 "新版的 VLC 已經安裝！我們不建議您降級到舊版，請選擇一個您要執行的動作並按下一步以繼續。"
LangString LSTR_109 1028 "使用之前的設定值降級 VLC (建議選項)"
LangString LSTR_110 1028 請選擇要執行的維護選項。
LangString LSTR_111 1028 "VLC 版號 3.0.24 已安裝，請選擇一個您要執行的動作並按下一步以繼續。"
LangString LSTR_112 1028 "新增/移除/重新安裝 元件"
LangString LSTR_113 1028 "移除 VLC"
LangString LSTR_114 1028 自訂
LangString LSTR_115 1028 取消
LangString LSTR_116 1028 "< 上一步(&B)"
LangString LSTR_117 1028 按「下一步(N)」繼續。
LangString LSTR_118 1028 "勾選想要安裝的元件，並解除勾選不想安裝的元件。 $_CLICK"
LangString LSTR_119 1028 "選取安裝的類型: "
LangString LSTR_120 1028 "又或者，自訂選取想安裝的元件: "
LangString LSTR_121 1028 "選取安裝的元件: "
LangString LSTR_122 1028 "安裝程式會將 $(LSTR_132) 安裝在以下資料夾。要安裝到不同的資料夾，按「瀏覽(B)...」並選擇其他資料夾。 $_CLICK"
LangString LSTR_123 1028 目標資料夾
LangString LSTR_124 1028 瀏覽(&R)...
LangString LSTR_125 1028 "選取要安裝 $(LSTR_132) 的資料夾: "
LangString LSTR_126 1028 安裝(&I)
LangString LSTR_127 1028 按「安裝(I)」開始安裝。
LangString LSTR_128 1028 顯示細節(&D)
LangString LSTR_129 1028 已完成
LangString LSTR_130 1028 " "
LangString LSTR_131 1028 關閉(&C)
LangString LSTR_132 1028 "VLC media player"


; LANG: 2052
LangString LSTR_0 2052 "VideoLAN VLC media player"
LangString LSTR_1 2052 "$(LSTR_2) 安装"
LangString LSTR_2 2052 "VLC media player"
LangString LSTR_3 2052 "可用空间: "
LangString LSTR_4 2052 "所需空间: "
LangString LSTR_5 2052 "无法写入: "
LangString LSTR_8 2052 "无法找到符号: "
LangString LSTR_9 2052 "无法加载: "
LangString LSTR_10 2052 "$\"创建文件夹: $\" "
LangString LSTR_11 2052 "创建快捷方式: "
LangString LSTR_12 2052 "创建卸载程序: "
LangString LSTR_13 2052 "删除文件: "
LangString LSTR_14 2052 "重新启动后删除: "
LangString LSTR_15 2052 "创建快捷方式时发生错误: "
LangString LSTR_16 2052 "创建时发生错误: "
LangString LSTR_17 2052 解压缩数据时发生错误！请检查安装程序是否损坏。
LangString LSTR_19 2052 "执行外壳程序: "
LangString LSTR_20 2052 "执行: "
LangString LSTR_21 2052 "解压缩: "
LangString LSTR_22 2052 "抽取: 无法写入文件 "
LangString LSTR_23 2052 "安装程序损坏: 无效的操作代码 "
LangString LSTR_24 2052 "没有 OLE 用于: "
LangString LSTR_25 2052 "输出目录: "
LangString LSTR_26 2052 "删除目录: "
LangString LSTR_29 2052 "已跳过: "
LangString LSTR_30 2052 "复制详情到剪贴板 "
LangString LSTR_32 2052 B
LangString LSTR_33 2052 " K"
LangString LSTR_34 2052 " M"
LangString LSTR_35 2052 " G"
LangString LSTR_36 2052 推荐
LangString LSTR_37 2052 最小
LangString LSTR_38 2052 完整
LangString LSTR_39 2052 "无法打开要写入的文件: $\r$\n$\t$\"$0$\"$\r$\n点击 [Abort] 停止安装，$\r$\n [Retry] 重新尝试写入文件，或者$\r$\n [Ignore] 忽略这个文件。"
LangString LSTR_40 2052 0
LangString LSTR_41 2052 "欢迎使用 $(LSTR_132) 安装程序"
LangString LSTR_42 2052 宋体
LangString LSTR_43 2052 "此程序将引导你完成 $(LSTR_132) 的安装。$\r$\n$\r$\n在安装之前，请先关闭其他所有应用程序。这将确保安装程序能够更新所需的系统文件，从而避免在安装后重新启动计算机。$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 2052 您现在已经了解自己拥有的权利了。请点击“下一步”继续。
LangString LSTR_45 2052 "下一步(&N) >"
LangString LSTR_46 2052 许可证协议
LangString LSTR_47 2052 "在安装 $(LSTR_132) 之前，请阅读许可证条款。"
LangString LSTR_48 2052 "要阅读协议的其余部分，请按 [PgDn] 键向下翻页。"
LangString LSTR_49 2052 选择组件
LangString LSTR_50 2052 "选择你想安装的 $(LSTR_132) 功能组件。"
LangString LSTR_51 2052 组件描述
LangString LSTR_52 2052 将光标悬停在组件名称之上，即可显示它的功能描述。
LangString LSTR_53 2052 选择安装位置
LangString LSTR_54 2052 "选择 $(LSTR_132) 的安装文件夹。"
LangString LSTR_55 2052 正在安装
LangString LSTR_56 2052 "$(LSTR_132) 正在安装，请稍候。"
LangString LSTR_57 2052 安装完成
LangString LSTR_58 2052 安装程序成功完成安装。
LangString LSTR_59 2052 安装中止
LangString LSTR_60 2052 安装程序未能完成安装。
LangString LSTR_61 2052 完成(&F)
LangString LSTR_62 2052 "$(LSTR_132) 安装程序结束"
LangString LSTR_63 2052 "$(LSTR_132) 已经成功安装到本机。$\r$\n点击 [完成(F)] 关闭安装程序。"
LangString LSTR_64 2052 "运行 $(LSTR_132)(&R)"
LangString LSTR_65 2052 "访问 VideoLAN VLC media player 网站"
LangString LSTR_66 2052 9
LangString LSTR_67 2052 "确定要退出 $(LSTR_2) 安装程序吗？"
LangString LSTR_68 2052 播放
LangString LSTR_69 2052 "VLC 似乎仍在运行当中，我们现在将关闭它。"
LangString LSTR_70 2052 "安装程序无法自动关闭 VLC，请手动操作。"
LangString LSTR_71 2052 安装已中止!
LangString LSTR_72 2052 "媒体播放器 (必需)"
LangString LSTR_73 2052 正在检查进程列表...
LangString LSTR_74 2052 "使用 VLC media player 播放"
LangString LSTR_75 2052 开始菜单快捷方式
LangString LSTR_76 2052 桌面快捷方式
LangString LSTR_77 2052 网页浏览器插件
LangString LSTR_78 2052 "ActiveX 插件"
LangString LSTR_79 2052 光盘回放
LangString LSTR_80 2052 "播放 DVD 影片"
LangString LSTR_81 2052 "播放音频 CD"
LangString LSTR_82 2052 "播放 VCD 影片"
LangString LSTR_83 2052 "播放 SVCD 影片"
LangString LSTR_84 2052 "播放音频 DVD"
LangString LSTR_85 2052 播放视频文件
LangString LSTR_86 2052 播放音频文件
LangString LSTR_87 2052 播放蓝光光盘
LangString LSTR_88 2052 文件类型关联
LangString LSTR_89 2052 音频文件
LangString LSTR_90 2052 视频文件
LangString LSTR_91 2052 其他
LangString LSTR_92 2052 右键快捷菜单
LangString LSTR_93 2052 "添加到 VLC media player 播放列表"
LangString LSTR_94 2052 删除偏好设置与缓存
LangString LSTR_95 2052 媒体播放器自身
LangString LSTR_96 2052 将图标添加到您的开始菜单以便访问
LangString LSTR_97 2052 将图标添加到您的桌面以便访问
LangString LSTR_98 2052 "VLC ActiveX 插件"
LangString LSTR_99 2052 "DVD 与 CD 回放功能注册"
LangString LSTR_100 2052 "将 VLC media player 设为指定文件类型的默认程序"
LangString LSTR_101 2052 "添加快捷菜单项 (「使用 VLC 播放」与「添加到 VLC 播放列表」)"
LangString LSTR_102 2052 "删除先前安装版本所留下的 VLC media player 偏好设置与缓存文件"
LangString LSTR_103 2052 已安装
LangString LSTR_104 2052 "请选择您希望如何安装 VLC。"
LangString LSTR_105 2052 "您的系统中已经安装了较旧版本的 VLC。请选择您希望执行的操作，并点击“下一步”继续。"
LangString LSTR_106 2052 "保留先前的设置项，升级 VLC (推荐)"
LangString LSTR_107 2052 "更改设置 (高级)"
LangString LSTR_108 2052 "已安装较新版本的 VLC! 建议您不要降级安装旧版本。请选择您希望执行的操作，并点击“下一步”继续。"
LangString LSTR_109 2052 "保留先前的设置项，降级 VLC (推荐)"
LangString LSTR_110 2052 请选择要执行的维护选项。
LangString LSTR_111 2052 "VLC 3.0.24 已经安装。请选择您希望执行的操作，并点击“下一步”继续。"
LangString LSTR_112 2052 添加/移除/重新安装组件
LangString LSTR_113 2052 "卸载 VLC"
LangString LSTR_114 2052 自定义
LangString LSTR_115 2052 取消(&C)
LangString LSTR_116 2052 "< 上一步(&P)"
LangString LSTR_117 2052 "点击 [下一步(N)] 继续。"
LangString LSTR_118 2052 "请勾选你想安装的组件，并取消勾选你不想安装的组件。 $_CLICK"
LangString LSTR_119 2052 "选定的安装的类型: "
LangString LSTR_120 2052 "或者，自定义选定想安装的组件: "
LangString LSTR_121 2052 "选定安装的组件: "
LangString LSTR_122 2052 "安装程序将把 $(LSTR_132) 安装到以下目录。要安装到另一个目录，请点击 [浏览(B)...] 并选择其他的文件夹。 $_CLICK"
LangString LSTR_123 2052 安装目录
LangString LSTR_124 2052 浏览(&B)...
LangString LSTR_125 2052 "选择安装此软件的 $(LSTR_132) 的位置: "
LangString LSTR_126 2052 安装(&I)
LangString LSTR_127 2052 "点击 [安装(I)] 开始安装。"
LangString LSTR_128 2052 显示详情(&D)
LangString LSTR_129 2052 已完成
LangString LSTR_130 2052 " "
LangString LSTR_131 2052 关闭(&L)
LangString LSTR_132 2052 "VLC media player"


; LANG: 1034
LangString LSTR_0 1034 "VideoLAN VLC media player"
LangString LSTR_1 1034 "Instalación de $(LSTR_2)"
LangString LSTR_2 1034 "VLC media player"
LangString LSTR_3 1034 "Espacio disponible: "
LangString LSTR_4 1034 "Espacio requerido: "
LangString LSTR_5 1034 "No pudo escribirse: "
LangString LSTR_8 1034 "No pudo encontrarse símbolo: "
LangString LSTR_9 1034 "No pudo cargarse: "
LangString LSTR_10 1034 "Creando directorio: "
LangString LSTR_11 1034 "Creando acceso directo: "
LangString LSTR_12 1034 "Creando desinstalador: "
LangString LSTR_13 1034 "Borrar archivo: "
LangString LSTR_14 1034 "Borrar al reinicio: "
LangString LSTR_15 1034 "Error creando acceso directo: "
LangString LSTR_16 1034 "Error creando: "
LangString LSTR_17 1034 "¡Error descomprimiendo datos! ¿Instalador corrupto?"
LangString LSTR_19 1034 "Extrayendo  comando: "
LangString LSTR_20 1034 "Extrayendo : "
LangString LSTR_21 1034 "Extraer: "
LangString LSTR_22 1034 "Extraer: error escribiendo al archivo "
LangString LSTR_23 1034 "Instalador corrupto: código de operación no válido"
LangString LSTR_24 1034 "Sin OLE para: "
LangString LSTR_25 1034 "Directorio de salida: "
LangString LSTR_26 1034 "Eliminar directorio: "
LangString LSTR_29 1034 "Omitido: "
LangString LSTR_30 1034 "Copiar Detalles al Portapapeles"
LangString LSTR_32 1034 B
LangString LSTR_33 1034 " K"
LangString LSTR_34 1034 " M"
LangString LSTR_35 1034 " G"
LangString LSTR_36 1034 Recomendada
LangString LSTR_37 1034 Mínima
LangString LSTR_38 1034 Completa
LangString LSTR_39 1034 "Error abriendo archivo para escritura: $\r$\n$\t$\"$0$\"$\r$\nPresione abortar para anular la instalación,$\r$\nreintentar para volver a intentar escribir el archivo, u$\r$\nomitir para ignorar este archivo"
LangString LSTR_40 1034 0
LangString LSTR_41 1034 "Bienvenido al Asistente de Instalación de $(LSTR_132)"
LangString LSTR_42 1034 "MS Shell Dlg"
LangString LSTR_43 1034 "Este programa instalará $(LSTR_132) en su ordenador.$\r$\n$\r$\nSe recomienda que cierre todas las demás aplicaciones antes de iniciar la instalación. Esto hará posible actualizar archivos relacionados con el sistema sin tener que reiniciar su ordenador.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1034 "Ahora conoce sus derechos. Pulse Siguiente para continuar."
LangString LSTR_45 1034 "&Siguiente >"
LangString LSTR_46 1034 "Acuerdo de licencia"
LangString LSTR_47 1034 "Por favor revise los términos de la licencia antes de instalar $(LSTR_132)."
LangString LSTR_48 1034 "Presione Avanzar Página para ver el resto del acuerdo."
LangString LSTR_49 1034 "Selección de componentes"
LangString LSTR_50 1034 "Seleccione qué características de $(LSTR_132) desea instalar."
LangString LSTR_51 1034 Descripción
LangString LSTR_52 1034 "Sitúe el ratón encima de un componente para ver su descripción."
LangString LSTR_53 1034 "Elegir lugar de instalación"
LangString LSTR_54 1034 "Elija el directorio para instalar $(LSTR_132)."
LangString LSTR_55 1034 Instalando
LangString LSTR_56 1034 "Por favor espere mientras $(LSTR_132) se instala."
LangString LSTR_57 1034 "Instalación Completada"
LangString LSTR_58 1034 "La instalación se ha completado correctamente."
LangString LSTR_59 1034 "Instalación Anulada"
LangString LSTR_60 1034 "La instalación no se completó correctamente."
LangString LSTR_61 1034 &Terminar
LangString LSTR_62 1034 "Completando el Asistente de Instalación de $(LSTR_132)"
LangString LSTR_63 1034 "$(LSTR_132) ha sido instalado en su sistema.$\r$\n$\r$\nPresione Terminar para cerrar este asistente."
LangString LSTR_64 1034 "&Ejecutar $(LSTR_132)"
LangString LSTR_65 1034 "Visita el sitio web del reproductor multimedia VideoLAN VLC"
LangString LSTR_66 1034 8
LangString LSTR_67 1034 "¿Está seguro de que desea salir de la instalación de $(LSTR_2)?"
LangString LSTR_68 1034 Reproducir
LangString LSTR_69 1034 "Aparentemente VLC se está ejecutado y será cerrado ahora."
LangString LSTR_70 1034 "Este instalador fué incapaz de cerrar VLC, por favor, hágalo usted."
LangString LSTR_71 1034 "Instalación cancelada"
LangString LSTR_72 1034 "Reproductor (necesario)"
LangString LSTR_73 1034 "Comprobando procesos..."
LangString LSTR_74 1034 "Reproducir con VLC"
LangString LSTR_75 1034 "Acceso directo en el menú Inicio"
LangString LSTR_76 1034 "Acceso directo en el Escritorio"
LangString LSTR_77 1034 "Complementos web"
LangString LSTR_78 1034 "Complemento de ActiveX"
LangString LSTR_79 1034 "Reproducción de discos"
LangString LSTR_80 1034 "Reproducir película DVD"
LangString LSTR_81 1034 "Reproducir CD de audio"
LangString LSTR_82 1034 "Reproducir película VCD"
LangString LSTR_83 1034 "Reproducir película SVCD"
LangString LSTR_84 1034 "Reproducir DVD de audio"
LangString LSTR_85 1034 "Reproducir archivos de vídeo"
LangString LSTR_86 1034 "Reproducir archivos de audio"
LangString LSTR_87 1034 "Reproducir Blu-ray"
LangString LSTR_88 1034 "Asociaciones de tipos de archivo"
LangString LSTR_89 1034 "Archivos de audio"
LangString LSTR_90 1034 "Archivos de vídeo"
LangString LSTR_91 1034 Otros
LangString LSTR_92 1034 "Menús contextuales"
LangString LSTR_93 1034 "Añadir a la lista de VLC"
LangString LSTR_94 1034 "Borrar caché y preferencias"
LangString LSTR_95 1034 "El propio reproductor"
LangString LSTR_96 1034 "Añade iconos al menú Inicio para un fácil acceso"
LangString LSTR_97 1034 "Añade iconos al Escritorio para un fácil acceso"
LangString LSTR_98 1034 "El complemento VLC de ActiveX"
LangString LSTR_99 1034 "Registro de reproducción DVD y CD"
LangString LSTR_100 1034 "Establecer el Reproductor multimedia VLC como la aplicación predeterminada para el tipo de archivo especificado"
LangString LSTR_101 1034 "Añade opciones en el menú contextual («Reproducir con VLC» y «Añadir a la lista de VLC»"
LangString LSTR_102 1034 "Borra los archivos de caché y preferencias del reproductor multimedia VLC de anteriores instalaciones"
LangString LSTR_103 1034 "Ya está instalado"
LangString LSTR_104 1034 "Seleccione como quiere instalar VLC."
LangString LSTR_105 1034 "Está instalada una versión más antigua de VLC en su sistema. Seleccione la operación que quiere realizar y pulse Siguiente para continuar."
LangString LSTR_106 1034 "Actualizar VLC usando las preferencias siguientes (recomendado)"
LangString LSTR_107 1034 "Cambiar preferencias (avanzado)"
LangString LSTR_108 1034 "Está instalada una versión más reciente de VLC. No se recomienda que desactualice a una versión más antigua. Seleccione la operación que quiere realizar y pulse Siguiente para continuar."
LangString LSTR_109 1034 "Desactualizar VLC usando las preferencias anteriores (recomendado)"
LangString LSTR_110 1034 "Seleccione la opción de mantenimiento a realizar."
LangString LSTR_111 1034 "VLC 3.0.24 ya está instalado. Seleccione la operación que quiere realizar y pulse Siguiente para continuar."
LangString LSTR_112 1034 "Añadir/Eliminar/Reinstalar componentes"
LangString LSTR_113 1034 "Desinstalar VLC"
LangString LSTR_114 1034 Personalizada
LangString LSTR_115 1034 Cancelar
LangString LSTR_116 1034 "< &Atrás"
LangString LSTR_117 1034 "Presione Siguiente para continuar."
LangString LSTR_118 1034 "Marque los componentes que desee instalar y desmarque los componentes que no desee instalar. $_CLICK"
LangString LSTR_119 1034 "Tipos de instalación:"
LangString LSTR_120 1034 "O seleccione los componentes opcionales que desee instalar:"
LangString LSTR_121 1034 "Seleccione los componentes a instalar:"
LangString LSTR_122 1034 "El programa de instalación instalará $(LSTR_132) en el siguiente directorio. Para instalar en un directorio diferente, presione Examinar y seleccione otro directorio. $_CLICK"
LangString LSTR_123 1034 "Directorio de Destino"
LangString LSTR_124 1034 &Examinar...
LangString LSTR_125 1034 "Seleccione el directorio en el que instalará $(LSTR_132):"
LangString LSTR_126 1034 &Instalar
LangString LSTR_127 1034 "Presione Instalar para comenzar la instalación."
LangString LSTR_128 1034 "Ver &detalles"
LangString LSTR_129 1034 Completado
LangString LSTR_130 1034 " "
LangString LSTR_131 1034 &Cerrar
LangString LSTR_132 1034 "VLC media player"


; LANG: 1031
LangString LSTR_0 1031 "VideoLAN VLC media player"
LangString LSTR_1 1031 "Installation von $(LSTR_2)"
LangString LSTR_2 1031 "VLC media player"
LangString LSTR_3 1031 "Verfügbarer Speicher: "
LangString LSTR_4 1031 "Benötigter Speicher: "
LangString LSTR_5 1031 "Fehler beim Schreiben: "
LangString LSTR_8 1031 "Symbol ist nicht vorhanden: "
LangString LSTR_9 1031 "Fehler beim Laden von "
LangString LSTR_10 1031 "Verzeichnis wird erstellt: "
LangString LSTR_11 1031 "Verknüpfung wird erstellt: "
LangString LSTR_12 1031 "Deinstallationsprogramm wird erstellt: "
LangString LSTR_13 1031 "Datei wird gelöscht: "
LangString LSTR_14 1031 "Datei wird nach Neustart gelöscht: "
LangString LSTR_15 1031 "Fehler beim Erstellen der Verknüpfung: "
LangString LSTR_16 1031 "Fehler beim Erstellen: "
LangString LSTR_17 1031 "Fehler beim Entpacken. Ist das Installationsprogramm beschädigt?"
LangString LSTR_19 1031 "ExecShell: "
LangString LSTR_20 1031 "Wird gestartet: "
LangString LSTR_21 1031 "Wird entpackt: "
LangString LSTR_22 1031 "Entpacken: Fehler beim Schreiben der Datei "
LangString LSTR_23 1031 "Beschädigtes Installationsprogramm: ungültiger Befehlscode"
LangString LSTR_24 1031 "Kein OLE für: "
LangString LSTR_25 1031 "Zielverzeichnis: "
LangString LSTR_26 1031 "Verzeichnis wird entfernt: "
LangString LSTR_29 1031 "Übersprungen: "
LangString LSTR_30 1031 "Details in die Zwischenablage kopieren"
LangString LSTR_32 1031 B
LangString LSTR_33 1031 " K"
LangString LSTR_34 1031 " M"
LangString LSTR_35 1031 " G"
LangString LSTR_36 1031 Empfohlen
LangString LSTR_37 1031 Minimal
LangString LSTR_38 1031 Voll
LangString LSTR_39 1031 "Fehler beim Überschreiben der Datei: $\r$\n$\t$\"$0$\"$\r$\nKlicken Sie auf Abbrechen, um abzubrechen,$\r$\nauf Wiederholen, um den Schreibvorgang erneut zu versuchen,$\r$\noder auf Ignorieren, um diese Datei zu überspringen."
LangString LSTR_40 1031 0
LangString LSTR_41 1031 "Willkommen zur Installation$\r$\nvon $(LSTR_132)"
LangString LSTR_42 1031 "MS Shell Dlg"
LangString LSTR_43 1031 "Dieser Assistent wird Sie durch die Installation von $(LSTR_132) begleiten.$\r$\n$\r$\nEs wird empfohlen, vor der Installation alle anderen Programme zu schließen, damit bestimmte Systemdateien ohne Neustart ersetzt werden können.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1031 "Jetzt sind Sie über Ihre Rechte informiert. Klicken Sie auf Weiter."
LangString LSTR_45 1031 "&Weiter >"
LangString LSTR_46 1031 Lizenzabkommen
LangString LSTR_47 1031 "Bitte lesen Sie die Lizenzbedingungen durch, bevor Sie mit der Installation fortfahren."
LangString LSTR_48 1031 "Drücken Sie die BILD-AB-Taste, um den Rest des Abkommens zu lesen."
LangString LSTR_49 1031 "Komponenten auswählen"
LangString LSTR_50 1031 "Wählen Sie die Komponenten aus, die Sie installieren möchten."
LangString LSTR_51 1031 Beschreibung
LangString LSTR_52 1031 "Bewegen Sie den Mauszeiger über eine Komponente, um die Beschreibung zu lesen."
LangString LSTR_53 1031 "Zielverzeichnis auswählen"
LangString LSTR_54 1031 "Wählen Sie das Verzeichnis aus, in das $(LSTR_132) installiert werden soll."
LangString LSTR_55 1031 "Wird installiert ..."
LangString LSTR_56 1031 "Bitte warten Sie, während $(LSTR_132) installiert wird."
LangString LSTR_57 1031 "Die Installation ist vollständig"
LangString LSTR_58 1031 "Die Installation wurde erfolgreich abgeschlossen."
LangString LSTR_59 1031 "Abbruch der Installation"
LangString LSTR_60 1031 "Die Installation wurde nicht vollständig abgeschlossen."
LangString LSTR_61 1031 &Fertigstellen
LangString LSTR_62 1031 "Die Installation von $(LSTR_132) wird abgeschlossen"
LangString LSTR_63 1031 "$(LSTR_132) wurde auf Ihrem Computer installiert.$\r$\n$\r$\nKlicken Sie auf Fertigstellen, um den Installationsassistenten zu schließen."
LangString LSTR_64 1031 "$(LSTR_132) ausführen"
LangString LSTR_65 1031 "Besuchen Sie die VideoLAN VLC media player Webseite"
LangString LSTR_66 1031 8
LangString LSTR_67 1031 "Sind Sie sicher, dass Sie die Installation von $(LSTR_2) abbrechen möchten?"
LangString LSTR_68 1031 Wiedergabe
LangString LSTR_69 1031 "VLC scheint ausgeführt zu werden und wird nun geschlossen."
LangString LSTR_70 1031 "Dieses Installationsprogramm konnte VLC nicht schließen, tun Sie es bitte manuell."
LangString LSTR_71 1031 "Installation abgebrochen!"
LangString LSTR_72 1031 "Media-Player (benötigt)"
LangString LSTR_73 1031 "Überprüfen der Prozesse..."
LangString LSTR_74 1031 "Mit VLC media player wiedergeben"
LangString LSTR_75 1031 "Symbole im Startmenü"
LangString LSTR_76 1031 Desktopsymbol
LangString LSTR_77 1031 Web-Plugins
LangString LSTR_78 1031 ActiveX-Plugin
LangString LSTR_79 1031 "DVD- und CD-Wiedergabe"
LangString LSTR_80 1031 "DVD-Video wiedergeben"
LangString LSTR_81 1031 "Audio-CD wiedergeben"
LangString LSTR_82 1031 "VCD-Video wiedergeben"
LangString LSTR_83 1031 "SVCD-Video wiedergeben"
LangString LSTR_84 1031 "Audio-DVD wiedergeben"
LangString LSTR_85 1031 "Videodateien wiedergeben"
LangString LSTR_86 1031 "Audiodateien wiedergeben"
LangString LSTR_87 1031 "Blu-ray wiedergeben"
LangString LSTR_88 1031 Dateitypzuordnungen
LangString LSTR_89 1031 Audiodateien
LangString LSTR_90 1031 Videodateien
LangString LSTR_91 1031 Andere
LangString LSTR_92 1031 Kontextmenü
LangString LSTR_93 1031 "Zur VLC media player Wiedergabeliste hinzufügen"
LangString LSTR_94 1031 "Lösche die Einstellungen und den Cache"
LangString LSTR_95 1031 "Der Media Player"
LangString LSTR_96 1031 "Fügt Symbole im Startmenü für leichten Zugang hinzu"
LangString LSTR_97 1031 "Fügt ein Desktopsymbol für leichten Zugang ein"
LangString LSTR_98 1031 "Das VLC ActiveX-Plugin"
LangString LSTR_99 1031 "DVD und CD Wiedergabe Registrierung"
LangString LSTR_100 1031 "Setzt den VLC media player als Standard-Anwendung für die ausgewählten Dateitypen"
LangString LSTR_101 1031 "Fügt Kontextmenü-Einträge hinzu ('Wiedergabe mit VLC' und 'Zur VLC-Wiedergabeliste hinzufügen')"
LangString LSTR_102 1031 "Löscht die VLC media player Einstellungen und übergebliebenen Cache-Dateien der alten Installation"
LangString LSTR_103 1031 "Bereits installiert"
LangString LSTR_104 1031 "Wählen Sie, wie Sie den VLC media player installieren möchten."
LangString LSTR_105 1031 "Eine ältere Version des VLC media players ist auf dem System installiert. Wählen Sie die durchgeführte Operation aus und klicken Sie auf Weiter, um fortzufahren."
LangString LSTR_106 1031 "Aktualisieren Sie den VLC media player mit vorherigen Einstellungen (empfohlen)"
LangString LSTR_107 1031 "Einstellungen ändern (erweitert)"
LangString LSTR_108 1031 "Eine neuere Version des VLC media players ist bereits installiert! Es wird nicht empfohlen, auf eine ältere Version downzugraden. Wählen Sie die durchgeführte Operation aus und klicken Sie auf Weiter, um fortzufahren."
LangString LSTR_109 1031 "Ein Downgrade des VLC media players mit vorherigen Einstellungen (empfohlen)"
LangString LSTR_110 1031 "Wählen Sie die durchgeführte Wartungsoption aus."
LangString LSTR_111 1031 "VLC 3.0.24 ist bereits installiert. Wählen Sie die durchgeführte Operation aus und klicken Sie auf Weiter, um fortzufahren."
LangString LSTR_112 1031 "Hinzufügen/Entfernen/Installieren von Komponenten"
LangString LSTR_113 1031 "Deinstallieren des VLC media players"
LangString LSTR_114 1031 Benutzerdefiniert
LangString LSTR_115 1031 Abbrechen
LangString LSTR_116 1031 "< &Zurück"
LangString LSTR_117 1031 "Klicken Sie auf Weiter, um fortzufahren."
LangString LSTR_118 1031 "Wählen Sie die Komponenten, welche Sie installieren wollen. $_CLICK"
LangString LSTR_119 1031 "Installationstyp bestimmen:"
LangString LSTR_120 1031 "oder wählen Sie zusätzliche zu installierende Komponenten:"
LangString LSTR_121 1031 "Wählen Sie die zu installierenden Komponenten:"
LangString LSTR_122 1031 "$(LSTR_132) wird in das unten angegebene Verzeichnis installiert. Falls Sie in ein anderes Verzeichnis installieren möchten, klicken Sie auf Durchsuchen und wählen Sie ein anderes Verzeichnis aus. $_CLICK"
LangString LSTR_123 1031 Zielverzeichnis
LangString LSTR_124 1031 "&Durchsuchen ..."
LangString LSTR_125 1031 "Wählen Sie das Verzeichnis aus, in das Sie $(LSTR_132) installieren möchten:"
LangString LSTR_126 1031 &Installieren
LangString LSTR_127 1031 "Klicken Sie auf Installieren, um die Installation zu starten."
LangString LSTR_128 1031 "&Details anzeigen"
LangString LSTR_129 1031 Fertig
LangString LSTR_130 1031 " "
LangString LSTR_131 1031 &Beenden
LangString LSTR_132 1031 "VLC media player"


; LANG: 1036
LangString LSTR_0 1036 "VideoLAN VLC media player"
LangString LSTR_1 1036 "Installation de $(LSTR_2)"
LangString LSTR_2 1036 "VLC media player"
LangString LSTR_3 1036 "Espace disponible : "
LangString LSTR_4 1036 "Espace requis : "
LangString LSTR_5 1036 "Impossible d'écrire : "
LangString LSTR_8 1036 "Impossible de trouver un symbole : "
LangString LSTR_9 1036 "Impossible de charger : "
LangString LSTR_10 1036 "Création du dossier : "
LangString LSTR_11 1036 "Création du raccourci : "
LangString LSTR_12 1036 "Création de la désinstallation : "
LangString LSTR_13 1036 "Suppression : "
LangString LSTR_14 1036 "Suppression au redémarrage : "
LangString LSTR_15 1036 "Erreur lors de la création du raccourci : "
LangString LSTR_16 1036 "Erreur de la création : "
LangString LSTR_17 1036 "Erreur lors de la décompression des données ! Installation corrompue ?"
LangString LSTR_19 1036 "ExecShell: "
LangString LSTR_20 1036 "Exécution : "
LangString LSTR_21 1036 "Extraction : "
LangString LSTR_22 1036 "Extraction : erreur d'écriture du fichier "
LangString LSTR_23 1036 "Installation corrompue : opcode incorrect"
LangString LSTR_24 1036 "Pas de OLE pour : "
LangString LSTR_25 1036 "Destination : "
LangString LSTR_26 1036 "Suppression du dossier : "
LangString LSTR_29 1036 "Passé : "
LangString LSTR_30 1036 "Copier les Détails dans le Presse-papier"
LangString LSTR_32 1036 o
LangString LSTR_33 1036 " K"
LangString LSTR_34 1036 " M"
LangString LSTR_35 1036 " G"
LangString LSTR_36 1036 Recommandée
LangString LSTR_37 1036 Minimale
LangString LSTR_38 1036 Complète
LangString LSTR_39 1036 "Erreur lors de l'ouverture du fichier en écriture : $\r$\n$\t$\"$0$\"$\r$\nAppuyez sur Abandonner pour annuler l'installation,$\r$\nRéessayer pour réessayer l'écriture du fichier, ou$\r$\nIgnorer pour passer ce fichier"
LangString LSTR_40 1036 0
LangString LSTR_41 1036 "Bienvenue dans le programme d'installation de $(LSTR_132)"
LangString LSTR_42 1036 "MS Shell Dlg"
LangString LSTR_43 1036 "Vous êtes sur le point d'installer $(LSTR_132) sur votre ordinateur.$\r$\n$\r$\nAvant de démarrer l'installation, il est recommandé de fermer toutes les autres applications. Cela permettra la mise à jour de certains fichiers système sans redémarrer votre ordinateur.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1036 "Vous connnaissez  maintenant vos droits. Cliquez sur [Suivant] pour continuer."
LangString LSTR_45 1036 "&Suivant >"
LangString LSTR_46 1036 "Licence utilisateur"
LangString LSTR_47 1036 "Veuillez examiner les termes de la licence avant d'installer $(LSTR_132)."
LangString LSTR_48 1036 "Appuyez sur Page Suivante pour lire le reste de la licence utilisateur."
LangString LSTR_49 1036 "Choisissez les composants"
LangString LSTR_50 1036 "Choisissez les composants de $(LSTR_132) que vous souhaitez installer."
LangString LSTR_51 1036 Description
LangString LSTR_52 1036 "Passez le curseur de votre souris sur un composant pour en voir la description."
LangString LSTR_53 1036 "Choisissez le dossier d'installation"
LangString LSTR_54 1036 "Choisissez le dossier dans lequel installer $(LSTR_132)."
LangString LSTR_55 1036 "Installation en cours"
LangString LSTR_56 1036 "Veuillez patienter pendant l'installation de $(LSTR_132)."
LangString LSTR_57 1036 "Installation terminée"
LangString LSTR_58 1036 "L'installation s'est terminée avec succès."
LangString LSTR_59 1036 "Installation interrompue"
LangString LSTR_60 1036 "L'installation n'a pas été terminée."
LangString LSTR_61 1036 &Fermer
LangString LSTR_62 1036 "Fin de l'installation de $(LSTR_132)"
LangString LSTR_63 1036 "$(LSTR_132) a été installé sur votre ordinateur.$\r$\n$\r$\nCliquez sur Fermer pour quitter le programme d'installation."
LangString LSTR_64 1036 "Lancer $(LSTR_132)"
LangString LSTR_65 1036 "Voir le site web du lecteur multimédia VLC de VideoLAN"
LangString LSTR_66 1036 8
LangString LSTR_67 1036 "Êtes-vous sûr de vouloir quitter l'installation de $(LSTR_2) ?"
LangString LSTR_68 1036 Lire
LangString LSTR_69 1036 "VLC est en cours d'exécution. Il va être fermé."
LangString LSTR_70 1036 "L'installateur n'a pas pu fermer VLC. Veuillez le faire manuellement."
LangString LSTR_71 1036 "Arrêt de l'installation !"
LangString LSTR_72 1036 "Lecteur multimédia (requis)"
LangString LSTR_73 1036 "Vérification des processus…"
LangString LSTR_74 1036 "Lire avec VLC"
LangString LSTR_75 1036 "Ajouter au menu Démarrer"
LangString LSTR_76 1036 "Placer un raccourci sur le bureau"
LangString LSTR_77 1036 "Greffons web"
LangString LSTR_78 1036 "Greffon ActiveX"
LangString LSTR_79 1036 "Lecture de disques"
LangString LSTR_80 1036 "Lecture de DVD"
LangString LSTR_81 1036 "Lecture de CD audio"
LangString LSTR_82 1036 "Lecture de film VCD"
LangString LSTR_83 1036 "Lecture de film SVCD"
LangString LSTR_84 1036 "Lecture de DVD audio"
LangString LSTR_85 1036 "Lecture de fichiers vidéo"
LangString LSTR_86 1036 "Lecture de fichiers audio"
LangString LSTR_87 1036 "Lecture de Blu-ray"
LangString LSTR_88 1036 "Types de fichiers"
LangString LSTR_89 1036 "Fichiers audio"
LangString LSTR_90 1036 "Fichiers vidéo"
LangString LSTR_91 1036 Autres
LangString LSTR_92 1036 "Menus contextuels"
LangString LSTR_93 1036 "Ajouter à la liste de lecture de VLC"
LangString LSTR_94 1036 "Effacer les préférences et le cache"
LangString LSTR_95 1036 "Le lecteur multimédia"
LangString LSTR_96 1036 "Ajoute des icônes au menu Démarrer pour un accès facile"
LangString LSTR_97 1036 "Ajoute une icône sur votre bureau pour un accès facile"
LangString LSTR_98 1036 "Le greffon VLC ActiveX"
LangString LSTR_99 1036 "Enregistrement de la lecture des DVD et CD"
LangString LSTR_100 1036 "Définit le lecteur multimédia VLC comme application par défaut pour les fichiers du type spécifié"
LangString LSTR_101 1036 "Ajoute des entrées de menu contextuel (« Lire avec VLC » et « Ajouter à la liste de lecture de VLC »)"
LangString LSTR_102 1036 "Efface les préférences de VLC et les fichiers cache laissés par une précédente installation"
LangString LSTR_103 1036 "Déjà installé"
LangString LSTR_104 1036 "Choisir comment vous voulez installer VLC."
LangString LSTR_105 1036 "Une ancienne version de VLC est installée sur votre système. Choisissez l'operation à effectuer et cliquez sur [Suivant] pour continuer."
LangString LSTR_106 1036 "Mettre VLC à niveau en conservant les réglages (recommandé)"
LangString LSTR_107 1036 "Changer les paramètres (avancé)"
LangString LSTR_108 1036 "Une version plus récente de VLC est déjà installée ! Il n'est pas recommandé de revenir à une ancienne version. Sélectionnez l'opération que vous souhaitez réaliser et cliquez sur Suivant pour continuer."
LangString LSTR_109 1036 "Revenir à une ancienne version de VLC en utilisant les paramètres précédents (recommandé)"
LangString LSTR_110 1036 "Choisir l'option de maintenance."
LangString LSTR_111 1036 "VLC 3.0.24 est déjà installé. Sélectionnez l'opération que vous souhaitez réaliser et cliquez sur [Suivant] pour continuer."
LangString LSTR_112 1036 "Ajouter/supprimer/réinstaller des composants"
LangString LSTR_113 1036 "Désinstaller VLC"
LangString LSTR_114 1036 Personnalisée
LangString LSTR_115 1036 Annuler
LangString LSTR_116 1036 "< &Précédent"
LangString LSTR_117 1036 "Cliquez sur Suivant pour continuer."
LangString LSTR_118 1036 "Cochez les composants que vous désirez installer et décochez ceux que vous ne désirez pas installer. $_CLICK"
LangString LSTR_119 1036 "Type d'installation :"
LangString LSTR_120 1036 "Ou, sélectionnez les composants optionnels que vous voulez installer :"
LangString LSTR_121 1036 "Sélectionnez les composants à installer :"
LangString LSTR_122 1036 "Ceci installera $(LSTR_132) dans le dossier suivant. Pour installer dans un autre dossier, cliquez sur Parcourir et choisissez un autre dossier. $_CLICK"
LangString LSTR_123 1036 "Dossier d'installation"
LangString LSTR_124 1036 P&arcourir...
LangString LSTR_125 1036 "Sélectionnez le dossier d'installation pour $(LSTR_132) :"
LangString LSTR_126 1036 &Installer
LangString LSTR_127 1036 "Cliquez sur Installer pour démarrer l'installation."
LangString LSTR_128 1036 "P&lus d'infos"
LangString LSTR_129 1036 Terminé
LangString LSTR_130 1036 " "
LangString LSTR_131 1036 &Fermer
LangString LSTR_132 1036 "VLC media player"


; LANG: 1033
LangString LSTR_0 1033 "VideoLAN VLC media player"
LangString LSTR_1 1033 "$(LSTR_2) Setup"
LangString LSTR_2 1033 "VLC media player"
LangString LSTR_3 1033 "Space available: "
LangString LSTR_4 1033 "Space required: "
LangString LSTR_5 1033 "Can't write: "
LangString LSTR_8 1033 "Could not find symbol: "
LangString LSTR_9 1033 "Could not load: "
LangString LSTR_10 1033 "Create folder: "
LangString LSTR_11 1033 "Create shortcut: "
LangString LSTR_12 1033 "Created uninstaller: "
LangString LSTR_13 1033 "Delete file: "
LangString LSTR_14 1033 "Delete on reboot: "
LangString LSTR_15 1033 "Error creating shortcut: "
LangString LSTR_16 1033 "Error creating: "
LangString LSTR_17 1033 "Error decompressing data! Corrupted installer?"
LangString LSTR_19 1033 "ExecShell: "
LangString LSTR_20 1033 "Execute: "
LangString LSTR_21 1033 "Extract: "
LangString LSTR_22 1033 "Extract: error writing to file "
LangString LSTR_23 1033 "Installer corrupted: invalid opcode"
LangString LSTR_24 1033 "No OLE for: "
LangString LSTR_25 1033 "Output folder: "
LangString LSTR_26 1033 "Remove folder: "
LangString LSTR_29 1033 "Skipped: "
LangString LSTR_30 1033 "Copy Details To Clipboard"
LangString LSTR_32 1033 B
LangString LSTR_33 1033 " K"
LangString LSTR_34 1033 " M"
LangString LSTR_35 1033 " G"
LangString LSTR_36 1033 Recommended
LangString LSTR_37 1033 Minimum
LangString LSTR_38 1033 Full
LangString LSTR_39 1033 "Error opening file for writing: $\r$\n$\r$\n$0$\r$\n$\r$\nClick Abort to stop the installation,$\r$\nRetry to try again, or$\r$\nIgnore to skip this file."
LangString LSTR_40 1033 0
LangString LSTR_41 1033 "Welcome to $(LSTR_132) Setup"
LangString LSTR_42 1033 "MS Shell Dlg"
LangString LSTR_43 1033 "Setup will guide you through the installation of $(LSTR_132).$\r$\n$\r$\nIt is recommended that you close all other applications before starting Setup. This will make it possible to update relevant system files without having to reboot your computer.$\r$\n$\r$\n$_CLICK"
LangString LSTR_44 1033 "You are now aware of your rights. Click Next to continue."
LangString LSTR_45 1033 "&Next >"
LangString LSTR_46 1033 "License Agreement"
LangString LSTR_47 1033 "Please review the license terms before installing $(LSTR_132)."
LangString LSTR_48 1033 "Press Page Down to see the rest of the agreement."
LangString LSTR_49 1033 "Choose Components"
LangString LSTR_50 1033 "Choose which features of $(LSTR_132) you want to install."
LangString LSTR_51 1033 Description
LangString LSTR_52 1033 "Position your mouse over a component to see its description."
LangString LSTR_53 1033 "Choose Install Location"
LangString LSTR_54 1033 "Choose the folder in which to install $(LSTR_132)."
LangString LSTR_55 1033 Installing
LangString LSTR_56 1033 "Please wait while $(LSTR_132) is being installed."
LangString LSTR_57 1033 "Installation Complete"
LangString LSTR_58 1033 "Setup was completed successfully."
LangString LSTR_59 1033 "Installation Aborted"
LangString LSTR_60 1033 "Setup was not completed successfully."
LangString LSTR_61 1033 &Finish
LangString LSTR_62 1033 "Completing $(LSTR_132) Setup"
LangString LSTR_63 1033 "$(LSTR_132) has been installed on your computer.$\r$\n$\r$\nClick Finish to close Setup."
LangString LSTR_64 1033 "&Run $(LSTR_132)"
LangString LSTR_65 1033 "Visit the VideoLAN VLC media player Website"
LangString LSTR_66 1033 8
LangString LSTR_67 1033 "Are you sure you want to quit $(LSTR_2) Setup?"
LangString LSTR_68 1033 Play
LangString LSTR_69 1033 "VLC appears to be running and will now be closed."
LangString LSTR_70 1033 "This installer was unable to close VLC, please do it manually."
LangString LSTR_71 1033 "Installation aborted!"
LangString LSTR_72 1033 "Media Player (required)"
LangString LSTR_73 1033 "Checking processes..."
LangString LSTR_74 1033 "Play with VLC media player"
LangString LSTR_75 1033 "Start Menu Shortcut"
LangString LSTR_76 1033 "Desktop Shortcut"
LangString LSTR_77 1033 "Web plugins"
LangString LSTR_78 1033 "ActiveX plugin"
LangString LSTR_79 1033 "Discs Playback"
LangString LSTR_80 1033 "Play DVD movie"
LangString LSTR_81 1033 "Play audio CD"
LangString LSTR_82 1033 "Play VCD movie"
LangString LSTR_83 1033 "Play SVCD movie"
LangString LSTR_84 1033 "Play audio DVD"
LangString LSTR_85 1033 "Play video files"
LangString LSTR_86 1033 "Play audio files"
LangString LSTR_87 1033 "Play Blu-ray"
LangString LSTR_88 1033 "File type associations"
LangString LSTR_89 1033 "Audio Files"
LangString LSTR_90 1033 "Video Files"
LangString LSTR_91 1033 Other
LangString LSTR_92 1033 "Context Menus"
LangString LSTR_93 1033 "Add to VLC media player's Playlist"
LangString LSTR_94 1033 "Delete preferences and cache"
LangString LSTR_95 1033 "The media player itself"
LangString LSTR_96 1033 "Adds icons to your start menu for easy access"
LangString LSTR_97 1033 "Adds icon to your desktop for easy access"
LangString LSTR_98 1033 "The VLC ActiveX plugin"
LangString LSTR_99 1033 "DVD and CD playback registration"
LangString LSTR_100 1033 "Sets VLC media player as the default application for the specified file type"
LangString LSTR_101 1033 "Add context menu items ('Play With VLC' and 'Add To VLC's Playlist')"
LangString LSTR_102 1033 "Deletes VLC media player preferences and cache files leftover from previous installations"
LangString LSTR_103 1033 "Already Installed"
LangString LSTR_104 1033 "Choose how you want to install VLC."
LangString LSTR_105 1033 "An older version of VLC is installed on your system. Select the operation you want to perform and click Next to continue."
LangString LSTR_106 1033 "Upgrade VLC using previous settings (recommended)"
LangString LSTR_107 1033 "Change settings (advanced)"
LangString LSTR_108 1033 "A newer version of VLC is already installed! It is not recommended that you downgrade to an older version. Select the operation you want to perform and click Next to continue."
LangString LSTR_109 1033 "Downgrade VLC using previous settings (recommended)"
LangString LSTR_110 1033 "Choose the maintenance option to perform."
LangString LSTR_111 1033 "VLC 3.0.24 is already installed. Select the operation you want to perform and click Next to continue."
LangString LSTR_112 1033 "Add/Remove/Reinstall components"
LangString LSTR_113 1033 "Uninstall VLC"
LangString LSTR_114 1033 Custom
LangString LSTR_115 1033 Cancel
LangString LSTR_116 1033 "< &Back"
LangString LSTR_117 1033 "Click Next to continue."
LangString LSTR_118 1033 "Check the components you want to install and uncheck the components you don't want to install. $_CLICK"
LangString LSTR_119 1033 "Select the type of install:"
LangString LSTR_120 1033 "Or, select the optional components you wish to install:"
LangString LSTR_121 1033 "Select components to install:"
LangString LSTR_122 1033 "Setup will install $(LSTR_132) in the following folder. To install in a different folder, click Browse and select another folder. $_CLICK"
LangString LSTR_123 1033 "Destination Folder"
LangString LSTR_124 1033 B&rowse...
LangString LSTR_125 1033 "Select the folder to install $(LSTR_132) in:"
LangString LSTR_126 1033 &Install
LangString LSTR_127 1033 "Click Install to start the installation."
LangString LSTR_128 1033 "Show &details"
LangString LSTR_129 1033 Completed
LangString LSTR_130 1033 " "
LangString LSTR_131 1033 &Close
LangString LSTR_132 1033 "VLC media player"


; --------------------
; VARIABLES: 72

Var _0_
Var _1_
Var _2_
Var _3_
Var _4_
Var _5_
Var _6_
Var _7_
Var _8_
Var _9_
Var _10_
Var _11_
Var _12_
Var _13_
Var _14_
Var _15_
Var _16_
Var _17_
Var _18_
Var _19_
Var _20_
Var _21_
Var _22_
Var _23_
Var _24_
Var _25_
Var _26_
Var _27_
Var _28_
Var _29_
Var _30_
Var _31_
Var _32_
Var _33_
Var _34_
Var _35_
Var _36_
Var _37_
Var _38_
Var _39_
Var _40_
Var _41_
Var _42_
Var _43_
Var _44_
Var _45_
Var _46_
Var _47_
Var _48_
Var _49_
Var _50_
Var _51_
Var _52_
Var _53_
Var _54_
Var _55_
Var _56_
Var _57_
Var _58_
Var _59_
Var _60_
Var _61_
Var _62_
Var _63_
Var _64_
Var _65_
Var _66_
Var _67_
Var _68_
Var _69_
Var _70_
Var _71_


InstType $(LSTR_36)    ;  Recommended
InstType $(LSTR_37)    ;  Minimum
InstType $(LSTR_38)    ;  Full
InstType $(LSTR_114)    ;  Custom
InstallDir $PROGRAMFILES64\VideoLAN\VLC
; install_directory_auto_append = VLC
; wininit = $WINDIR\wininit.ini


; --------------------
; PAGES: 8

; Page 0
Page custom func_24 func_95 /ENABLECANCEL

; Page 1
Page custom func_11323 func_11480 /ENABLECANCEL

; Page 2
Page license func_96 func_100 func_106 /ENABLECANCEL
  LicenseText $(LSTR_44) $(LSTR_45)    ;  "You are now aware of your rights. Click Next to continue." "&Next >"
  LicenseData [LICENSE].txt

; Page 3
Page components func_107 func_111 func_125 /ENABLECANCEL
  ComponentsText $(LSTR_118) $(LSTR_119) $(LSTR_120)    ;  "Check the components you want to install and uncheck the components you don't want to install. $_CLICK" "Select the type of install:" "Or, select the optional components you wish to install:"

; Page 4
Page directory func_126 func_130 func_138 /ENABLECANCEL
  DirText $(LSTR_122) $(LSTR_123) $(LSTR_124) $(LSTR_125)    ;  "Setup will install $(LSTR_132) in the following folder. To install in a different folder, click Browse and select another folder. $_CLICK" "Destination Folder" B&rowse... "Select the folder to install $(LSTR_132) in:" "VLC media player" "VLC media player"
  DirVar $CMDLINE

; Page 5
Page instfiles func_139 func_142 func_148
  CompletedText $(LSTR_129)    ;  Completed
  DetailsButtonText $(LSTR_128)    ;  "Show &details"

/*
; Page 6
Page COMPLETED
*/

; Page 7
Page custom func_165 func_313


; --------------------
; SECTIONS: 145
; COMMANDS: 11552

Function func_0
  InitPluginsDir
    ; Call Initialize_____Plugins
    ; SetDetailsPrint lastused
  SetOverwrite ifdiff
  File $PLUGINSDIR\modern-wizard.bmp
FunctionEnd


Function func_4
  LockWindow on
  ShowWindow $_15_ ${SW_HIDE}
  ShowWindow $_14_ ${SW_HIDE}
  ShowWindow $_9_ ${SW_HIDE}
  ShowWindow $_11_ ${SW_HIDE}
  ShowWindow $_13_ ${SW_HIDE}
  ShowWindow $_16_ ${SW_HIDE}
  ShowWindow $_17_ ${SW_SHOWNORMAL}
  LockWindow off
FunctionEnd


Function func_14
  LockWindow on
  ShowWindow $_15_ ${SW_SHOWNORMAL}
  ShowWindow $_14_ ${SW_SHOWNORMAL}
  ShowWindow $_9_ ${SW_SHOWNORMAL}
  ShowWindow $_11_ ${SW_SHOWNORMAL}
  ShowWindow $_13_ ${SW_SHOWNORMAL}
  ShowWindow $_16_ ${SW_SHOWNORMAL}
  ShowWindow $_17_ ${SW_HIDE}
  LockWindow off
FunctionEnd


Function func_24    ; Page 0, Pre
  Call func_11507
  nsDialogs::Create 1044
    ; Call Initialize_____Plugins
    ; SetOverwrite off
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push 1044
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll Create
  Pop $_21_
  nsDialogs::SetRTL $(LSTR_40)    ;  0
    ; Call Initialize_____Plugins
    ; AllowSkipFiles off
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push $(LSTR_40)    ;  0
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll SetRTL
  SetCtlColors $_21_ "" 0xFFFFFF
  nsDialogs::CreateControl STATIC 0x40000000|0x10000000|0x04000000|0x0000000E|0x00000100 0 0u 0u 109u 193u ""
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push ""
    ; Push 193u
    ; Push 109u
    ; Push 0u
    ; Push 0u
    ; Push 0
    ; Push 0x40000000|0x10000000|0x04000000|0x0000000E|0x00000100
    ; Push STATIC
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll CreateControl
  Pop $_22_
  SetBrandingImage /IMGID=87 "Common Files"
  nsDialogs::CreateControl STATIC 0x40000000|0x10000000|0x04000000|0x00000100 0x00000020 120u 10u 195u 38u $(LSTR_41)    ;  "Welcome to $(LSTR_132) Setup" "VLC media player"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push $(LSTR_41)    ;  "Welcome to $(LSTR_132) Setup" "VLC media player"
    ; Push 38u
    ; Push 195u
    ; Push 10u
    ; Push 120u
    ; Push 0x00000020
    ; Push 0x40000000|0x10000000|0x04000000|0x00000100
    ; Push STATIC
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll CreateControl
  Pop $_24_
  SetCtlColors $_24_ 0x000000 0xFFFFFF
  CreateFont $_25_ $(LSTR_42) 12 700    ;  "MS Shell Dlg"
  SendMessage $_24_ ${WM_SETFONT} $_25_ 0
  nsDialogs::CreateControl STATIC 0x40000000|0x10000000|0x04000000|0x00000100 0x00000020 120u 55u 195u 130u $(LSTR_43)    ;  "Setup will guide you through the installation of $(LSTR_132).$\r$\n$\r$\nIt is recommended that you close all other applications before starting Setup. This will make it possible to update relevant system files without having to reboot your computer.$\r$\n$\r$\n$_CLICK" "VLC media player"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push $(LSTR_43)    ;  "Setup will guide you through the installation of $(LSTR_132).$\r$\n$\r$\nIt is recommended that you close all other applications before starting Setup. This will make it possible to update relevant system files without having to reboot your computer.$\r$\n$\r$\n$_CLICK" "VLC media player"
    ; Push 130u
    ; Push 195u
    ; Push 55u
    ; Push 120u
    ; Push 0x00000020
    ; Push 0x40000000|0x10000000|0x04000000|0x00000100
    ; Push STATIC
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll CreateControl
  Pop $_26_
  SetCtlColors $_26_ 0x000000 0xFFFFFF
  Call func_4
  nsDialogs::Show
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll Show
  Call func_14
  IntCmp $_23_ 0 label_94
  System::Call gdi32::DeleteObject(ps) $_23_
    ; Call Initialize_____Plugins
    ; AllowSkipFiles on
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push $_23_
    ; Push gdi32::DeleteObject(ps)
    ; CallInstDLL $PLUGINSDIR\System.dll Call
label_94:
FunctionEnd


Function func_95    ; Page 0, Leave
FunctionEnd


Function func_96    ; Page 2, Pre
  Call func_11501
  SendMessage $_9_ ${WM_SETTEXT} 0 STR:$(LSTR_46)    ;  "License Agreement"
  SendMessage $_11_ ${WM_SETTEXT} 0 STR:$(LSTR_47)    ;  "Please review the license terms before installing $(LSTR_132)." "VLC media player"
FunctionEnd


Function func_100    ; Page 2, Show
  FindWindow $_27_ "#32770" "" $HWNDPARENT
  GetDlgItem $_28_ $_27_ 1040
  GetDlgItem $_29_ $_27_ 1006
  GetDlgItem $_30_ $_27_ 1000
  SendMessage $_28_ ${WM_SETTEXT} 0 STR:$(LSTR_48)    ;  "Press Page Down to see the rest of the agreement."
FunctionEnd


Function func_106    ; Page 2, Leave
FunctionEnd


Function func_107    ; Page 3, Pre
  Call func_11510
  SendMessage $_9_ ${WM_SETTEXT} 0 STR:$(LSTR_49)    ;  "Choose Components"
  SendMessage $_11_ ${WM_SETTEXT} 0 STR:$(LSTR_50)    ;  "Choose which features of $(LSTR_132) you want to install." "VLC media player"
FunctionEnd


Function func_111    ; Page 3, Show
  FindWindow $_31_ "#32770" "" $HWNDPARENT
  GetDlgItem $_32_ $_31_ 1006
  GetDlgItem $_33_ $_31_ 1021
  GetDlgItem $_34_ $_31_ 1022
  GetDlgItem $_35_ $_31_ 1017
  GetDlgItem $_36_ $_31_ 1032
  GetDlgItem $_37_ $_31_ 1042
  GetDlgItem $_39_ $_31_ 1043
  GetDlgItem $_40_ $_31_ 1023
  SendMessage $_37_ ${WM_SETTEXT} 0 STR:$(LSTR_51)    ;  Description
  EnableWindow $_39_ 0
  SendMessage $_39_ ${WM_SETTEXT} 0 STR:$(LSTR_52)    ;  "Position your mouse over a component to see its description."
  StrCpy $_38_ $(LSTR_52)    ;  "Position your mouse over a component to see its description."
FunctionEnd


Function func_125    ; Page 3, Leave
FunctionEnd


Function func_126    ; Page 4, Pre
  Call func_11516
  SendMessage $_9_ ${WM_SETTEXT} 0 STR:$(LSTR_53)    ;  "Choose Install Location"
  SendMessage $_11_ ${WM_SETTEXT} 0 STR:$(LSTR_54)    ;  "Choose the folder in which to install $(LSTR_132)." "VLC media player"
FunctionEnd


Function func_130    ; Page 4, Show
  FindWindow $_41_ "#32770" "" $HWNDPARENT
  GetDlgItem $_42_ $_41_ 1006
  GetDlgItem $_43_ $_41_ 1020
  GetDlgItem $_44_ $_41_ 1019
  GetDlgItem $_45_ $_41_ 1001
  GetDlgItem $_46_ $_41_ 1023
  GetDlgItem $_47_ $_41_ 1024
FunctionEnd


Function func_138    ; Page 4, Leave
FunctionEnd


Function func_139    ; Page 5, Pre
  SendMessage $_9_ ${WM_SETTEXT} 0 STR:$(LSTR_55)    ;  Installing
  SendMessage $_11_ ${WM_SETTEXT} 0 STR:$(LSTR_56)    ;  "Please wait while $(LSTR_132) is being installed." "VLC media player"
FunctionEnd


Function func_142    ; Page 5, Show
  FindWindow $_48_ "#32770" "" $HWNDPARENT
  GetDlgItem $_49_ $_48_ 1006
  GetDlgItem $_50_ $_48_ 1004
  GetDlgItem $_51_ $_48_ 1027
  GetDlgItem $_52_ $_48_ 1016
FunctionEnd


Function func_148    ; Page 5, Leave
  IfAbort label_152
  SendMessage $_9_ ${WM_SETTEXT} 0 STR:$(LSTR_57)    ;  "Installation Complete"
  SendMessage $_11_ ${WM_SETTEXT} 0 STR:$(LSTR_58)    ;  "Setup was completed successfully."
  Goto label_154
label_152:
  SendMessage $_9_ ${WM_SETTEXT} 0 STR:$(LSTR_59)    ;  "Installation Aborted"
  SendMessage $_11_ ${WM_SETTEXT} 0 STR:$(LSTR_60)    ;  "Setup was not completed successfully."
label_154:
  IfAbort label_156
  WriteRegStr HKLM Software\VideoLAN\VLC Language $LANGUAGE
label_156:
FunctionEnd


Function func_157
  InitPluginsDir
    ; Call Initialize_____Plugins
    ; SetDetailsPrint lastused
  SetOverwrite ifdiff
  File $PLUGINSDIR\modern-wizard.bmp
  Call func_0
  SetAutoClose true
  Return

  ExecShell open https://www.videolan.org/vlc/    ; "open https://www.videolan.org/vlc/"
FunctionEnd


Function func_165    ; Page 7, Pre
  Call func_11507
  SendMessage $_18_ ${WM_SETTEXT} 0 STR:$(LSTR_61)    ;  &Finish
  nsDialogs::Create 1044
    ; Call Initialize_____Plugins
    ; SetOverwrite off
    ; AllowSkipFiles off
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push 1044
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll Create
  Pop $_53_
  nsDialogs::SetRTL $(LSTR_40)    ;  0
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push $(LSTR_40)    ;  0
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll SetRTL
  SetCtlColors $_53_ "" 0xFFFFFF
  nsDialogs::CreateControl STATIC 0x40000000|0x10000000|0x04000000|0x0000000E|0x00000100 0 0u 0u 109u 193u ""
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push ""
    ; Push 193u
    ; Push 109u
    ; Push 0u
    ; Push 0u
    ; Push 0
    ; Push 0x40000000|0x10000000|0x04000000|0x0000000E|0x00000100
    ; Push STATIC
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll CreateControl
  Pop $_54_
  SetBrandingImage /IMGID=87 $PLUGINSDIR\modern-wizard.bmp
  nsDialogs::CreateControl STATIC 0x40000000|0x10000000|0x04000000|0x00000100 0x00000020 120u 10u 195u 28u $(LSTR_62)    ;  "Completing $(LSTR_132) Setup" "VLC media player"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push $(LSTR_62)    ;  "Completing $(LSTR_132) Setup" "VLC media player"
    ; Push 28u
    ; Push 195u
    ; Push 10u
    ; Push 120u
    ; Push 0x00000020
    ; Push 0x40000000|0x10000000|0x04000000|0x00000100
    ; Push STATIC
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll CreateControl
  Pop $_56_
  SetCtlColors $_56_ 0x000000 0xFFFFFF
  CreateFont $_57_ $(LSTR_42) 12 700    ;  "MS Shell Dlg"
  SendMessage $_56_ ${WM_SETFONT} $_57_ 0
  nsDialogs::CreateControl STATIC 0x40000000|0x10000000|0x04000000|0x00000100 0x00000020 120u 45u 195u 40u $(LSTR_63)    ;  "$(LSTR_132) has been installed on your computer.$\r$\n$\r$\nClick Finish to close Setup." "VLC media player"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push $(LSTR_63)    ;  "$(LSTR_132) has been installed on your computer.$\r$\n$\r$\nClick Finish to close Setup." "VLC media player"
    ; Push 40u
    ; Push 195u
    ; Push 45u
    ; Push 120u
    ; Push 0x00000020
    ; Push 0x40000000|0x10000000|0x04000000|0x00000100
    ; Push STATIC
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll CreateControl
  Pop $_58_
  SetCtlColors $_58_ 0x000000 0xFFFFFF
  nsDialogs::CreateControl BUTTON 0x40000000|0x10000000|0x04000000|0x00010000|0x00000000|0x00000C00|0x00000003|0x00002000 0 120u 90u 195u 10u $(LSTR_64)    ;  "&Run $(LSTR_132)" "VLC media player"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push $(LSTR_64)    ;  "&Run $(LSTR_132)" "VLC media player"
    ; Push 10u
    ; Push 195u
    ; Push 90u
    ; Push 120u
    ; Push 0
    ; Push 0x40000000|0x10000000|0x04000000|0x00010000|0x00000000|0x00000C00|0x00000003|0x00002000
    ; Push BUTTON
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll CreateControl
  Pop $_60_
  SetCtlColors $_60_ 0x000000 0xFFFFFF
  SendMessage $_60_ 0x00F1 1 0
  System::Call user32::SetFocus(p$_60_)
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push user32::SetFocus(p$_60_)
    ; CallInstDLL $PLUGINSDIR\System.dll Call
  nsDialogs::CreateControl LINK 0x40000000|0x10000000|0x04000000|0x00010000|0x0000000B 0 120u 175u 195u 10u $(LSTR_65)    ;  "Visit the VideoLAN VLC media player Website"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push $(LSTR_65)    ;  "Visit the VideoLAN VLC media player Website"
    ; Push 10u
    ; Push 195u
    ; Push 175u
    ; Push 120u
    ; Push 0
    ; Push 0x40000000|0x10000000|0x04000000|0x00010000|0x0000000B
    ; Push LINK
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll CreateControl
  Pop $_61_
  SetCtlColors $_61_ 0x000080 0xFFFFFF
  Push $0
  Push $1
  StrCpy $1 $_61_
  StrCpy $0 164
  nsDialogs::OnClick $1 $0
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push $0
    ; Push $1
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll OnClick
  Pop $1
  Pop $0
  Push $1
  System::Call *(i12,i0,p)p.r1
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push *(i12,i0,p)p.r1
    ; CallInstDLL $PLUGINSDIR\System.dll Call
  System::Call USER32::SystemParametersInfo(i0x42,i12,pr1,i0)
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push USER32::SystemParametersInfo(i0x42,i12,pr1,i0)
    ; CallInstDLL $PLUGINSDIR\System.dll Call
  System::Call *$1(i,i.s)
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push *$1(i,i.s)
    ; CallInstDLL $PLUGINSDIR\System.dll Call
  Pop $_62_
  System::Free $1
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push $1
    ; CallInstDLL $PLUGINSDIR\System.dll Free
  Pop $1
  IntOp $_62_ $_62_ & 0x01
  IntCmp $_62_ 0 label_299
  System::Call "UXTHEME::SetWindowTheme(p$_60_,w$\" $\",w$\" $\")"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push "UXTHEME::SetWindowTheme(p$_60_,w$\" $\",w$\" $\")"
    ; CallInstDLL $PLUGINSDIR\System.dll Call
label_299:
  Call func_4
  nsDialogs::Show
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll Show
  Call func_14
  IntCmp $_55_ 0 label_312
  System::Call gdi32::DeleteObject(ps) $_55_
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push $_55_
    ; Push gdi32::DeleteObject(ps)
    ; CallInstDLL $PLUGINSDIR\System.dll Call
label_312:
FunctionEnd


Function func_313    ; Page 7, Leave
  SendMessage $_60_ 0x00F0 0 0 $_59_
  IntCmp $_59_ 1 0 label_316 label_316
  Call func_635
label_316:
FunctionEnd


Function .onGUIInit
  GetDlgItem $_9_ $HWNDPARENT 1037
  CreateFont $_10_ $(LSTR_42) $(LSTR_66) 700    ;  "MS Shell Dlg" 8
  SendMessage $_9_ ${WM_SETFONT} $_10_ 0
  GetDlgItem $_11_ $HWNDPARENT 1038
  SetCtlColors $_9_ 0x000000 0xFFFFFF
  SetCtlColors $_11_ 0x000000 0xFFFFFF
  GetDlgItem $_12_ $HWNDPARENT 1034
  SetCtlColors $_12_ "" 0xFFFFFF
  GetDlgItem $_13_ $HWNDPARENT 1039
  SetCtlColors $_13_ "" 0xFFFFFF
  GetDlgItem $_15_ $HWNDPARENT 1028
  SetCtlColors $_15_ /BRANDING ""
  GetDlgItem $_14_ $HWNDPARENT 1256
  SetCtlColors $_14_ /BRANDING ""
  SendMessage $_14_ ${WM_SETTEXT} 0 "STR:$(LSTR_0) "    ;  "VideoLAN VLC media player"
  GetDlgItem $_16_ $HWNDPARENT 1035
  GetDlgItem $_17_ $HWNDPARENT 1045
  GetDlgItem $_18_ $HWNDPARENT 1
  GetDlgItem $_19_ $HWNDPARENT 2
  GetDlgItem $_20_ $HWNDPARENT 3
  Call func_157
FunctionEnd


Function .onUserAbort
  MessageBox MB_YESNO|MB_ICONEXCLAMATION $(LSTR_67) IDYES label_341    ;  "Are you sure you want to quit $(LSTR_2) Setup?" "VLC media player"
  Abort
label_341:
FunctionEnd


Function func_342
  Exch $R0
    ; Push $R0
    ; Exch
    ; Pop $R0
  Exch
  Exch $R1
    ; Push $R1
    ; Exch
    ; Pop $R1
  Exch
  Exch 2
  Exch $R2
    ; Push $R2
    ; Exch
    ; Pop $R2
  Push $R3
  Push $R4
  Push $R5
  Push $R6
  Push $R7
  Push $R8
  StrCmp $R1 "" 0 label_362
  Goto label_381
label_362:
  StrLen $R3 $R0
  StrLen $R4 $R1
  StrLen $R5 $R2
  StrCpy $R6 0
label_366:
  StrCpy $R7 $R2 $R4 $R6
  StrCmp $R7 $R1 0 label_375
  StrCpy $R7 $R2 $R6
  IntOp $R8 $R6 + $R4
  StrCpy $R8 $R2 "" $R8
  StrCpy $R2 $R7$R0$R8
  StrLen $R5 $R2
  IntOp $R6 $R6 + $R3
  Goto label_378
label_375:
  IntCmp $R6 $R5 0 label_377
  Goto label_381
label_377:
  IntOp $R6 $R6 + 1
label_378:
  Goto label_366
  Goto label_378
  Goto label_381
label_381:
  StrCpy $R0 $R2
  Pop $R8
  Pop $R7
  Pop $R6
  Pop $R5
  Pop $R4
  Pop $R3
  Pop $R2
  Pop $R1
  Exch $R0
    ; Push $R0
    ; Exch
    ; Pop $R0
FunctionEnd


Function func_394
  Exch $1
    ; Push $1
    ; Exch
    ; Pop $1
  Exch
  Exch $0
    ; Push $0
    ; Exch
    ; Pop $0
  Exch
  Push $2
  Push $3
  Push $4
  Push $5
  Push $6
  Push $7
  Push $8
  StrCpy $2 ""
  StrCpy $3 ""
  StrCpy $4 ""
  StrCpy $5 ""
  StrCpy $6 ""
  StrCpy $7 ""
  StrCpy $8 ""
  StrCmp $1 U 0 label_424
  System::Call "User32::CharUpper(t r0 r5)i"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push "User32::CharUpper(t r0 r5)i"
    ; CallInstDLL $PLUGINSDIR\System.dll Call
  Goto label_540
  Goto label_431
label_424:
  StrCmp $1 L 0 label_431
  System::Call "User32::CharLower(t r0 r5)i"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push "User32::CharLower(t r0 r5)i"
    ; CallInstDLL $PLUGINSDIR\System.dll Call
  Goto label_540
label_431:
  StrLen $2 $0
  StrCpy $3 0
  Goto label_435
label_434:
  IntOp $3 $3 + 1
label_435:
  IntCmp $3 $2 0 0 label_540
  IntOp $4 $3 + 1
  IntCmp $3 0 label_439
  StrCpy $6 $0 "" $3
label_439:
  IntCmp $4 $2 label_444
  IntCmp $3 0 0 label_443 label_443
  StrCpy $6 $0 1
  Goto label_444
label_443:
  StrCpy $6 $6 1
label_444:
  StrCmp $1 T 0 label_478
  System::Call "*(&t1 r7) p .r8"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push "*(&t1 r7) p .r8"
    ; CallInstDLL $PLUGINSDIR\System.dll Call
  System::Call "*$8(&i1 .r7)"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push "*$8(&i1 .r7)"
    ; CallInstDLL $PLUGINSDIR\System.dll Call
  System::Free $8
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push $8
    ; CallInstDLL $PLUGINSDIR\System.dll Free
  System::Call "user32::IsCharAlpha(i r7) i .r8"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push "user32::IsCharAlpha(i r7) i .r8"
    ; CallInstDLL $PLUGINSDIR\System.dll Call
  IntCmp $8 0 0 label_472 label_472
  System::Call "User32::CharUpper(t r6 r6)i"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push "User32::CharUpper(t r6 r6)i"
    ; CallInstDLL $PLUGINSDIR\System.dll Call
  Goto label_477
label_472:
  System::Call "User32::CharLower(t r6 r6)i"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push "User32::CharLower(t r6 r6)i"
    ; CallInstDLL $PLUGINSDIR\System.dll Call
label_477:
  Goto label_535
label_478:
  StrCmp $1 S 0 label_502
  StrCmp $6 " " 0 label_481
  Goto label_482
label_481:
  StrCmp $6 $\t 0 label_483
label_482:
  Goto label_536
label_483:
  StrCmp $7 . 0 label_485
  Goto label_486
label_485:
  StrCmp $7 ! 0 label_487
label_486:
  Goto label_488
label_487:
  StrCmp $7 ? 0 label_489
label_488:
  Goto label_490
label_489:
  StrCmp $7 "" 0 label_496
label_490:
  System::Call "User32::CharUpper(t r6 r6)i"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push "User32::CharUpper(t r6 r6)i"
    ; CallInstDLL $PLUGINSDIR\System.dll Call
  Goto label_501
label_496:
  System::Call "User32::CharLower(t r6 r6)i"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push "User32::CharLower(t r6 r6)i"
    ; CallInstDLL $PLUGINSDIR\System.dll Call
label_501:
  Goto label_535
label_502:
  StrCmp $1 <> 0 label_535
  System::Call "*(&t1 r6) p .r8"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push "*(&t1 r6) p .r8"
    ; CallInstDLL $PLUGINSDIR\System.dll Call
  System::Call "*$8(&i1 .r7)"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push "*$8(&i1 .r7)"
    ; CallInstDLL $PLUGINSDIR\System.dll Call
  System::Free $8
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push $8
    ; CallInstDLL $PLUGINSDIR\System.dll Free
  System::Call "user32::IsCharUpper(i r7) i .r8"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push "user32::IsCharUpper(i r7) i .r8"
    ; CallInstDLL $PLUGINSDIR\System.dll Call
  IntCmp $8 0 0 label_530 label_530
  System::Call "User32::CharUpper(t r6 r6)i"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push "User32::CharUpper(t r6 r6)i"
    ; CallInstDLL $PLUGINSDIR\System.dll Call
  Goto label_535
label_530:
  System::Call "User32::CharLower(t r6 r6)i"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push "User32::CharLower(t r6 r6)i"
    ; CallInstDLL $PLUGINSDIR\System.dll Call
label_535:
  StrCpy $7 $6
label_536:
  StrCpy $5 $5$6
  Goto label_434
  Goto label_434
  Goto label_540
label_540:
  StrCpy $0 $5
  Pop $8
  Pop $7
  Pop $6
  Pop $5
  Pop $4
  Pop $3
  Pop $2
  Pop $1
  Exch $0
    ; Push $0
    ; Exch
    ; Pop $0
FunctionEnd


Function func_553
  ReadRegStr $1 HKCR $R0 ""
  StrCmp $1 "" label_557
  StrCmp $1 VLC$R0 label_557
  WriteRegStr HKCR $R0 VLC.backup $1
label_557:
  WriteRegStr HKCR $R0 "" VLC$R0
FunctionEnd


Function func_559
  Push $R0
  Push .
  Push ""
  Call func_342
  Pop $R2
  Push $R2
  Push U
  Call func_394
  Pop $R2
  WriteRegStr HKCR VLC$R0 "" "$R2 $R1 File (VLC)"
  WriteRegStr HKCR VLC$R0\shell "" Open
  WriteRegStr HKCR VLC$R0\shell\Open "" $(LSTR_68)    ;  Play
  WriteRegStr HKCR VLC$R0\shell\Open MultiSelectModel Player
  WriteRegStr HKCR VLC$R0\shell\Open\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file $\"%1$\""
  WriteRegStr HKCR VLC$R0\DefaultIcon "" $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR Applications\vlc.exe\SupportedTypes $0 ""
  Call :label_577
  Goto label_602
label_577:
  StrCmp $_69_ "" label_579
  Return

label_579:
  Push $0
  ReadMemory $0 0 1006632961
  ReadMemory $_69_ 0 1040187394
  IntOp $_69_ $_69_ << 16
  IntOp $_70_ $0 & 2
  IntOp $_70_ $_70_ << 29
  IntCmp $_70_ 0 label_590
  IntCmpU 0x06000000 $_69_ 0 0 label_589
  IntCmpU 0x09000000 $_69_ label_589 label_589
  IntOp $_69_ $_69_ | 0x00000001
label_589:
  Goto label_592
label_590:
  IntCmp $_69_ 0x05020000 0 label_592 label_592
  StrCpy $_69_ 0x05010000
label_592:
  IntCmp $0 0 label_595
  IntOp $_70_ $_70_ | 0x80000000
  IntOp $_69_ $_69_ | 0x80000000
label_595:
  ReadMemory $0 0 939524100
  IntOp $_70_ $_70_ | $0
  ReadMemory $0 0 1023410177
  IntOp $0 $0 << 16
  IntOp $_70_ $_70_ | $0
  Pop $0
  Return

label_602:
  IntOp $_62_ $_69_ & 0x7FFFFFFF
  IntCmp $_62_ 0x06000000 0 label_605
  WriteRegStr HKLM Software\Clients\Media\VLC\Capabilities\FileAssociations $R0 VLC$R0
label_605:
FunctionEnd


Function func_606
  WriteRegStr HKCR VLC$R0 "" "VLC skin file ($R0)"
  WriteRegStr HKCR VLC$R0\shell "" Open
  WriteRegStr HKCR VLC$R0\shell\Open "" ""
  WriteRegStr HKCR VLC$R0\shell\Open\command "" "$\"$INSTDIR\vlc.exe$\" -Iskins --skins2-last $\"%1$\""
  WriteRegStr HKCR VLC$R0\DefaultIcon "" $\"$INSTDIR\vlc.exe$\",0
  Call :label_577
  IntOp $_62_ $_69_ & 0x7FFFFFFF
  IntCmp $_62_ 0x06000000 0 label_615
  WriteRegStr HKLM Software\Clients\Media\VLC\Capabilities\FileAssociations $R0 VLC$R0
label_615:
FunctionEnd


Function func_616
  Pop $9
  FindFirst $0 $1 $INSTDIR\$9\*
  StrCmp $0 "" label_633
label_619:
  StrCmp $1 "" label_633
  StrCmp $1 . label_631
  StrCmp $1 .. label_631
  IfFileExists $9\$1\* 0 label_630
  Push $0
  Push $9
  Push $9\$1
  Call func_616
  Pop $9
  Pop $0
  Goto label_631
label_630:
  FileWrite $_6_ $9\$1$\r$\n
label_631:
  FindNext $0 $1
  Goto label_619
label_633:
  FindClose $0
FunctionEnd


Function func_635
  Call :label_577
  IntOp $_62_ $_69_ & 0x7FFFFFFF
  IntCmp $_62_ 0x06000000 0 label_640
  Exec "$\"$WINDIR\explorer.exe$\" $\"$INSTDIR\vlc.exe$\""
  Goto label_641
label_640:
  Exec $INSTDIR\vlc.exe
label_641:
FunctionEnd


Function func_642
  Call :label_644
  Goto label_677
label_644:
  StrCmp $CMDLINE "" 0 label_647
  Push ""
  Return

label_647:
  Push $0
  Push $1
  Push $2
  Push $3
  StrLen $1 $CMDLINE
  StrCpy $2 2
  StrCpy $3 $CMDLINE 1
  StrCmp $3 $\" label_656
  StrCpy $3 " "
label_656:
  IntCmp $2 $1 label_660 0 label_660
  StrCpy $0 $CMDLINE 1 $2
  IntOp $2 $2 + 1
  StrCmp $3 $0 0 label_656
label_660:
  IntCmp $2 $1 label_665 0 label_665
  StrCpy $0 $CMDLINE 1 $2
  StrCmp $0 " " 0 label_665
  IntOp $2 $2 + 1
  Goto label_660
label_665:
  StrCpy $0 $CMDLINE "" $2
label_666:
  StrCpy $1 $0 1 -1
  StrCmp $1 " " 0 label_670
  StrCpy $0 $0 -1
  Goto label_666
label_670:
  Pop $3
  Pop $2
  Pop $1
  Exch $0
    ; Push $0
    ; Exch
    ; Pop $0
  Return

label_677:
  Pop $R0
  Push $R0
  Push /update
  Call :label_682
  Goto label_771
label_682:
  Exch $1
    ; Push $1
    ; Exch
    ; Pop $1
  Exch
  Exch $0
    ; Push $0
    ; Exch
    ; Pop $0
  Exch
  Push $2
  Push $3
  Push $4
  Push $5
  Push $6
  Push $7
  ClearErrors
  StrCpy $2 $1 "" 1
  StrCpy $1 $1 1
  StrLen $3 $2
  StrCpy $7 0
label_701:
  StrCpy $4 -1
  StrCpy $6 ""
label_703:
  IntOp $4 $4 + 1
  StrCpy $5 $0 1 $4
  StrCmp $5$7 0 label_758
  StrCmp $5 "" label_745
  StrCmp $5 $\" 0 label_714
  StrCmp $6 "" 0 label_711
  StrCpy $6 $\"
  Goto label_703
label_711:
  StrCmp $6 $\" 0 label_714
  StrCpy $6 ""
  Goto label_703
label_714:
  StrCmp $5 ' 0 label_721
  StrCmp $6 "" 0 label_718
  StrCpy $6 '
  Goto label_703
label_718:
  StrCmp $6 ' 0 label_721
  StrCpy $6 ""
  Goto label_703
label_721:
  StrCmp $5 ` 0 label_728
  StrCmp $6 "" 0 label_725
  StrCpy $6 `
  Goto label_703
label_725:
  StrCmp $6 ` 0 label_728
  StrCpy $6 ""
  Goto label_703
label_728:
  StrCmp $6 $\" label_703
  StrCmp $6 ' label_703
  StrCmp $6 ` label_703
  StrCmp $5 $1 0 label_703
  StrCmp $7 0 label_733 label_745
label_733:
  IntOp $4 $4 + 1
  StrCpy $5 $0 $3 $4
  StrCmp $5 "" label_758
  StrCmp $5 $2 0 label_703
  IntOp $4 $4 + $3
  StrCpy $0 $0 "" $4
label_739:
  StrCpy $4 $0 1
  StrCmp $4 " " 0 label_743
  StrCpy $0 $0 "" 1
  Goto label_739
label_743:
  StrCpy $7 1
  Goto label_701
label_745:
  StrCpy $0 $0 $4
label_746:
  StrCpy $4 $0 1 -1
  StrCmp $4 " " 0 label_750
  StrCpy $0 $0 -1
  Goto label_746
label_750:
  StrCpy $3 $0 1
  StrCpy $4 $0 1 -1
  StrCmp $3 $4 0 label_760
  StrCmp $3 $\" label_756
  StrCmp $3 ' label_756
  StrCmp $3 ` 0 label_760
label_756:
  StrCpy $0 $0 -1 1
  Goto label_760
label_758:
  SetErrors
  StrCpy $0 ""
label_760:
  Pop $7
  Pop $6
  Pop $5
  Pop $4
  Pop $3
  Pop $2
  Pop $1
  Exch $0
    ; Push $0
    ; Exch
    ; Pop $0
  Return

label_771:
  Pop $R1
  IfErrors 0 label_775
  StrCpy $_2_ 0
  Goto label_776
label_775:
  StrCpy $_2_ 1
label_776:
FunctionEnd


Function func_777
  ReadRegStr $_5_ HKLM Software\VideoLAN\VLC InstallDir
  Call func_782
  StrCmp $_5_ "" label_781
  ReadRegStr $_3_ HKLM Software\VideoLAN\VLC Version
label_781:
FunctionEnd


Function func_782
  StrCmp $_5_ "" label_796
  Push $R0
  Push $R1
  StrCpy $R0 $_5_ "" -1
  StrCmp $R0 \ 0 label_788
  Goto label_789
label_788:
  StrCmp $R0 / 0 label_791
label_789:
  StrCpy $R0 $_5_*.*
  Goto label_792
label_791:
  StrCpy $R0 $_5_\*.*
label_792:
  IfFileExists $R0 label_794
  StrCpy $_5_ ""
label_794:
  Pop $R1
  Pop $R0
label_796:
FunctionEnd


Function func_797
  Exch $1
    ; Push $1
    ; Exch
    ; Pop $1
  Exch
  Exch $0
    ; Push $0
    ; Exch
    ; Pop $0
  Push $2
  Push $3
  Push $4
label_807:
  StrCmp $0 "" 0 label_811
  StrCmp $1 "" 0 label_811
  StrCpy $_4_ same
  Goto label_854
label_811:
  StrCpy $2 0
  StrCpy $3 0
  StrCpy $4 $0 2
  StrCmp $4 rc 0 label_818
  StrCpy $2 100
  StrCpy $0 $0 "" 2
  Goto label_823
label_818:
  StrCpy $4 $0 4
  StrCmp $4 beta 0 label_822
  StrCpy $0 $0 "" 4
  Goto label_823
label_822:
  StrCpy $2 10000
label_823:
  StrCpy $4 $1 2
  StrCmp $4 rc 0 label_828
  StrCpy $3 100
  StrCpy $1 $1 "" 2
  Goto label_833
label_828:
  StrCpy $4 $1 4
  StrCmp $4 beta 0 label_832
  StrCpy $1 $1 "" 4
  Goto label_833
label_832:
  StrCpy $3 10000
label_833:
  StrCmp $0 "" label_840
  StrCpy $4 $0 1
  StrCpy $0 $0 "" 1
  StrCmp $4 . label_840
  StrCmp $4 - label_840
  StrCpy $2 $2$4
  Goto label_833
label_840:
  StrCmp $1 "" label_847
  StrCpy $4 $1 1
  StrCpy $1 $1 "" 1
  StrCmp $4 . label_847
  StrCmp $4 - label_847
  StrCpy $3 $3$4
  Goto label_840
label_847:
  IntCmp $2 $3 label_850 label_850
  StrCpy $_4_ newer
  Goto label_854
label_850:
  IntCmp $3 $2 label_853 label_853
  StrCpy $_4_ older
  Goto label_854
label_853:
  Goto label_807
label_854:
  Pop $4
  Pop $3
  Pop $2
  Pop $1
  Pop $0
FunctionEnd


Function func_860
  Exch $R0
    ; Push $R0
    ; Exch
    ; Pop $R0
  Push $R1
  Push $R2
  StrCpy $R1 0
label_866:
  IntOp $R1 $R1 - 1
  StrCpy $R2 $R0 1 $R1
  StrCmp $R2 $\r label_866
  StrCmp $R2 $\n label_866
  IntOp $R1 $R1 + 1
  IntCmp $R1 0 label_873
  StrCpy $R0 $R0 $R1
label_873:
  Pop $R2
  Pop $R1
  Exch $R0
    ; Push $R0
    ; Exch
    ; Pop $R0
FunctionEnd


Function func_879
  Pop $9
  FindFirst $0 $1 $INSTDIR$9*
  StrCmp $0 "" label_896
label_882:
  StrCmp $1 "" label_896
  StrCmp $1 . label_894
  StrCmp $1 .. label_894
  Push $0
  Push $1
  Push $9
  Push $9$1\
  Call func_879
  Pop $9
  Pop $1
  Pop $0
  RMDir $INSTDIR$9$1
label_894:
  FindNext $0 $1
  Goto label_882
label_896:
  FindClose $0
FunctionEnd


Function func_898
  nsProcess::_FindProcess /NOUNLOAD vlc.exe
    ; Call Initialize_____Plugins
    ; AllowSkipFiles on
    ; File $PLUGINSDIR\nsProcess.dll
    ; SetDetailsPrint lastused
    ; Push vlc.exe
    ; CallInstDLL $PLUGINSDIR\nsProcess.dll /NOUNLOAD _FindProcess
  Pop $R0
  StrCmp $R0 0 0 label_926
  IfSilent label_909
    ; ShowWindow $HWNDPARENT ${SW_SHOW}
  BringToFront
  MessageBox MB_OKCANCEL|MB_ICONQUESTION $(LSTR_69) IDCANCEL label_920    ;  "VLC appears to be running and will now be closed."
label_909:
  nsProcess::_CloseProcess /NOUNLOAD vlc.exe
    ; Call Initialize_____Plugins
    ; AllowSkipFiles off
    ; File $PLUGINSDIR\nsProcess.dll
    ; SetDetailsPrint lastused
    ; Push vlc.exe
    ; CallInstDLL $PLUGINSDIR\nsProcess.dll /NOUNLOAD _CloseProcess
  Pop $R0
  IfSilent label_926
  StrCmp $R0 0 label_926
  StrCmp $R0 603 label_926
  MessageBox MB_OK|MB_ICONEXCLAMATION $(LSTR_70)    ;  "This installer was unable to close VLC, please do it manually."
  Goto label_926
label_920:
  nsProcess::_Unload
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsProcess.dll
    ; SetDetailsPrint lastused
    ; CallInstDLL $PLUGINSDIR\nsProcess.dll _Unload
  MessageBox MB_OK|MB_ICONEXCLAMATION $(LSTR_71)    ;  "Installation aborted!"
  Quit
label_926:
  nsProcess::_Unload
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsProcess.dll
    ; SetDetailsPrint lastused
    ; CallInstDLL $PLUGINSDIR\nsProcess.dll _Unload
FunctionEnd


Section $(LSTR_72) ; Section_0    ;  "Media Player (required)"
  ; AddSize 192355
  SectionIn 1 2 3 RO
  SetShellVarContext all
  SetOutPath $INSTDIR
  DetailPrint $(LSTR_73)    ;  "Checking processes..."
  Call func_898
  StrCmp $_8_ "" label_943
  ClearErrors
  ExecWait "$\"$_7_$\" /S _?=$_8_"
  IfErrors 0 label_940
  Goto label_943
label_940:
  IfFileExists $_7_ 0 label_943
  Delete $_7_
  RMDir $_8_
label_943:
  StrCmp $_0_ 1 0 label_958
  FileOpen $_6_ $INSTDIR\uninstall.log r
label_945:
  ClearErrors
  FileRead $_6_ $R0
  IfErrors label_953
  Push $R0
  Call func_860
  Pop $R0
  Delete $INSTDIR\$R0
  Goto label_945
label_953:
  FileClose $_6_
  Delete $INSTDIR\uninstall.log
  Delete $INSTDIR\uninstall.exe
  Push \
  Call func_879
label_958:
  FileOpen $_6_ $INSTDIR\uninstall.log a
  FileSeek $_6_ 0 END
  SetOverwrite ifdiff
  AllowSkipFiles on
  File vlc.exe
  FindFirst $0 $1 $INSTDIR\vlc.exe
  StrCmp $0 "" label_967
label_963:
  StrCmp $1 "" label_967
  FileWrite $_6_ $1$\r$\n
  FindNext $0 $1
  Goto label_963
label_967:
  FindClose $0
  File vlc-cache-gen.exe
  FindFirst $0 $1 $INSTDIR\vlc-cache-gen.exe
  StrCmp $0 "" label_975
label_971:
  StrCmp $1 "" label_975
  FileWrite $_6_ $1$\r$\n
  FindNext $0 $1
  Goto label_971
label_975:
  FindClose $0
  File axvlc.dll
  File libvlc.dll
  File libvlccore.dll
  FindFirst $0 $1 $INSTDIR\*.dll
  StrCmp $0 "" label_985
label_981:
  StrCmp $1 "" label_985
  FileWrite $_6_ $1$\r$\n
  FindNext $0 $1
  Goto label_981
label_985:
  FindClose $0
  File AUTHORS.txt
  File COPYING.txt
  File NEWS.txt
  File README.txt
  File THANKS.txt
  FindFirst $0 $1 $INSTDIR\*.txt
  StrCmp $0 "" label_997
label_993:
  StrCmp $1 "" label_997
  FileWrite $_6_ $1$\r$\n
  FindNext $0 $1
  Goto label_993
label_997:
  FindClose $0
  SetOutPath $INSTDIR\plugins
  StrCpy $_OUTDIR $OUTDIR
  SetOutPath $_OUTDIR\access
  File libaccess_concat_plugin.dll
  File libaccess_imem_plugin.dll
  File libaccess_mms_plugin.dll
  File libaccess_srt_plugin.dll
  File libaccess_wasapi_plugin.dll
  File libattachment_plugin.dll
  File libbluray-awt-j2se-1.4.1.jar
  File libbluray-j2se-1.4.1.jar
  File libcdda_plugin.dll
  File libdcp_plugin.dll
  File libdshow_plugin.dll
  File libdtv_plugin.dll
  File libdvdnav_plugin.dll
  File libdvdread_plugin.dll
  File libfilesystem_plugin.dll
  File libftp_plugin.dll
  File libhttp_plugin.dll
  File libhttps_plugin.dll
  File libidummy_plugin.dll
  File libimem_plugin.dll
  File liblibbluray_plugin.dll
  File liblive555_plugin.dll
  File libnfs_plugin.dll
  File librist_plugin.dll
  File librtp_plugin.dll
  File libsatip_plugin.dll
  File libscreen_plugin.dll
  File libsdp_plugin.dll
  File libsftp_plugin.dll
  File libshm_plugin.dll
  File libsmb_plugin.dll
  File libtcp_plugin.dll
  File libtimecode_plugin.dll
  File libudp_plugin.dll
  File libvcd_plugin.dll
  File libvdr_plugin.dll
  File libvnc_plugin.dll
  SetOutPath $_OUTDIR\access_output
  File libaccess_output_dummy_plugin.dll
  File libaccess_output_file_plugin.dll
  File libaccess_output_http_plugin.dll
  File libaccess_output_livehttp_plugin.dll
  File libaccess_output_rist_plugin.dll
  File libaccess_output_shout_plugin.dll
  File libaccess_output_srt_plugin.dll
  File libaccess_output_udp_plugin.dll
  SetOutPath $_OUTDIR\audio_filter
  File libaudio_format_plugin.dll
  File libaudiobargraph_a_plugin.dll
  File libchorus_flanger_plugin.dll
  File libcompressor_plugin.dll
  File libdolby_surround_decoder_plugin.dll
  File libequalizer_plugin.dll
  File libgain_plugin.dll
  File libheadphone_channel_mixer_plugin.dll
  File libkaraoke_plugin.dll
  File libmad_plugin.dll
  File libmono_plugin.dll
  File libnormvol_plugin.dll
  File libparam_eq_plugin.dll
  File libremap_plugin.dll
  File libsamplerate_plugin.dll
  File libscaletempo_pitch_plugin.dll
  File libscaletempo_plugin.dll
  File libsimple_channel_mixer_plugin.dll
  File libspatialaudio_plugin.dll
  File libspatializer_plugin.dll
  File libspeex_resampler_plugin.dll
  File libstereo_widen_plugin.dll
  File libtospdif_plugin.dll
  File libtrivial_channel_mixer_plugin.dll
  File libugly_resampler_plugin.dll
  SetOutPath $_OUTDIR\audio_mixer
  File libfloat_mixer_plugin.dll
  File libinteger_mixer_plugin.dll
  SetOutPath $_OUTDIR\audio_output
  File libadummy_plugin.dll
  File libafile_plugin.dll
  File libamem_plugin.dll
  File libdirectsound_plugin.dll
  File libmmdevice_plugin.dll
  File libwasapi_plugin.dll
  File libwaveout_plugin.dll
  SetOutPath $_OUTDIR\codec
  File libadpcm_plugin.dll
  File libaes3_plugin.dll
  File libaom_plugin.dll
  File libaraw_plugin.dll
  File libaribsub_plugin.dll
  File libavcodec_plugin.dll
  File libcc_plugin.dll
  File libcdg_plugin.dll
  File libcrystalhd_plugin.dll
  File libcvdsub_plugin.dll
  File libd3d11va_plugin.dll
  File libdav1d_plugin.dll
  File libddummy_plugin.dll
  File libdmo_plugin.dll
  File libdvbsub_plugin.dll
  File libdxva2_plugin.dll
  File libedummy_plugin.dll
  File libfaad_plugin.dll
  File libflac_plugin.dll
  File libfluidsynth_plugin.dll
  File libg711_plugin.dll
  File libjpeg_plugin.dll
  File libkate_plugin.dll
  File liblibass_plugin.dll
  File liblpcm_plugin.dll
  File libmft_plugin.dll
  File libmpg123_plugin.dll
  File liboggspots_plugin.dll
  File libopus_plugin.dll
  File libpng_plugin.dll
  File libqsv_plugin.dll
  File librawvideo_plugin.dll
  File librtpvideo_plugin.dll
  File libscte18_plugin.dll
  File libscte27_plugin.dll
  File libspdif_plugin.dll
  File libspeex_plugin.dll
  File libspudec_plugin.dll
  File libstl_plugin.dll
  File libsubsdec_plugin.dll
  File libsubstx3g_plugin.dll
  File libsubsusf_plugin.dll
  File libsvcdsub_plugin.dll
  File libt140_plugin.dll
  File libtextst_plugin.dll
  File libtheora_plugin.dll
  File libttml_plugin.dll
  File libtwolame_plugin.dll
  File libuleaddvaudio_plugin.dll
  File libvorbis_plugin.dll
  File libvpx_plugin.dll
  File libwebvtt_plugin.dll
  File libx26410b_plugin.dll
  File libx264_plugin.dll
  File libx265_plugin.dll
  File libzvbi_plugin.dll
  SetOutPath $_OUTDIR\control
  File libdummy_plugin.dll
  File libgestures_plugin.dll
  File libhotkeys_plugin.dll
  File libnetsync_plugin.dll
  File libntservice_plugin.dll
  File liboldrc_plugin.dll
  File libwin_hotkeys_plugin.dll
  File libwin_msg_plugin.dll
  SetOutPath $_OUTDIR\d3d11
  File libdirect3d11_filters_plugin.dll
  SetOutPath $_OUTDIR\d3d9
  File libdirect3d9_filters_plugin.dll
  SetOutPath $_OUTDIR\demux
  File libadaptive_plugin.dll
  File libaiff_plugin.dll
  File libasf_plugin.dll
  File libau_plugin.dll
  File libavi_plugin.dll
  File libcaf_plugin.dll
  File libdemux_cdg_plugin.dll
  File libdemux_chromecast_plugin.dll
  File libdemux_stl_plugin.dll
  File libdemuxdump_plugin.dll
  File libdiracsys_plugin.dll
  File libdirectory_demux_plugin.dll
  File libdmxmus_plugin.dll
  File libes_plugin.dll
  File libflacsys_plugin.dll
  File libgme_plugin.dll
  File libh26x_plugin.dll
  File libimage_plugin.dll
  File libmjpeg_plugin.dll
  File libmkv_plugin.dll
  File libmod_plugin.dll
  File libmp4_plugin.dll
  File libmpc_plugin.dll
  File libmpgv_plugin.dll
  File libnoseek_plugin.dll
  File libnsc_plugin.dll
  File libnsv_plugin.dll
  File libnuv_plugin.dll
  File libogg_plugin.dll
  File libplaylist_plugin.dll
  File libps_plugin.dll
  File libpva_plugin.dll
  File librawaud_plugin.dll
  File librawdv_plugin.dll
  File librawvid_plugin.dll
  File libreal_plugin.dll
  File libsid_plugin.dll
  File libsmf_plugin.dll
  File libsubtitle_plugin.dll
  File libts_plugin.dll
  File libtta_plugin.dll
  File libty_plugin.dll
  File libvc1_plugin.dll
  File libvobsub_plugin.dll
  File libvoc_plugin.dll
  File libwav_plugin.dll
  File libxa_plugin.dll
  SetOutPath $_OUTDIR\gui
  File libqt_plugin.dll
  File libskins2_plugin.dll
  SetOutPath $_OUTDIR\keystore
  File libfile_keystore_plugin.dll
  File libmemory_keystore_plugin.dll
  SetOutPath $_OUTDIR\logger
  File libconsole_logger_plugin.dll
  File libfile_logger_plugin.dll
  SetOutPath $_OUTDIR\lua
  File liblua_plugin.dll
  SetOutPath $_OUTDIR\meta_engine
  File libfolder_plugin.dll
  File libtaglib_plugin.dll
  SetOutPath $_OUTDIR\misc
  File libaddonsfsstorage_plugin.dll
  File libaddonsvorepository_plugin.dll
  File libaudioscrobbler_plugin.dll
  File libexport_plugin.dll
  File libfingerprinter_plugin.dll
  File libgnutls_plugin.dll
  File liblogger_plugin.dll
  File libstats_plugin.dll
  File libvod_rtsp_plugin.dll
  File libxml_plugin.dll
  SetOutPath $_OUTDIR\mux
  File libmux_asf_plugin.dll
  File libmux_avi_plugin.dll
  File libmux_dummy_plugin.dll
  File libmux_mp4_plugin.dll
  File libmux_mpjpeg_plugin.dll
  File libmux_ogg_plugin.dll
  File libmux_ps_plugin.dll
  File libmux_ts_plugin.dll
  File libmux_wav_plugin.dll
  SetOutPath $_OUTDIR\packetizer
  File libpacketizer_a52_plugin.dll
  File libpacketizer_av1_plugin.dll
  File libpacketizer_copy_plugin.dll
  File libpacketizer_dirac_plugin.dll
  File libpacketizer_dts_plugin.dll
  File libpacketizer_flac_plugin.dll
  File libpacketizer_h264_plugin.dll
  File libpacketizer_hevc_plugin.dll
  File libpacketizer_mlp_plugin.dll
  File libpacketizer_mpeg4audio_plugin.dll
  File libpacketizer_mpeg4video_plugin.dll
  File libpacketizer_mpegaudio_plugin.dll
  File libpacketizer_mpegvideo_plugin.dll
  File libpacketizer_vc1_plugin.dll
  SetOutPath $_OUTDIR\services_discovery
  File libmediadirs_plugin.dll
  File libmicrodns_plugin.dll
  File libpodcast_plugin.dll
  File libsap_plugin.dll
  File libupnp_plugin.dll
  File libwindrive_plugin.dll
  SetOutPath $_OUTDIR\spu
  File libaudiobargraph_v_plugin.dll
  File liblogo_plugin.dll
  File libmarq_plugin.dll
  File libmosaic_plugin.dll
  File libremoteosd_plugin.dll
  File librss_plugin.dll
  File libsubsdelay_plugin.dll
  SetOutPath $_OUTDIR\stream_extractor
  File libarchive_plugin.dll
  SetOutPath $_OUTDIR\stream_filter
  File libadf_plugin.dll
  File libaribcam_plugin.dll
  File libcache_block_plugin.dll
  File libcache_read_plugin.dll
  File libhds_plugin.dll
  File libinflate_plugin.dll
  File libprefetch_plugin.dll
  File librecord_plugin.dll
  File libskiptags_plugin.dll
  SetOutPath $_OUTDIR\stream_out
  File libstream_out_autodel_plugin.dll
  File libstream_out_bridge_plugin.dll
  File libstream_out_chromaprint_plugin.dll
  File libstream_out_chromecast_plugin.dll
  File libstream_out_cycle_plugin.dll
  File libstream_out_delay_plugin.dll
  File libstream_out_description_plugin.dll
  File libstream_out_display_plugin.dll
  File libstream_out_dummy_plugin.dll
  File libstream_out_duplicate_plugin.dll
  File libstream_out_es_plugin.dll
  File libstream_out_gather_plugin.dll
  File libstream_out_mosaic_bridge_plugin.dll
  File libstream_out_record_plugin.dll
  File libstream_out_rtp_plugin.dll
  File libstream_out_setid_plugin.dll
  File libstream_out_smem_plugin.dll
  File libstream_out_standard_plugin.dll
  File libstream_out_stats_plugin.dll
  File libstream_out_transcode_plugin.dll
  SetOutPath $_OUTDIR\text_renderer
  File libfreetype_plugin.dll
  File libsapi_plugin.dll
  File libtdummy_plugin.dll
  SetOutPath $_OUTDIR\video_chroma
  File libchain_plugin.dll
  File libgrey_yuv_plugin.dll
  File libi420_10_p010_plugin.dll
  File libi420_nv12_plugin.dll
  File libi420_rgb_mmx_plugin.dll
  File libi420_rgb_plugin.dll
  File libi420_rgb_sse2_plugin.dll
  File libi420_yuy2_mmx_plugin.dll
  File libi420_yuy2_plugin.dll
  File libi420_yuy2_sse2_plugin.dll
  File libi422_i420_plugin.dll
  File libi422_yuy2_mmx_plugin.dll
  File libi422_yuy2_plugin.dll
  File libi422_yuy2_sse2_plugin.dll
  File librv32_plugin.dll
  File libswscale_plugin.dll
  File libyuvp_plugin.dll
  File libyuy2_i420_plugin.dll
  File libyuy2_i422_plugin.dll
  SetOutPath $_OUTDIR\video_filter
  File libadjust_plugin.dll
  File libalphamask_plugin.dll
  File libanaglyph_plugin.dll
  File libantiflicker_plugin.dll
  File libball_plugin.dll
  File libblend_plugin.dll
  File libblendbench_plugin.dll
  File libbluescreen_plugin.dll
  File libcanvas_plugin.dll
  File libcolorthres_plugin.dll
  File libcroppadd_plugin.dll
  File libdeinterlace_plugin.dll
  File libedgedetection_plugin.dll
  File liberase_plugin.dll
  File libextract_plugin.dll
  File libfps_plugin.dll
  File libfreeze_plugin.dll
  File libgaussianblur_plugin.dll
  File libgradfun_plugin.dll
  File libgradient_plugin.dll
  File libgrain_plugin.dll
  File libhqdn3d_plugin.dll
  File libinvert_plugin.dll
  File libmagnify_plugin.dll
  File libmirror_plugin.dll
  File libmotionblur_plugin.dll
  File libmotiondetect_plugin.dll
  File liboldmovie_plugin.dll
  File libposterize_plugin.dll
  File libpostproc_plugin.dll
  File libpsychedelic_plugin.dll
  File libpuzzle_plugin.dll
  File libripple_plugin.dll
  File librotate_plugin.dll
  File libscale_plugin.dll
  File libscene_plugin.dll
  File libsepia_plugin.dll
  File libsharpen_plugin.dll
  File libtransform_plugin.dll
  File libvhs_plugin.dll
  File libwave_plugin.dll
  SetOutPath $_OUTDIR\video_output
  File libcaca_plugin.dll
  File libdirect3d11_plugin.dll
  File libdirect3d9_plugin.dll
  File libdirectdraw_plugin.dll
  File libdrawable_plugin.dll
  File libflaschen_plugin.dll
  File libgl_plugin.dll
  File libglinterop_dxva2_plugin.dll
  File libglwin32_plugin.dll
  File libvdummy_plugin.dll
  File libvmem_plugin.dll
  File libwgl_plugin.dll
  File libwingdi_plugin.dll
  File libwinhibit_plugin.dll
  File libyuv_plugin.dll
  SetOutPath $_OUTDIR\video_splitter
  File libclone_plugin.dll
  File libpanoramix_plugin.dll
  File libwall_plugin.dll
  SetOutPath $_OUTDIR\visualization
  File libglspectrum_plugin.dll
  File libgoom_plugin.dll
  File libprojectm_plugin.dll
  File libvisual_plugin.dll
  SetOutPath $_OUTDIR
  SetOutPath $INSTDIR
  Push plugins
  Call func_616
  SetOutPath $INSTDIR\locale
  StrCpy $_OUTDIR $OUTDIR
  SetOutPath $_OUTDIR\ach
  SetOutPath $_OUTDIR\ach\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\af
  SetOutPath $_OUTDIR\af\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\am
  SetOutPath $_OUTDIR\am\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\am_ET
  SetOutPath $_OUTDIR\am_ET\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\an
  SetOutPath $_OUTDIR\an\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\ar
  SetOutPath $_OUTDIR\ar\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\as
  SetOutPath $_OUTDIR\as\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\ast
  SetOutPath $_OUTDIR\ast\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\be
  SetOutPath $_OUTDIR\be\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\bg
  SetOutPath $_OUTDIR\bg\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\bn
  SetOutPath $_OUTDIR\bn\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\bn_IN
  SetOutPath $_OUTDIR\bn_IN\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\br
  SetOutPath $_OUTDIR\br\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\brx
  SetOutPath $_OUTDIR\brx\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\bs
  SetOutPath $_OUTDIR\bs\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\ca
  SetOutPath $_OUTDIR\ca\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\ca@valencia
  SetOutPath $_OUTDIR\ca@valencia\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\cgg
  SetOutPath $_OUTDIR\cgg\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\co
  SetOutPath $_OUTDIR\co\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\cs
  SetOutPath $_OUTDIR\cs\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\cy
  SetOutPath $_OUTDIR\cy\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\da
  SetOutPath $_OUTDIR\da\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\de
  SetOutPath $_OUTDIR\de\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\el
  SetOutPath $_OUTDIR\el\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\en_GB
  SetOutPath $_OUTDIR\en_GB\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\eo
  SetOutPath $_OUTDIR\eo\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\es
  SetOutPath $_OUTDIR\es\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\es_MX
  SetOutPath $_OUTDIR\es_MX\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\et
  SetOutPath $_OUTDIR\et\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\eu
  SetOutPath $_OUTDIR\eu\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\fa
  SetOutPath $_OUTDIR\fa\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\ff
  SetOutPath $_OUTDIR\ff\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\fi
  SetOutPath $_OUTDIR\fi\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\fr
  SetOutPath $_OUTDIR\fr\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\fur
  SetOutPath $_OUTDIR\fur\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\fy
  SetOutPath $_OUTDIR\fy\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\ga
  SetOutPath $_OUTDIR\ga\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\gd
  SetOutPath $_OUTDIR\gd\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\gl
  SetOutPath $_OUTDIR\gl\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\gu
  SetOutPath $_OUTDIR\gu\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\he
  SetOutPath $_OUTDIR\he\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\hi
  SetOutPath $_OUTDIR\hi\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\hr
  SetOutPath $_OUTDIR\hr\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\hu
  SetOutPath $_OUTDIR\hu\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\hy
  SetOutPath $_OUTDIR\hy\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\id
  SetOutPath $_OUTDIR\id\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\ie
  SetOutPath $_OUTDIR\ie\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\is
  SetOutPath $_OUTDIR\is\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\it
  SetOutPath $_OUTDIR\it\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\ja
  SetOutPath $_OUTDIR\ja\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\ka
  SetOutPath $_OUTDIR\ka\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\kab
  SetOutPath $_OUTDIR\kab\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\kk
  SetOutPath $_OUTDIR\kk\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\km
  SetOutPath $_OUTDIR\km\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\kn
  SetOutPath $_OUTDIR\kn\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\ko
  SetOutPath $_OUTDIR\ko\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\ks_IN
  SetOutPath $_OUTDIR\ks_IN\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\ku_IQ
  SetOutPath $_OUTDIR\ku_IQ\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\ky
  SetOutPath $_OUTDIR\ky\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\lg
  SetOutPath $_OUTDIR\lg\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\lo
  SetOutPath $_OUTDIR\lo\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\lt
  SetOutPath $_OUTDIR\lt\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\lv
  SetOutPath $_OUTDIR\lv\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\mai
  SetOutPath $_OUTDIR\mai\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\mk
  SetOutPath $_OUTDIR\mk\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\ml
  SetOutPath $_OUTDIR\ml\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\mn
  SetOutPath $_OUTDIR\mn\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\mr
  SetOutPath $_OUTDIR\mr\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\ms
  SetOutPath $_OUTDIR\ms\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\my
  SetOutPath $_OUTDIR\my\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\nb
  SetOutPath $_OUTDIR\nb\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\ne
  SetOutPath $_OUTDIR\ne\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\nl
  SetOutPath $_OUTDIR\nl\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\nn
  SetOutPath $_OUTDIR\nn\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\oc
  SetOutPath $_OUTDIR\oc\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\or_IN
  SetOutPath $_OUTDIR\or_IN\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\pa
  SetOutPath $_OUTDIR\pa\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\pl
  SetOutPath $_OUTDIR\pl\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\ps
  SetOutPath $_OUTDIR\ps\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\pt_BR
  SetOutPath $_OUTDIR\pt_BR\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\pt_PT
  SetOutPath $_OUTDIR\pt_PT\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\ro
  SetOutPath $_OUTDIR\ro\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\ru
  SetOutPath $_OUTDIR\ru\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\si
  SetOutPath $_OUTDIR\si\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\sk
  SetOutPath $_OUTDIR\sk\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\sl
  SetOutPath $_OUTDIR\sl\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\sm
  SetOutPath $_OUTDIR\sm\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\sq
  SetOutPath $_OUTDIR\sq\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\sr
  SetOutPath $_OUTDIR\sr\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\sv
  SetOutPath $_OUTDIR\sv\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\sw
  SetOutPath $_OUTDIR\sw\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\ta
  SetOutPath $_OUTDIR\ta\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\te
  SetOutPath $_OUTDIR\te\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\th
  SetOutPath $_OUTDIR\th\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\tr
  SetOutPath $_OUTDIR\tr\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\tt
  SetOutPath $_OUTDIR\tt\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\ug
  SetOutPath $_OUTDIR\ug\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\uk
  SetOutPath $_OUTDIR\uk\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\uz
  SetOutPath $_OUTDIR\uz\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\vi
  SetOutPath $_OUTDIR\vi\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\wa
  SetOutPath $_OUTDIR\wa\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\zh_CN
  SetOutPath $_OUTDIR\zh_CN\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\zh_TW
  SetOutPath $_OUTDIR\zh_TW\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR\zu
  SetOutPath $_OUTDIR\zu\LC_MESSAGES
  File vlc.mo
  SetOutPath $_OUTDIR
  SetOutPath $INSTDIR
  Push locale
  Call func_616
  SetOutPath $INSTDIR\hrtfs
  StrCpy $_OUTDIR $OUTDIR
  File dodeca_and_7channel_3DSL_HRTF.sofa
  SetOutPath $_OUTDIR
  SetOutPath $INSTDIR
  Push hrtfs
  Call func_616
  SetOutPath $INSTDIR\skins
  StrCpy $_OUTDIR $OUTDIR
  File default.vlt
  File skin.catalog
  File skin.dtd
  File winamp2.xml
  SetOutPath $_OUTDIR\fonts
  File FreeSans.ttf
  File FreeSansBold.ttf
  SetOutPath $_OUTDIR
  SetOutPath $INSTDIR
  Push skins
  Call func_616
  SetOutPath $INSTDIR\lua
  StrCpy $_OUTDIR $OUTDIR
  SetOutPath $_OUTDIR\extensions
  File VLSub.luac
  SetOutPath $_OUTDIR\http
  File custom.lua
  File favicon.ico
  File index.html
  File mobile.html
  File mobile_browse.html
  File mobile_equalizer.html
  File mobile_view.html
  File view.html
  File vlm.html
  File vlm_export.html
  SetOutPath $_OUTDIR\http\css
  File main.css
  File mobile.css
  SetOutPath $_OUTDIR\http\css\ui-lightness
  File jquery-ui-1.8.13.custom.css
  SetOutPath $_OUTDIR\http\css\ui-lightness\images
  File ui-bg_diagonals-thick_18_b81900_40x40.png
  File ui-bg_diagonals-thick_20_666666_40x40.png
  File ui-bg_flat_10_000000_40x100.png
  File ui-bg_glass_100_f6f6f6_1x400.png
  File ui-bg_glass_100_fdf5ce_1x400.png
  File ui-bg_glass_65_ffffff_1x400.png
  File ui-bg_gloss-wave_35_f6a828_500x100.png
  File ui-bg_highlight-soft_100_eeeeee_1x100.png
  File ui-bg_highlight-soft_75_ffe45c_1x100.png
  File ui-icons_222222_256x240.png
  File ui-icons_228ef1_256x240.png
  File ui-icons_ef8c08_256x240.png
  File ui-icons_ffd27a_256x240.png
  File ui-icons_ffffff_256x240.png
  SetOutPath $_OUTDIR\http\dialogs
  File batch_window.html
  File browse_window.html
  File create_stream.html
  File equalizer_window.html
  File error_window.html
  File mosaic_window.html
  File offset_window.html
  File stream_config_window.html
  File stream_window.html
  SetOutPath $_OUTDIR\http\images
  File Audio-48.png
  File Back-48.png
  File Folder-48.png
  File Other-48.png
  File Video-48.png
  File buttons.png
  File speaker-32.png
  File vlc-48.png
  File vlc16x16.png
  SetOutPath $_OUTDIR\http\js
  File common.js
  File controllers.js
  File jquery.jstree.js
  File ui.js
  SetOutPath $_OUTDIR\http\requests
  File README.txt
  File browse.json
  File browse.xml
  File playlist.json
  File playlist.xml
  File playlist_jstree.xml
  File status.json
  File status.xml
  File vlm.xml
  File vlm_cmd.xml
  SetOutPath $_OUTDIR\intf
  File cli.luac
  File dummy.luac
  File dumpmeta.luac
  File http.luac
  File luac.luac
  File telnet.luac
  SetOutPath $_OUTDIR\intf\modules
  File host.luac
  File httprequests.luac
  SetOutPath $_OUTDIR\meta
  SetOutPath $_OUTDIR\meta\art
  File 00_musicbrainz.luac
  File 01_googleimage.luac
  File 02_frenchtv.luac
  File 03_lastfm.luac
  SetOutPath $_OUTDIR\meta\reader
  File filename.luac
  SetOutPath $_OUTDIR\modules
  File common.luac
  File dkjson.luac
  File sandbox.luac
  File simplexml.luac
  SetOutPath $_OUTDIR\playlist
  File anevia_streams.luac
  File anevia_xml.luac
  File appletrailers.luac
  File bbc_co_uk.luac
  File cue.luac
  File dailymotion.luac
  File jamendo.luac
  File koreus.luac
  File liveleak.luac
  File newgrounds.luac
  File rockbox_fm_presets.luac
  File soundcloud.luac
  File twitch.luac
  File vimeo.luac
  File vocaroo.luac
  SetOutPath $_OUTDIR\sd
  File icecast.luac
  File jamendo.luac
  SetOutPath $_OUTDIR
  SetOutPath $INSTDIR
  Push lua
  Call func_616
  nsExec::ExecToStack "$\"$INSTDIR\vlc-cache-gen.exe$\" $INSTDIR\plugins"
    ; Call Initialize_____Plugins
    ; SetOverwrite off
    ; File $PLUGINSDIR\nsExec.dll
    ; SetDetailsPrint lastused
    ; Push "$\"$INSTDIR\vlc-cache-gen.exe$\" $INSTDIR\plugins"
    ; CallInstDLL $PLUGINSDIR\nsExec.dll ExecToStack
  FindFirst $0 $1 $INSTDIR\plugins\*.dat
  FileWrite $_6_ plugins\$1$\r$\n
  FindClose $0
  WriteINIStr "$INSTDIR\VideoLAN Website.url" InternetShortcut URL https://www.videolan.org/
  FileWrite $_6_ "VideoLAN Website.url$\r$\n"
  WriteINIStr $INSTDIR\Documentation.url InternetShortcut URL https://www.videolan.org//doc/
  FileWrite $_6_ Documentation.url$\r$\n
  WriteINIStr $INSTDIR\New_Skins.url InternetShortcut URL https://www.videolan.org//vlc/skins.php
  FileWrite $_6_ New_Skins.url$\r$\n
  FileClose $_6_
  SetFileAttributes $INSTDIR\uninstall.log HIDDEN
  WriteRegStr HKCR Applications\vlc.exe "" ""
  WriteRegStr HKCR Applications\vlc.exe FriendlyAppName "VLC media player"
  WriteRegStr HKCR Applications\vlc.exe\shell\Open "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR Applications\vlc.exe\shell\Open\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file $\"%1$\""
  Push $R0
  StrCpy $R0 .3ga
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .669
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .a52
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .aac
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .ac3
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .adt
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .adts
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .aif
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .aifc
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .aiff
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .au
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .amr
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .aob
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .ape
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .caf
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .cda
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .dts
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .flac
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .it
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .m4a
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .m4p
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .mka
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .mlp
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .mod
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .mp1
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .mp2
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .mp3
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .mpc
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .mpga
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .oga
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .oma
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .opus
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .qcp
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .ra
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .rmi
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .snd
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .s3m
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .spx
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .tta
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .voc
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .vqf
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .w64
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .wav
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .wma
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .wv
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .xa
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .xm
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .3g2
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .3gp
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .3gp2
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .3gpp
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .amv
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .asf
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .avi
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .bik
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .dav
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .divx
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .drc
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .dv
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .dvr-ms
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .evo
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .f4v
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .flv
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .gvi
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .gxf
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .m1v
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .m2t
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .m2v
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .m2ts
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .m4v
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .mkv
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .mov
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .mp2v
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .mp4
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .mp4v
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .mpa
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .mpe
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .mpeg
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .mpeg1
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .mpeg2
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .mpeg4
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .mpg
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .mpv2
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .mts
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .mtv
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .mxf
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .nsv
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .nuv
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .ogg
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .ogm
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .ogx
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .ogv
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .rec
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .rm
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .rmvb
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .rpl
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .thp
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .tod
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .tp
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .ts
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .tts
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .vob
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .vro
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .webm
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .wmv
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .wtv
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .xesc
  Push $R1
  StrCpy $R1 Video
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .asx
  Push $R1
  StrCpy $R1 Other
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .b4s
  Push $R1
  StrCpy $R1 Other
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .cue
  Push $R1
  StrCpy $R1 Other
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .ifo
  Push $R1
  StrCpy $R1 Other
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .m3u
  Push $R1
  StrCpy $R1 Other
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .m3u8
  Push $R1
  StrCpy $R1 Other
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .pls
  Push $R1
  StrCpy $R1 Other
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .ram
  Push $R1
  StrCpy $R1 Other
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .sdp
  Push $R1
  StrCpy $R1 Other
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .vlc
  Push $R1
  StrCpy $R1 Other
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .wvx
  Push $R1
  StrCpy $R1 Other
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .xspf
  Push $R1
  StrCpy $R1 Other
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .wpl
  Push $R1
  StrCpy $R1 Other
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .zpl
  Push $R1
  StrCpy $R1 Other
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .iso
  Push $R1
  StrCpy $R1 Other
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .mid
  Push $R1
  StrCpy $R1 Audio
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .zip
  Push $R1
  StrCpy $R1 Other
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .rar
  Push $R1
  StrCpy $R1 Other
  Call func_559
  Pop $R1
  Pop $R0
  Push $R0
  StrCpy $R0 .vlt
  Call func_606
  Pop $R0
  Push $R0
  StrCpy $R0 .wsz
  Call func_606
  Pop $R0
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\App Paths\vlc.exe" "" $INSTDIR\vlc.exe
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\App Paths\vlc.exe" Path $INSTDIR
  Call :label_577
  IntOp $_62_ $_69_ & 0x7FFFFFFF
  IntCmp $_62_ 0x06000000 0 label_2766
  WriteRegStr HKLM Software\RegisteredApplications VLC Software\Clients\Media\VLC\Capabilities
  WriteRegStr HKLM Software\Clients\Media\VLC\Capabilities ApplicationName "VLC media player"
  WriteRegStr HKLM Software\Clients\Media\VLC\Capabilities ApplicationDescription "VLC - The video swiss knife"
  WriteRegStr HKLM Software\Clients\Media\VLC "" "VLC media player"
  WriteRegStr HKLM Software\Clients\Media\VLC\InstallInfo HideIconsCommand "$\"$INSTDIR\spad-setup.exe$\" /HideIcons /S"
  WriteRegStr HKLM Software\Clients\Media\VLC\InstallInfo ShowIconsCommand "$\"$INSTDIR\spad-setup.exe$\" /ShowIcons /S"
  WriteRegStr HKLM Software\Clients\Media\VLC\InstallInfo ReinstallCommand "$\"$INSTDIR\spad-setup.exe$\" /Reinstall /S"
  WriteRegDWORD HKLM Software\Clients\Media\VLC\InstallInfo IconsVisible 0x001
label_2766:
SectionEnd


Function func_2767
  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC01
  IfErrors 0 label_2778
  Push $R0
  Push $R1
  StrCpy $R1 0
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_2778:
  StrCpy $0 2824
  Goto $0
FunctionEnd


Function func_2781
  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC01
  IfErrors 0 label_2785
  Goto label_2786
label_2785:
  StrCmp $0 0 label_2795
label_2786:
  Push $0
  Push $1
  StrCpy $1 0
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_2803
label_2795:
  Push $0
  Push $1
  StrCpy $1 0
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_2803:
  StrCpy $0 2838
  Goto $0
FunctionEnd


Function func_2806
  SectionGetFlags 0 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_2811 label_2811
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC01 1
  Goto label_2812
label_2811:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC01 0
label_2812:
  StrCpy $0 2863
  Goto $0
FunctionEnd


Section $(LSTR_75) ; Section_1    ;  "Start Menu Shortcut"
  SectionIn 1 2 3
  CreateDirectory $SMPROGRAMS\VideoLAN
  CreateShortCut "$SMPROGRAMS\VideoLAN\VLC media player.lnk" $INSTDIR\vlc.exe
  CreateShortCut "$SMPROGRAMS\VideoLAN\VLC media player skinned.lnk" $INSTDIR\vlc.exe -Iskins
  CreateShortCut $SMPROGRAMS\VideoLAN\Documentation.lnk $INSTDIR\Documentation.url
  CreateShortCut "$SMPROGRAMS\VideoLAN\Release Notes.lnk" $INSTDIR\NEWS.txt
  CreateShortCut "$SMPROGRAMS\VideoLAN\VideoLAN Website.lnk" "$INSTDIR\VideoLAN Website.url"
  CreateShortCut "$SMPROGRAMS\VideoLAN\VLC media player - reset preferences and cache files.lnk" $INSTDIR\vlc.exe "--reset-config --reset-plugins-cache vlc://quit"
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC02a
  IfErrors 0 label_2834
  Push $R0
  Push $R1
  StrCpy $R1 1
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_2834:
  StrCpy $0 2874
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC02a
  IfErrors 0 label_2841
  Goto label_2842
label_2841:
  StrCmp $0 0 label_2851
label_2842:
  Push $0
  Push $1
  StrCpy $1 1
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_2859
label_2851:
  Push $0
  Push $1
  StrCpy $1 1
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_2859:
  StrCpy $0 2888
  Goto $0
  Return

  SectionGetFlags 1 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_2867 label_2867
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC02a 1
  Goto label_2868
label_2867:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC02a 0
label_2868:
  StrCpy $0 2913
  Goto $0
  Return

Section $(LSTR_76) ; Section_2    ;  "Desktop Shortcut"
  SectionIn 1 2 3
  CreateShortCut "$DESKTOP\VLC media player.lnk" $INSTDIR\vlc.exe
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC02b
  IfErrors 0 label_2884
  Push $R0
  Push $R1
  StrCpy $R1 2
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_2884:
  StrCpy $0 2938
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC02b
  IfErrors 0 label_2891
  Goto label_2892
label_2891:
  StrCmp $0 0 label_2901
label_2892:
  Push $0
  Push $1
  StrCpy $1 2
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_2909
label_2901:
  Push $0
  Push $1
  StrCpy $1 2
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_2909:
  StrCpy $0 2952
  Goto $0
  Return

  SectionGetFlags 2 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_2917 label_2917
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC02b 1
  Goto label_2918
label_2917:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC02b 0
label_2918:
  StrCpy $0 2977
  Goto $0
  Return

SectionGroup /e !$(LSTR_77)    ; Section 3    ;  "Web plugins"

Section $(LSTR_78) ; Section_4    ;  "ActiveX plugin"
  ; AddSize 1354
  SectionIn 1 3
  SetOutPath $INSTDIR
  FileOpen $_6_ $INSTDIR\uninstall.log a
  FileSeek $_6_ 0 END
  SetOverwrite ifdiff
  File axvlc.dll
  FindFirst $0 $1 $INSTDIR\axvlc.dll
  StrCmp $0 "" label_2932
label_2928:
  StrCmp $1 "" label_2932
  FileWrite $_6_ $1$\r$\n
  FindNext $0 $1
  Goto label_2928
label_2932:
  FindClose $0
  FileClose $_6_
  SetFileAttributes $INSTDIR\uninstall.log HIDDEN
  ExecWait "$\"$SYSDIR\regsvr32.exe$\" /s $\"$INSTDIR\axvlc.dll$\""
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC04
  IfErrors 0 label_2948
  Push $R0
  Push $R1
  StrCpy $R1 4
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_2948:
  StrCpy $0 3064
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC04
  IfErrors 0 label_2955
  Goto label_2956
label_2955:
  StrCmp $0 0 label_2965
label_2956:
  Push $0
  Push $1
  StrCpy $1 4
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_2973
label_2965:
  Push $0
  Push $1
  StrCpy $1 4
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_2973:
  StrCpy $0 3078
  Goto $0
  Return

  SectionGetFlags 4 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_2981 label_2981
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC04 1
  Goto label_2982
label_2981:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC04 0
label_2982:
  StrCpy $0 3103
  Goto $0
  Return

SectionGroupEnd

Section $(LSTR_79) ; Section_6    ;  "Discs Playback"
  SectionIn 1 2 3
  WriteRegStr HKCR AudioCD\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR AudioCD\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file cdda:///%1"
  WriteRegStr HKCR DVD\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR DVD\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file dvd:///%1"
  WriteRegStr HKLM Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\EventHandlers\PlayDVDMovieOnArrival VLCPlayDVDMovieOnArrival ""
  WriteRegStr HKLM Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlayDVDMovieOnArrival Action $(LSTR_80)    ;  "Play DVD movie"
  WriteRegStr HKLM Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlayDVDMovieOnArrival DefaultIcon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKLM Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlayDVDMovieOnArrival InvokeProgID VLC.DVDMovie
  WriteRegStr HKLM Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlayDVDMovieOnArrival InvokeVerb Open
  WriteRegStr HKLM Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlayDVDMovieOnArrival Provider "VideoLAN VLC media player"
  WriteRegStr HKLM Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\EventHandlers\PlayCDAudioOnArrival VLCPlayCDAudioOnArrival ""
  WriteRegStr HKLM Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlayCDAudioOnArrival Action $(LSTR_81)    ;  "Play audio CD"
  WriteRegStr HKLM Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlayCDAudioOnArrival DefaultIcon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKLM Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlayCDAudioOnArrival InvokeProgID VLC.CDAudio
  WriteRegStr HKLM Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlayCDAudioOnArrival InvokeVerb Open
  WriteRegStr HKLM Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlayCDAudioOnArrival Provider "VideoLAN VLC media player"
  WriteRegStr HKLM SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\EventHandlers\PlayVideoCDMovieOnArrival VLCPlayVCDMovieOnArrival ""
  WriteRegStr HKLM SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlayVCDMovieOnArrival Action $(LSTR_82)    ;  "Play VCD movie"
  WriteRegStr HKLM SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlayVCDMovieOnArrival DefaultIcon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKLM SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlayVCDMovieOnArrival InvokeProgID VLC.VCDMovie
  WriteRegStr HKLM SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlayVCDMovieOnArrival InvokeVerb Open
  WriteRegStr HKLM SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlayVCDMovieOnArrival Provider "VideoLAN VLC media player"
  WriteRegStr HKLM SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\EventHandlers\PlaySuperVideoCDMovieOnArrival VLCPlaySVCDMovieOnArrival ""
  WriteRegStr HKLM SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlaySVCDMovieOnArrival Action $(LSTR_83)    ;  "Play SVCD movie"
  WriteRegStr HKLM SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlaySVCDMovieOnArrival DefaultIcon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKLM SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlaySVCDMovieOnArrival InvokeProgID VLC.SVCDMovie
  WriteRegStr HKLM SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlaySVCDMovieOnArrival InvokeVerb Open
  WriteRegStr HKLM SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlaySVCDMovieOnArrival Provider "VideoLAN VLC media player"
  WriteRegStr HKLM SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\EventHandlers\PlayDVDAudioOnArrival VLCPlayDVDAudioOnArrival ""
  WriteRegStr HKLM SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlayDVDAudioOnArrival Action $(LSTR_84)    ;  "Play audio DVD"
  WriteRegStr HKLM SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlayDVDAudioOnArrival DefaultIcon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKLM SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlayDVDAudioOnArrival InvokeProgID VLC.OPENFolder
  WriteRegStr HKLM SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlayDVDAudioOnArrival InvokeVerb Open
  WriteRegStr HKLM SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlayDVDAudioOnArrival Provider "VideoLAN VLC media player"
  WriteRegStr HKLM SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\EventHandlers\PlayVideoFilesOnArrival VLCPlayVideoFilesOnArrival ""
  WriteRegStr HKLM SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlayVideoFilesOnArrival Action $(LSTR_85)    ;  "Play video files"
  WriteRegStr HKLM SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlayVideoFilesOnArrival DefaultIcon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKLM SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlayVideoFilesOnArrival InvokeProgID VLC.OPENFolder
  WriteRegStr HKLM SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlayVideoFilesOnArrival InvokeVerb Open
  WriteRegStr HKLM SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlayVideoFilesOnArrival Provider "VideoLAN VLC media player"
  WriteRegStr HKLM SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\EventHandlers\PlayMusicFilesOnArrival VLCPlayMusicFilesOnArrival ""
  WriteRegStr HKLM SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlayMusicFilesOnArrival Action $(LSTR_86)    ;  "Play audio files"
  WriteRegStr HKLM SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlayMusicFilesOnArrival DefaultIcon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKLM SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlayMusicFilesOnArrival InvokeProgID VLC.OPENFolder
  WriteRegStr HKLM SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlayMusicFilesOnArrival InvokeVerb Open
  WriteRegStr HKLM SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlayMusicFilesOnArrival Provider "VideoLAN VLC media player"
  WriteRegStr HKLM Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\EventHandlers\PlayBlurayOnArrival VLCPlayBlurayOnArrival ""
  WriteRegStr HKLM Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlayBlurayOnArrival Action $(LSTR_87)    ;  "Play Blu-ray"
  WriteRegStr HKLM Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlayBlurayOnArrival DefaultIcon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKLM Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlayBlurayOnArrival InvokeProgID VLC.Bluray
  WriteRegStr HKLM Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlayBlurayOnArrival InvokeVerb Open
  WriteRegStr HKLM Software\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\VLCPlayBlurayOnArrival Provider "VideoLAN VLC media player"
  WriteRegStr HKCR VLC.DVDMovie "" "VLC DVD Movie"
  WriteRegStr HKCR VLC.DVDMovie\shell "" Open
  WriteRegStr HKCR VLC.DVDMovie\shell\Open\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file dvd:///%1"
  WriteRegStr HKCR VLC.DVDMovie\DefaultIcon "" $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.CDAudio "" "VLC CD Audio"
  WriteRegStr HKCR VLC.CDAudio\shell "" Open
  WriteRegStr HKCR VLC.CDAudio\shell\Open\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file cdda:///%1"
  WriteRegStr HKCR VLC.CDAudio\DefaultIcon "" $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.VCDMovie "" "VLC VCD Movie"
  WriteRegStr HKCR VLC.VCDMovie\shell "" Open
  WriteRegStr HKCR VLC.VCDMovie\shell\Open\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file vcd:///%1"
  WriteRegStr HKCR VLC.VCDMovie\DefaultIcon "" $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.SVCDMovie "" "VLC SVCD Movie"
  WriteRegStr HKCR VLC.SVCDMovie\shell "" Open
  WriteRegStr HKCR VLC.SVCDMovie\shell\Open\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file vcd:///%1"
  WriteRegStr HKCR VLC.SVCDMovie\DefaultIcon "" $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.OPENFolder "" "VLC Play content"
  WriteRegStr HKCR VLC.OPENFolder\shell "" Open
  WriteRegStr HKCR VLC.OPENFolder\shell\Open\command "" "$\"$INSTDIR\vlc.exe$\" %1"
  WriteRegStr HKCR VLC.OPENFolder\DefaultIcon "" $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.Bluray "" "VLC Bluray"
  WriteRegStr HKCR VLC.Bluray\shell "" Open
  WriteRegStr HKCR VLC.Bluray\shell\Open\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file bluray:///%1"
  WriteRegStr HKCR VLC.Bluray\DefaultIcon "" $\"$INSTDIR\vlc.exe$\",0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC05
  IfErrors 0 label_3074
  Push $R0
  Push $R1
  StrCpy $R1 6
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_3074:
  StrCpy $0 3119
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC05
  IfErrors 0 label_3081
  Goto label_3082
label_3081:
  StrCmp $0 0 label_3091
label_3082:
  Push $0
  Push $1
  StrCpy $1 6
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_3099
label_3091:
  Push $0
  Push $1
  StrCpy $1 6
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_3099:
  StrCpy $0 3133
  Goto $0
  Return

  SectionGetFlags 6 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_3107 label_3107
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC05 1
  Goto label_3108
label_3107:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC05 0
label_3108:
  StrCpy $0 3158
  Goto $0
  Return

SectionGroup /e !$(LSTR_88)    ; Section 7    ;  "File type associations"

SectionGroup $(LSTR_89)    ; Section 8    ;  "Audio Files"

Section .3ga ; Section_9
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .3ga
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.3ga
  IfErrors 0 label_3129
  Push $R0
  Push $R1
  StrCpy $R1 9
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_3129:
  StrCpy $0 3172
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.3ga
  IfErrors 0 label_3136
  Goto label_3137
label_3136:
  StrCmp $0 0 label_3146
label_3137:
  Push $0
  Push $1
  StrCpy $1 9
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_3154
label_3146:
  Push $0
  Push $1
  StrCpy $1 9
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_3154:
  StrCpy $0 3186
  Goto $0
  Return

  SectionGetFlags 9 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_3162 label_3162
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.3ga 1
  Goto label_3163
label_3162:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.3ga 0
label_3163:
  StrCpy $0 3211
  Goto $0
  Return

Section .669 ; Section_10
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .669
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.669
  IfErrors 0 label_3182
  Push $R0
  Push $R1
  StrCpy $R1 10
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_3182:
  StrCpy $0 3225
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.669
  IfErrors 0 label_3189
  Goto label_3190
label_3189:
  StrCmp $0 0 label_3199
label_3190:
  Push $0
  Push $1
  StrCpy $1 10
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_3207
label_3199:
  Push $0
  Push $1
  StrCpy $1 10
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_3207:
  StrCpy $0 3239
  Goto $0
  Return

  SectionGetFlags 10 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_3215 label_3215
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.669 1
  Goto label_3216
label_3215:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.669 0
label_3216:
  StrCpy $0 3264
  Goto $0
  Return

Section .a52 ; Section_11
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .a52
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.a52
  IfErrors 0 label_3235
  Push $R0
  Push $R1
  StrCpy $R1 11
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_3235:
  StrCpy $0 3278
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.a52
  IfErrors 0 label_3242
  Goto label_3243
label_3242:
  StrCmp $0 0 label_3252
label_3243:
  Push $0
  Push $1
  StrCpy $1 11
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_3260
label_3252:
  Push $0
  Push $1
  StrCpy $1 11
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_3260:
  StrCpy $0 3292
  Goto $0
  Return

  SectionGetFlags 11 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_3268 label_3268
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.a52 1
  Goto label_3269
label_3268:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.a52 0
label_3269:
  StrCpy $0 3317
  Goto $0
  Return

Section .aac ; Section_12
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .aac
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.aac
  IfErrors 0 label_3288
  Push $R0
  Push $R1
  StrCpy $R1 12
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_3288:
  StrCpy $0 3331
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.aac
  IfErrors 0 label_3295
  Goto label_3296
label_3295:
  StrCmp $0 0 label_3305
label_3296:
  Push $0
  Push $1
  StrCpy $1 12
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_3313
label_3305:
  Push $0
  Push $1
  StrCpy $1 12
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_3313:
  StrCpy $0 3345
  Goto $0
  Return

  SectionGetFlags 12 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_3321 label_3321
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.aac 1
  Goto label_3322
label_3321:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.aac 0
label_3322:
  StrCpy $0 3370
  Goto $0
  Return

Section .ac3 ; Section_13
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .ac3
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.ac3
  IfErrors 0 label_3341
  Push $R0
  Push $R1
  StrCpy $R1 13
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_3341:
  StrCpy $0 3384
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.ac3
  IfErrors 0 label_3348
  Goto label_3349
label_3348:
  StrCmp $0 0 label_3358
label_3349:
  Push $0
  Push $1
  StrCpy $1 13
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_3366
label_3358:
  Push $0
  Push $1
  StrCpy $1 13
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_3366:
  StrCpy $0 3398
  Goto $0
  Return

  SectionGetFlags 13 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_3374 label_3374
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.ac3 1
  Goto label_3375
label_3374:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.ac3 0
label_3375:
  StrCpy $0 3423
  Goto $0
  Return

Section .adt ; Section_14
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .adt
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.adt
  IfErrors 0 label_3394
  Push $R0
  Push $R1
  StrCpy $R1 14
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_3394:
  StrCpy $0 3437
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.adt
  IfErrors 0 label_3401
  Goto label_3402
label_3401:
  StrCmp $0 0 label_3411
label_3402:
  Push $0
  Push $1
  StrCpy $1 14
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_3419
label_3411:
  Push $0
  Push $1
  StrCpy $1 14
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_3419:
  StrCpy $0 3451
  Goto $0
  Return

  SectionGetFlags 14 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_3427 label_3427
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.adt 1
  Goto label_3428
label_3427:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.adt 0
label_3428:
  StrCpy $0 3476
  Goto $0
  Return

Section .adts ; Section_15
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .adts
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.adts
  IfErrors 0 label_3447
  Push $R0
  Push $R1
  StrCpy $R1 15
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_3447:
  StrCpy $0 3490
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.adts
  IfErrors 0 label_3454
  Goto label_3455
label_3454:
  StrCmp $0 0 label_3464
label_3455:
  Push $0
  Push $1
  StrCpy $1 15
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_3472
label_3464:
  Push $0
  Push $1
  StrCpy $1 15
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_3472:
  StrCpy $0 3504
  Goto $0
  Return

  SectionGetFlags 15 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_3480 label_3480
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.adts 1
  Goto label_3481
label_3480:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.adts 0
label_3481:
  StrCpy $0 3529
  Goto $0
  Return

Section .aif ; Section_16
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .aif
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.aif
  IfErrors 0 label_3500
  Push $R0
  Push $R1
  StrCpy $R1 16
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_3500:
  StrCpy $0 3543
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.aif
  IfErrors 0 label_3507
  Goto label_3508
label_3507:
  StrCmp $0 0 label_3517
label_3508:
  Push $0
  Push $1
  StrCpy $1 16
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_3525
label_3517:
  Push $0
  Push $1
  StrCpy $1 16
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_3525:
  StrCpy $0 3557
  Goto $0
  Return

  SectionGetFlags 16 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_3533 label_3533
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.aif 1
  Goto label_3534
label_3533:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.aif 0
label_3534:
  StrCpy $0 3582
  Goto $0
  Return

Section .aifc ; Section_17
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .aifc
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.aifc
  IfErrors 0 label_3553
  Push $R0
  Push $R1
  StrCpy $R1 17
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_3553:
  StrCpy $0 3596
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.aifc
  IfErrors 0 label_3560
  Goto label_3561
label_3560:
  StrCmp $0 0 label_3570
label_3561:
  Push $0
  Push $1
  StrCpy $1 17
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_3578
label_3570:
  Push $0
  Push $1
  StrCpy $1 17
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_3578:
  StrCpy $0 3610
  Goto $0
  Return

  SectionGetFlags 17 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_3586 label_3586
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.aifc 1
  Goto label_3587
label_3586:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.aifc 0
label_3587:
  StrCpy $0 3635
  Goto $0
  Return

Section .aiff ; Section_18
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .aiff
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.aiff
  IfErrors 0 label_3606
  Push $R0
  Push $R1
  StrCpy $R1 18
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_3606:
  StrCpy $0 3649
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.aiff
  IfErrors 0 label_3613
  Goto label_3614
label_3613:
  StrCmp $0 0 label_3623
label_3614:
  Push $0
  Push $1
  StrCpy $1 18
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_3631
label_3623:
  Push $0
  Push $1
  StrCpy $1 18
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_3631:
  StrCpy $0 3663
  Goto $0
  Return

  SectionGetFlags 18 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_3639 label_3639
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.aiff 1
  Goto label_3640
label_3639:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.aiff 0
label_3640:
  StrCpy $0 3688
  Goto $0
  Return

Section .au ; Section_19
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .au
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.au
  IfErrors 0 label_3659
  Push $R0
  Push $R1
  StrCpy $R1 19
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_3659:
  StrCpy $0 3702
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.au
  IfErrors 0 label_3666
  Goto label_3667
label_3666:
  StrCmp $0 0 label_3676
label_3667:
  Push $0
  Push $1
  StrCpy $1 19
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_3684
label_3676:
  Push $0
  Push $1
  StrCpy $1 19
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_3684:
  StrCpy $0 3716
  Goto $0
  Return

  SectionGetFlags 19 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_3692 label_3692
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.au 1
  Goto label_3693
label_3692:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.au 0
label_3693:
  StrCpy $0 3741
  Goto $0
  Return

Section .amr ; Section_20
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .amr
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.amr
  IfErrors 0 label_3712
  Push $R0
  Push $R1
  StrCpy $R1 20
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_3712:
  StrCpy $0 3755
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.amr
  IfErrors 0 label_3719
  Goto label_3720
label_3719:
  StrCmp $0 0 label_3729
label_3720:
  Push $0
  Push $1
  StrCpy $1 20
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_3737
label_3729:
  Push $0
  Push $1
  StrCpy $1 20
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_3737:
  StrCpy $0 3769
  Goto $0
  Return

  SectionGetFlags 20 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_3745 label_3745
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.amr 1
  Goto label_3746
label_3745:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.amr 0
label_3746:
  StrCpy $0 3794
  Goto $0
  Return

Section .aob ; Section_21
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .aob
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.aob
  IfErrors 0 label_3765
  Push $R0
  Push $R1
  StrCpy $R1 21
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_3765:
  StrCpy $0 3808
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.aob
  IfErrors 0 label_3772
  Goto label_3773
label_3772:
  StrCmp $0 0 label_3782
label_3773:
  Push $0
  Push $1
  StrCpy $1 21
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_3790
label_3782:
  Push $0
  Push $1
  StrCpy $1 21
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_3790:
  StrCpy $0 3822
  Goto $0
  Return

  SectionGetFlags 21 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_3798 label_3798
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.aob 1
  Goto label_3799
label_3798:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.aob 0
label_3799:
  StrCpy $0 3847
  Goto $0
  Return

Section .ape ; Section_22
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .ape
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.ape
  IfErrors 0 label_3818
  Push $R0
  Push $R1
  StrCpy $R1 22
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_3818:
  StrCpy $0 3861
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.ape
  IfErrors 0 label_3825
  Goto label_3826
label_3825:
  StrCmp $0 0 label_3835
label_3826:
  Push $0
  Push $1
  StrCpy $1 22
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_3843
label_3835:
  Push $0
  Push $1
  StrCpy $1 22
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_3843:
  StrCpy $0 3875
  Goto $0
  Return

  SectionGetFlags 22 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_3851 label_3851
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.ape 1
  Goto label_3852
label_3851:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.ape 0
label_3852:
  StrCpy $0 3900
  Goto $0
  Return

Section .caf ; Section_23
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .caf
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.caf
  IfErrors 0 label_3871
  Push $R0
  Push $R1
  StrCpy $R1 23
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_3871:
  StrCpy $0 3914
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.caf
  IfErrors 0 label_3878
  Goto label_3879
label_3878:
  StrCmp $0 0 label_3888
label_3879:
  Push $0
  Push $1
  StrCpy $1 23
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_3896
label_3888:
  Push $0
  Push $1
  StrCpy $1 23
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_3896:
  StrCpy $0 3928
  Goto $0
  Return

  SectionGetFlags 23 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_3904 label_3904
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.caf 1
  Goto label_3905
label_3904:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.caf 0
label_3905:
  StrCpy $0 3953
  Goto $0
  Return

Section .cda ; Section_24
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .cda
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.cda
  IfErrors 0 label_3924
  Push $R0
  Push $R1
  StrCpy $R1 24
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_3924:
  StrCpy $0 3967
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.cda
  IfErrors 0 label_3931
  Goto label_3932
label_3931:
  StrCmp $0 0 label_3941
label_3932:
  Push $0
  Push $1
  StrCpy $1 24
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_3949
label_3941:
  Push $0
  Push $1
  StrCpy $1 24
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_3949:
  StrCpy $0 3981
  Goto $0
  Return

  SectionGetFlags 24 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_3957 label_3957
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.cda 1
  Goto label_3958
label_3957:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.cda 0
label_3958:
  StrCpy $0 4006
  Goto $0
  Return

Section .dts ; Section_25
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .dts
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.dts
  IfErrors 0 label_3977
  Push $R0
  Push $R1
  StrCpy $R1 25
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_3977:
  StrCpy $0 4020
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.dts
  IfErrors 0 label_3984
  Goto label_3985
label_3984:
  StrCmp $0 0 label_3994
label_3985:
  Push $0
  Push $1
  StrCpy $1 25
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_4002
label_3994:
  Push $0
  Push $1
  StrCpy $1 25
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_4002:
  StrCpy $0 4034
  Goto $0
  Return

  SectionGetFlags 25 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_4010 label_4010
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.dts 1
  Goto label_4011
label_4010:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.dts 0
label_4011:
  StrCpy $0 4059
  Goto $0
  Return

Section .flac ; Section_26
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .flac
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.flac
  IfErrors 0 label_4030
  Push $R0
  Push $R1
  StrCpy $R1 26
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_4030:
  StrCpy $0 4073
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.flac
  IfErrors 0 label_4037
  Goto label_4038
label_4037:
  StrCmp $0 0 label_4047
label_4038:
  Push $0
  Push $1
  StrCpy $1 26
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_4055
label_4047:
  Push $0
  Push $1
  StrCpy $1 26
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_4055:
  StrCpy $0 4087
  Goto $0
  Return

  SectionGetFlags 26 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_4063 label_4063
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.flac 1
  Goto label_4064
label_4063:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.flac 0
label_4064:
  StrCpy $0 4112
  Goto $0
  Return

Section .it ; Section_27
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .it
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.it
  IfErrors 0 label_4083
  Push $R0
  Push $R1
  StrCpy $R1 27
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_4083:
  StrCpy $0 4126
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.it
  IfErrors 0 label_4090
  Goto label_4091
label_4090:
  StrCmp $0 0 label_4100
label_4091:
  Push $0
  Push $1
  StrCpy $1 27
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_4108
label_4100:
  Push $0
  Push $1
  StrCpy $1 27
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_4108:
  StrCpy $0 4140
  Goto $0
  Return

  SectionGetFlags 27 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_4116 label_4116
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.it 1
  Goto label_4117
label_4116:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.it 0
label_4117:
  StrCpy $0 4165
  Goto $0
  Return

Section .m4a ; Section_28
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .m4a
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.m4a
  IfErrors 0 label_4136
  Push $R0
  Push $R1
  StrCpy $R1 28
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_4136:
  StrCpy $0 4179
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.m4a
  IfErrors 0 label_4143
  Goto label_4144
label_4143:
  StrCmp $0 0 label_4153
label_4144:
  Push $0
  Push $1
  StrCpy $1 28
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_4161
label_4153:
  Push $0
  Push $1
  StrCpy $1 28
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_4161:
  StrCpy $0 4193
  Goto $0
  Return

  SectionGetFlags 28 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_4169 label_4169
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.m4a 1
  Goto label_4170
label_4169:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.m4a 0
label_4170:
  StrCpy $0 4218
  Goto $0
  Return

Section .m4p ; Section_29
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .m4p
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.m4p
  IfErrors 0 label_4189
  Push $R0
  Push $R1
  StrCpy $R1 29
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_4189:
  StrCpy $0 4232
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.m4p
  IfErrors 0 label_4196
  Goto label_4197
label_4196:
  StrCmp $0 0 label_4206
label_4197:
  Push $0
  Push $1
  StrCpy $1 29
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_4214
label_4206:
  Push $0
  Push $1
  StrCpy $1 29
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_4214:
  StrCpy $0 4246
  Goto $0
  Return

  SectionGetFlags 29 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_4222 label_4222
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.m4p 1
  Goto label_4223
label_4222:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.m4p 0
label_4223:
  StrCpy $0 4271
  Goto $0
  Return

Section .mka ; Section_30
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .mka
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.mka
  IfErrors 0 label_4242
  Push $R0
  Push $R1
  StrCpy $R1 30
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_4242:
  StrCpy $0 4285
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.mka
  IfErrors 0 label_4249
  Goto label_4250
label_4249:
  StrCmp $0 0 label_4259
label_4250:
  Push $0
  Push $1
  StrCpy $1 30
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_4267
label_4259:
  Push $0
  Push $1
  StrCpy $1 30
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_4267:
  StrCpy $0 4299
  Goto $0
  Return

  SectionGetFlags 30 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_4275 label_4275
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.mka 1
  Goto label_4276
label_4275:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.mka 0
label_4276:
  StrCpy $0 4324
  Goto $0
  Return

Section .mlp ; Section_31
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .mlp
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.mlp
  IfErrors 0 label_4295
  Push $R0
  Push $R1
  StrCpy $R1 31
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_4295:
  StrCpy $0 4338
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.mlp
  IfErrors 0 label_4302
  Goto label_4303
label_4302:
  StrCmp $0 0 label_4312
label_4303:
  Push $0
  Push $1
  StrCpy $1 31
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_4320
label_4312:
  Push $0
  Push $1
  StrCpy $1 31
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_4320:
  StrCpy $0 4352
  Goto $0
  Return

  SectionGetFlags 31 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_4328 label_4328
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.mlp 1
  Goto label_4329
label_4328:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.mlp 0
label_4329:
  StrCpy $0 4377
  Goto $0
  Return

Section .mod ; Section_32
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .mod
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.mod
  IfErrors 0 label_4348
  Push $R0
  Push $R1
  StrCpy $R1 32
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_4348:
  StrCpy $0 4391
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.mod
  IfErrors 0 label_4355
  Goto label_4356
label_4355:
  StrCmp $0 0 label_4365
label_4356:
  Push $0
  Push $1
  StrCpy $1 32
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_4373
label_4365:
  Push $0
  Push $1
  StrCpy $1 32
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_4373:
  StrCpy $0 4405
  Goto $0
  Return

  SectionGetFlags 32 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_4381 label_4381
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.mod 1
  Goto label_4382
label_4381:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.mod 0
label_4382:
  StrCpy $0 4430
  Goto $0
  Return

Section .mp1 ; Section_33
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .mp1
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.mp1
  IfErrors 0 label_4401
  Push $R0
  Push $R1
  StrCpy $R1 33
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_4401:
  StrCpy $0 4444
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.mp1
  IfErrors 0 label_4408
  Goto label_4409
label_4408:
  StrCmp $0 0 label_4418
label_4409:
  Push $0
  Push $1
  StrCpy $1 33
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_4426
label_4418:
  Push $0
  Push $1
  StrCpy $1 33
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_4426:
  StrCpy $0 4458
  Goto $0
  Return

  SectionGetFlags 33 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_4434 label_4434
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.mp1 1
  Goto label_4435
label_4434:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.mp1 0
label_4435:
  StrCpy $0 4483
  Goto $0
  Return

Section .mp2 ; Section_34
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .mp2
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.mp2
  IfErrors 0 label_4454
  Push $R0
  Push $R1
  StrCpy $R1 34
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_4454:
  StrCpy $0 4497
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.mp2
  IfErrors 0 label_4461
  Goto label_4462
label_4461:
  StrCmp $0 0 label_4471
label_4462:
  Push $0
  Push $1
  StrCpy $1 34
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_4479
label_4471:
  Push $0
  Push $1
  StrCpy $1 34
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_4479:
  StrCpy $0 4511
  Goto $0
  Return

  SectionGetFlags 34 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_4487 label_4487
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.mp2 1
  Goto label_4488
label_4487:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.mp2 0
label_4488:
  StrCpy $0 4536
  Goto $0
  Return

Section .mp3 ; Section_35
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .mp3
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.mp3
  IfErrors 0 label_4507
  Push $R0
  Push $R1
  StrCpy $R1 35
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_4507:
  StrCpy $0 4550
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.mp3
  IfErrors 0 label_4514
  Goto label_4515
label_4514:
  StrCmp $0 0 label_4524
label_4515:
  Push $0
  Push $1
  StrCpy $1 35
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_4532
label_4524:
  Push $0
  Push $1
  StrCpy $1 35
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_4532:
  StrCpy $0 4564
  Goto $0
  Return

  SectionGetFlags 35 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_4540 label_4540
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.mp3 1
  Goto label_4541
label_4540:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.mp3 0
label_4541:
  StrCpy $0 4589
  Goto $0
  Return

Section .mpc ; Section_36
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .mpc
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.mpc
  IfErrors 0 label_4560
  Push $R0
  Push $R1
  StrCpy $R1 36
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_4560:
  StrCpy $0 4603
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.mpc
  IfErrors 0 label_4567
  Goto label_4568
label_4567:
  StrCmp $0 0 label_4577
label_4568:
  Push $0
  Push $1
  StrCpy $1 36
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_4585
label_4577:
  Push $0
  Push $1
  StrCpy $1 36
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_4585:
  StrCpy $0 4617
  Goto $0
  Return

  SectionGetFlags 36 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_4593 label_4593
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.mpc 1
  Goto label_4594
label_4593:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.mpc 0
label_4594:
  StrCpy $0 4642
  Goto $0
  Return

Section .mpga ; Section_37
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .mpga
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.mpga
  IfErrors 0 label_4613
  Push $R0
  Push $R1
  StrCpy $R1 37
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_4613:
  StrCpy $0 4656
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.mpga
  IfErrors 0 label_4620
  Goto label_4621
label_4620:
  StrCmp $0 0 label_4630
label_4621:
  Push $0
  Push $1
  StrCpy $1 37
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_4638
label_4630:
  Push $0
  Push $1
  StrCpy $1 37
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_4638:
  StrCpy $0 4670
  Goto $0
  Return

  SectionGetFlags 37 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_4646 label_4646
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.mpga 1
  Goto label_4647
label_4646:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.mpga 0
label_4647:
  StrCpy $0 4695
  Goto $0
  Return

Section .oga ; Section_38
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .oga
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.oga
  IfErrors 0 label_4666
  Push $R0
  Push $R1
  StrCpy $R1 38
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_4666:
  StrCpy $0 4709
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.oga
  IfErrors 0 label_4673
  Goto label_4674
label_4673:
  StrCmp $0 0 label_4683
label_4674:
  Push $0
  Push $1
  StrCpy $1 38
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_4691
label_4683:
  Push $0
  Push $1
  StrCpy $1 38
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_4691:
  StrCpy $0 4723
  Goto $0
  Return

  SectionGetFlags 38 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_4699 label_4699
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.oga 1
  Goto label_4700
label_4699:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.oga 0
label_4700:
  StrCpy $0 4748
  Goto $0
  Return

Section .oma ; Section_39
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .oma
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.oma
  IfErrors 0 label_4719
  Push $R0
  Push $R1
  StrCpy $R1 39
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_4719:
  StrCpy $0 4762
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.oma
  IfErrors 0 label_4726
  Goto label_4727
label_4726:
  StrCmp $0 0 label_4736
label_4727:
  Push $0
  Push $1
  StrCpy $1 39
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_4744
label_4736:
  Push $0
  Push $1
  StrCpy $1 39
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_4744:
  StrCpy $0 4776
  Goto $0
  Return

  SectionGetFlags 39 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_4752 label_4752
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.oma 1
  Goto label_4753
label_4752:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.oma 0
label_4753:
  StrCpy $0 4801
  Goto $0
  Return

Section .opus ; Section_40
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .opus
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.opus
  IfErrors 0 label_4772
  Push $R0
  Push $R1
  StrCpy $R1 40
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_4772:
  StrCpy $0 4815
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.opus
  IfErrors 0 label_4779
  Goto label_4780
label_4779:
  StrCmp $0 0 label_4789
label_4780:
  Push $0
  Push $1
  StrCpy $1 40
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_4797
label_4789:
  Push $0
  Push $1
  StrCpy $1 40
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_4797:
  StrCpy $0 4829
  Goto $0
  Return

  SectionGetFlags 40 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_4805 label_4805
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.opus 1
  Goto label_4806
label_4805:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.opus 0
label_4806:
  StrCpy $0 4854
  Goto $0
  Return

Section .qcp ; Section_41
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .qcp
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.qcp
  IfErrors 0 label_4825
  Push $R0
  Push $R1
  StrCpy $R1 41
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_4825:
  StrCpy $0 4868
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.qcp
  IfErrors 0 label_4832
  Goto label_4833
label_4832:
  StrCmp $0 0 label_4842
label_4833:
  Push $0
  Push $1
  StrCpy $1 41
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_4850
label_4842:
  Push $0
  Push $1
  StrCpy $1 41
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_4850:
  StrCpy $0 4882
  Goto $0
  Return

  SectionGetFlags 41 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_4858 label_4858
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.qcp 1
  Goto label_4859
label_4858:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.qcp 0
label_4859:
  StrCpy $0 4907
  Goto $0
  Return

Section .ra ; Section_42
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .ra
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.ra
  IfErrors 0 label_4878
  Push $R0
  Push $R1
  StrCpy $R1 42
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_4878:
  StrCpy $0 4921
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.ra
  IfErrors 0 label_4885
  Goto label_4886
label_4885:
  StrCmp $0 0 label_4895
label_4886:
  Push $0
  Push $1
  StrCpy $1 42
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_4903
label_4895:
  Push $0
  Push $1
  StrCpy $1 42
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_4903:
  StrCpy $0 4935
  Goto $0
  Return

  SectionGetFlags 42 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_4911 label_4911
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.ra 1
  Goto label_4912
label_4911:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.ra 0
label_4912:
  StrCpy $0 4960
  Goto $0
  Return

Section .rmi ; Section_43
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .rmi
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.rmi
  IfErrors 0 label_4931
  Push $R0
  Push $R1
  StrCpy $R1 43
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_4931:
  StrCpy $0 4974
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.rmi
  IfErrors 0 label_4938
  Goto label_4939
label_4938:
  StrCmp $0 0 label_4948
label_4939:
  Push $0
  Push $1
  StrCpy $1 43
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_4956
label_4948:
  Push $0
  Push $1
  StrCpy $1 43
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_4956:
  StrCpy $0 4988
  Goto $0
  Return

  SectionGetFlags 43 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_4964 label_4964
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.rmi 1
  Goto label_4965
label_4964:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.rmi 0
label_4965:
  StrCpy $0 5013
  Goto $0
  Return

Section .snd ; Section_44
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .snd
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.snd
  IfErrors 0 label_4984
  Push $R0
  Push $R1
  StrCpy $R1 44
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_4984:
  StrCpy $0 5027
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.snd
  IfErrors 0 label_4991
  Goto label_4992
label_4991:
  StrCmp $0 0 label_5001
label_4992:
  Push $0
  Push $1
  StrCpy $1 44
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_5009
label_5001:
  Push $0
  Push $1
  StrCpy $1 44
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_5009:
  StrCpy $0 5041
  Goto $0
  Return

  SectionGetFlags 44 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_5017 label_5017
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.snd 1
  Goto label_5018
label_5017:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.snd 0
label_5018:
  StrCpy $0 5066
  Goto $0
  Return

Section .s3m ; Section_45
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .s3m
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.s3m
  IfErrors 0 label_5037
  Push $R0
  Push $R1
  StrCpy $R1 45
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_5037:
  StrCpy $0 5080
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.s3m
  IfErrors 0 label_5044
  Goto label_5045
label_5044:
  StrCmp $0 0 label_5054
label_5045:
  Push $0
  Push $1
  StrCpy $1 45
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_5062
label_5054:
  Push $0
  Push $1
  StrCpy $1 45
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_5062:
  StrCpy $0 5094
  Goto $0
  Return

  SectionGetFlags 45 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_5070 label_5070
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.s3m 1
  Goto label_5071
label_5070:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.s3m 0
label_5071:
  StrCpy $0 5119
  Goto $0
  Return

Section .spx ; Section_46
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .spx
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.spx
  IfErrors 0 label_5090
  Push $R0
  Push $R1
  StrCpy $R1 46
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_5090:
  StrCpy $0 5133
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.spx
  IfErrors 0 label_5097
  Goto label_5098
label_5097:
  StrCmp $0 0 label_5107
label_5098:
  Push $0
  Push $1
  StrCpy $1 46
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_5115
label_5107:
  Push $0
  Push $1
  StrCpy $1 46
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_5115:
  StrCpy $0 5147
  Goto $0
  Return

  SectionGetFlags 46 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_5123 label_5123
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.spx 1
  Goto label_5124
label_5123:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.spx 0
label_5124:
  StrCpy $0 5172
  Goto $0
  Return

Section .tta ; Section_47
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .tta
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.tta
  IfErrors 0 label_5143
  Push $R0
  Push $R1
  StrCpy $R1 47
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_5143:
  StrCpy $0 5186
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.tta
  IfErrors 0 label_5150
  Goto label_5151
label_5150:
  StrCmp $0 0 label_5160
label_5151:
  Push $0
  Push $1
  StrCpy $1 47
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_5168
label_5160:
  Push $0
  Push $1
  StrCpy $1 47
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_5168:
  StrCpy $0 5200
  Goto $0
  Return

  SectionGetFlags 47 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_5176 label_5176
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.tta 1
  Goto label_5177
label_5176:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.tta 0
label_5177:
  StrCpy $0 5225
  Goto $0
  Return

Section .voc ; Section_48
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .voc
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.voc
  IfErrors 0 label_5196
  Push $R0
  Push $R1
  StrCpy $R1 48
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_5196:
  StrCpy $0 5239
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.voc
  IfErrors 0 label_5203
  Goto label_5204
label_5203:
  StrCmp $0 0 label_5213
label_5204:
  Push $0
  Push $1
  StrCpy $1 48
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_5221
label_5213:
  Push $0
  Push $1
  StrCpy $1 48
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_5221:
  StrCpy $0 5253
  Goto $0
  Return

  SectionGetFlags 48 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_5229 label_5229
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.voc 1
  Goto label_5230
label_5229:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.voc 0
label_5230:
  StrCpy $0 5278
  Goto $0
  Return

Section .vqf ; Section_49
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .vqf
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.vqf
  IfErrors 0 label_5249
  Push $R0
  Push $R1
  StrCpy $R1 49
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_5249:
  StrCpy $0 5292
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.vqf
  IfErrors 0 label_5256
  Goto label_5257
label_5256:
  StrCmp $0 0 label_5266
label_5257:
  Push $0
  Push $1
  StrCpy $1 49
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_5274
label_5266:
  Push $0
  Push $1
  StrCpy $1 49
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_5274:
  StrCpy $0 5306
  Goto $0
  Return

  SectionGetFlags 49 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_5282 label_5282
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.vqf 1
  Goto label_5283
label_5282:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.vqf 0
label_5283:
  StrCpy $0 5331
  Goto $0
  Return

Section .w64 ; Section_50
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .w64
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.w64
  IfErrors 0 label_5302
  Push $R0
  Push $R1
  StrCpy $R1 50
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_5302:
  StrCpy $0 5345
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.w64
  IfErrors 0 label_5309
  Goto label_5310
label_5309:
  StrCmp $0 0 label_5319
label_5310:
  Push $0
  Push $1
  StrCpy $1 50
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_5327
label_5319:
  Push $0
  Push $1
  StrCpy $1 50
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_5327:
  StrCpy $0 5359
  Goto $0
  Return

  SectionGetFlags 50 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_5335 label_5335
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.w64 1
  Goto label_5336
label_5335:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.w64 0
label_5336:
  StrCpy $0 5384
  Goto $0
  Return

Section .wav ; Section_51
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .wav
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.wav
  IfErrors 0 label_5355
  Push $R0
  Push $R1
  StrCpy $R1 51
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_5355:
  StrCpy $0 5398
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.wav
  IfErrors 0 label_5362
  Goto label_5363
label_5362:
  StrCmp $0 0 label_5372
label_5363:
  Push $0
  Push $1
  StrCpy $1 51
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_5380
label_5372:
  Push $0
  Push $1
  StrCpy $1 51
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_5380:
  StrCpy $0 5412
  Goto $0
  Return

  SectionGetFlags 51 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_5388 label_5388
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.wav 1
  Goto label_5389
label_5388:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.wav 0
label_5389:
  StrCpy $0 5437
  Goto $0
  Return

Section .wma ; Section_52
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .wma
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.wma
  IfErrors 0 label_5408
  Push $R0
  Push $R1
  StrCpy $R1 52
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_5408:
  StrCpy $0 5451
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.wma
  IfErrors 0 label_5415
  Goto label_5416
label_5415:
  StrCmp $0 0 label_5425
label_5416:
  Push $0
  Push $1
  StrCpy $1 52
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_5433
label_5425:
  Push $0
  Push $1
  StrCpy $1 52
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_5433:
  StrCpy $0 5465
  Goto $0
  Return

  SectionGetFlags 52 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_5441 label_5441
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.wma 1
  Goto label_5442
label_5441:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.wma 0
label_5442:
  StrCpy $0 5490
  Goto $0
  Return

Section .wv ; Section_53
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .wv
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.wv
  IfErrors 0 label_5461
  Push $R0
  Push $R1
  StrCpy $R1 53
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_5461:
  StrCpy $0 5504
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.wv
  IfErrors 0 label_5468
  Goto label_5469
label_5468:
  StrCmp $0 0 label_5478
label_5469:
  Push $0
  Push $1
  StrCpy $1 53
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_5486
label_5478:
  Push $0
  Push $1
  StrCpy $1 53
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_5486:
  StrCpy $0 5518
  Goto $0
  Return

  SectionGetFlags 53 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_5494 label_5494
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.wv 1
  Goto label_5495
label_5494:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.wv 0
label_5495:
  StrCpy $0 5543
  Goto $0
  Return

Section .xa ; Section_54
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .xa
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.xa
  IfErrors 0 label_5514
  Push $R0
  Push $R1
  StrCpy $R1 54
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_5514:
  StrCpy $0 5557
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.xa
  IfErrors 0 label_5521
  Goto label_5522
label_5521:
  StrCmp $0 0 label_5531
label_5522:
  Push $0
  Push $1
  StrCpy $1 54
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_5539
label_5531:
  Push $0
  Push $1
  StrCpy $1 54
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_5539:
  StrCpy $0 5571
  Goto $0
  Return

  SectionGetFlags 54 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_5547 label_5547
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.xa 1
  Goto label_5548
label_5547:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.xa 0
label_5548:
  StrCpy $0 5596
  Goto $0
  Return

Section .xm ; Section_55
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .xm
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.xm
  IfErrors 0 label_5567
  Push $R0
  Push $R1
  StrCpy $R1 55
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_5567:
  StrCpy $0 5612
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.xm
  IfErrors 0 label_5574
  Goto label_5575
label_5574:
  StrCmp $0 0 label_5584
label_5575:
  Push $0
  Push $1
  StrCpy $1 55
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_5592
label_5584:
  Push $0
  Push $1
  StrCpy $1 55
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_5592:
  StrCpy $0 5626
  Goto $0
  Return

  SectionGetFlags 55 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_5600 label_5600
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.xm 1
  Goto label_5601
label_5600:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.xm 0
label_5601:
  StrCpy $0 5651
  Goto $0
  Return

SectionGroupEnd

SectionGroup $(LSTR_90)    ; Section 57    ;  "Video Files"

Section .3g2 ; Section_58
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .3g2
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.3g2
  IfErrors 0 label_5622
  Push $R0
  Push $R1
  StrCpy $R1 58
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_5622:
  StrCpy $0 5665
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.3g2
  IfErrors 0 label_5629
  Goto label_5630
label_5629:
  StrCmp $0 0 label_5639
label_5630:
  Push $0
  Push $1
  StrCpy $1 58
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_5647
label_5639:
  Push $0
  Push $1
  StrCpy $1 58
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_5647:
  StrCpy $0 5679
  Goto $0
  Return

  SectionGetFlags 58 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_5655 label_5655
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.3g2 1
  Goto label_5656
label_5655:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.3g2 0
label_5656:
  StrCpy $0 5704
  Goto $0
  Return

Section .3gp ; Section_59
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .3gp
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.3gp
  IfErrors 0 label_5675
  Push $R0
  Push $R1
  StrCpy $R1 59
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_5675:
  StrCpy $0 5718
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.3gp
  IfErrors 0 label_5682
  Goto label_5683
label_5682:
  StrCmp $0 0 label_5692
label_5683:
  Push $0
  Push $1
  StrCpy $1 59
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_5700
label_5692:
  Push $0
  Push $1
  StrCpy $1 59
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_5700:
  StrCpy $0 5732
  Goto $0
  Return

  SectionGetFlags 59 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_5708 label_5708
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.3gp 1
  Goto label_5709
label_5708:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.3gp 0
label_5709:
  StrCpy $0 5757
  Goto $0
  Return

Section .3gp2 ; Section_60
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .3gp2
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.3gp2
  IfErrors 0 label_5728
  Push $R0
  Push $R1
  StrCpy $R1 60
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_5728:
  StrCpy $0 5771
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.3gp2
  IfErrors 0 label_5735
  Goto label_5736
label_5735:
  StrCmp $0 0 label_5745
label_5736:
  Push $0
  Push $1
  StrCpy $1 60
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_5753
label_5745:
  Push $0
  Push $1
  StrCpy $1 60
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_5753:
  StrCpy $0 5785
  Goto $0
  Return

  SectionGetFlags 60 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_5761 label_5761
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.3gp2 1
  Goto label_5762
label_5761:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.3gp2 0
label_5762:
  StrCpy $0 5810
  Goto $0
  Return

Section .3gpp ; Section_61
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .3gpp
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.3gpp
  IfErrors 0 label_5781
  Push $R0
  Push $R1
  StrCpy $R1 61
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_5781:
  StrCpy $0 5824
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.3gpp
  IfErrors 0 label_5788
  Goto label_5789
label_5788:
  StrCmp $0 0 label_5798
label_5789:
  Push $0
  Push $1
  StrCpy $1 61
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_5806
label_5798:
  Push $0
  Push $1
  StrCpy $1 61
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_5806:
  StrCpy $0 5838
  Goto $0
  Return

  SectionGetFlags 61 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_5814 label_5814
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.3gpp 1
  Goto label_5815
label_5814:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.3gpp 0
label_5815:
  StrCpy $0 5863
  Goto $0
  Return

Section .amv ; Section_62
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .amv
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.amv
  IfErrors 0 label_5834
  Push $R0
  Push $R1
  StrCpy $R1 62
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_5834:
  StrCpy $0 5877
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.amv
  IfErrors 0 label_5841
  Goto label_5842
label_5841:
  StrCmp $0 0 label_5851
label_5842:
  Push $0
  Push $1
  StrCpy $1 62
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_5859
label_5851:
  Push $0
  Push $1
  StrCpy $1 62
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_5859:
  StrCpy $0 5891
  Goto $0
  Return

  SectionGetFlags 62 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_5867 label_5867
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.amv 1
  Goto label_5868
label_5867:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.amv 0
label_5868:
  StrCpy $0 5916
  Goto $0
  Return

Section .asf ; Section_63
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .asf
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.asf
  IfErrors 0 label_5887
  Push $R0
  Push $R1
  StrCpy $R1 63
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_5887:
  StrCpy $0 5930
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.asf
  IfErrors 0 label_5894
  Goto label_5895
label_5894:
  StrCmp $0 0 label_5904
label_5895:
  Push $0
  Push $1
  StrCpy $1 63
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_5912
label_5904:
  Push $0
  Push $1
  StrCpy $1 63
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_5912:
  StrCpy $0 5944
  Goto $0
  Return

  SectionGetFlags 63 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_5920 label_5920
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.asf 1
  Goto label_5921
label_5920:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.asf 0
label_5921:
  StrCpy $0 5969
  Goto $0
  Return

Section .avi ; Section_64
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .avi
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.avi
  IfErrors 0 label_5940
  Push $R0
  Push $R1
  StrCpy $R1 64
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_5940:
  StrCpy $0 5983
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.avi
  IfErrors 0 label_5947
  Goto label_5948
label_5947:
  StrCmp $0 0 label_5957
label_5948:
  Push $0
  Push $1
  StrCpy $1 64
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_5965
label_5957:
  Push $0
  Push $1
  StrCpy $1 64
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_5965:
  StrCpy $0 5997
  Goto $0
  Return

  SectionGetFlags 64 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_5973 label_5973
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.avi 1
  Goto label_5974
label_5973:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.avi 0
label_5974:
  StrCpy $0 6022
  Goto $0
  Return

Section .bik ; Section_65
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .bik
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.bik
  IfErrors 0 label_5993
  Push $R0
  Push $R1
  StrCpy $R1 65
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_5993:
  StrCpy $0 6036
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.bik
  IfErrors 0 label_6000
  Goto label_6001
label_6000:
  StrCmp $0 0 label_6010
label_6001:
  Push $0
  Push $1
  StrCpy $1 65
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_6018
label_6010:
  Push $0
  Push $1
  StrCpy $1 65
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_6018:
  StrCpy $0 6050
  Goto $0
  Return

  SectionGetFlags 65 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_6026 label_6026
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.bik 1
  Goto label_6027
label_6026:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.bik 0
label_6027:
  StrCpy $0 6075
  Goto $0
  Return

Section .dav ; Section_66
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .dav
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.dav
  IfErrors 0 label_6046
  Push $R0
  Push $R1
  StrCpy $R1 66
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_6046:
  StrCpy $0 6089
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.dav
  IfErrors 0 label_6053
  Goto label_6054
label_6053:
  StrCmp $0 0 label_6063
label_6054:
  Push $0
  Push $1
  StrCpy $1 66
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_6071
label_6063:
  Push $0
  Push $1
  StrCpy $1 66
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_6071:
  StrCpy $0 6103
  Goto $0
  Return

  SectionGetFlags 66 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_6079 label_6079
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.dav 1
  Goto label_6080
label_6079:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.dav 0
label_6080:
  StrCpy $0 6128
  Goto $0
  Return

Section .divx ; Section_67
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .divx
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.divx
  IfErrors 0 label_6099
  Push $R0
  Push $R1
  StrCpy $R1 67
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_6099:
  StrCpy $0 6142
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.divx
  IfErrors 0 label_6106
  Goto label_6107
label_6106:
  StrCmp $0 0 label_6116
label_6107:
  Push $0
  Push $1
  StrCpy $1 67
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_6124
label_6116:
  Push $0
  Push $1
  StrCpy $1 67
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_6124:
  StrCpy $0 6156
  Goto $0
  Return

  SectionGetFlags 67 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_6132 label_6132
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.divx 1
  Goto label_6133
label_6132:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.divx 0
label_6133:
  StrCpy $0 6181
  Goto $0
  Return

Section .drc ; Section_68
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .drc
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.drc
  IfErrors 0 label_6152
  Push $R0
  Push $R1
  StrCpy $R1 68
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_6152:
  StrCpy $0 6195
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.drc
  IfErrors 0 label_6159
  Goto label_6160
label_6159:
  StrCmp $0 0 label_6169
label_6160:
  Push $0
  Push $1
  StrCpy $1 68
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_6177
label_6169:
  Push $0
  Push $1
  StrCpy $1 68
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_6177:
  StrCpy $0 6209
  Goto $0
  Return

  SectionGetFlags 68 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_6185 label_6185
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.drc 1
  Goto label_6186
label_6185:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.drc 0
label_6186:
  StrCpy $0 6234
  Goto $0
  Return

Section .dv ; Section_69
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .dv
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.dv
  IfErrors 0 label_6205
  Push $R0
  Push $R1
  StrCpy $R1 69
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_6205:
  StrCpy $0 6248
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.dv
  IfErrors 0 label_6212
  Goto label_6213
label_6212:
  StrCmp $0 0 label_6222
label_6213:
  Push $0
  Push $1
  StrCpy $1 69
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_6230
label_6222:
  Push $0
  Push $1
  StrCpy $1 69
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_6230:
  StrCpy $0 6262
  Goto $0
  Return

  SectionGetFlags 69 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_6238 label_6238
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.dv 1
  Goto label_6239
label_6238:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.dv 0
label_6239:
  StrCpy $0 6287
  Goto $0
  Return

Section .dvr-ms ; Section_70
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .dvr-ms
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.dvr-ms
  IfErrors 0 label_6258
  Push $R0
  Push $R1
  StrCpy $R1 70
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_6258:
  StrCpy $0 6301
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.dvr-ms
  IfErrors 0 label_6265
  Goto label_6266
label_6265:
  StrCmp $0 0 label_6275
label_6266:
  Push $0
  Push $1
  StrCpy $1 70
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_6283
label_6275:
  Push $0
  Push $1
  StrCpy $1 70
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_6283:
  StrCpy $0 6315
  Goto $0
  Return

  SectionGetFlags 70 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_6291 label_6291
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.dvr-ms 1
  Goto label_6292
label_6291:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.dvr-ms 0
label_6292:
  StrCpy $0 6340
  Goto $0
  Return

Section .evo ; Section_71
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .evo
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.evo
  IfErrors 0 label_6311
  Push $R0
  Push $R1
  StrCpy $R1 71
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_6311:
  StrCpy $0 6354
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.evo
  IfErrors 0 label_6318
  Goto label_6319
label_6318:
  StrCmp $0 0 label_6328
label_6319:
  Push $0
  Push $1
  StrCpy $1 71
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_6336
label_6328:
  Push $0
  Push $1
  StrCpy $1 71
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_6336:
  StrCpy $0 6368
  Goto $0
  Return

  SectionGetFlags 71 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_6344 label_6344
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.evo 1
  Goto label_6345
label_6344:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.evo 0
label_6345:
  StrCpy $0 6393
  Goto $0
  Return

Section .f4v ; Section_72
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .f4v
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.f4v
  IfErrors 0 label_6364
  Push $R0
  Push $R1
  StrCpy $R1 72
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_6364:
  StrCpy $0 6407
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.f4v
  IfErrors 0 label_6371
  Goto label_6372
label_6371:
  StrCmp $0 0 label_6381
label_6372:
  Push $0
  Push $1
  StrCpy $1 72
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_6389
label_6381:
  Push $0
  Push $1
  StrCpy $1 72
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_6389:
  StrCpy $0 6421
  Goto $0
  Return

  SectionGetFlags 72 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_6397 label_6397
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.f4v 1
  Goto label_6398
label_6397:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.f4v 0
label_6398:
  StrCpy $0 6446
  Goto $0
  Return

Section .flv ; Section_73
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .flv
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.flv
  IfErrors 0 label_6417
  Push $R0
  Push $R1
  StrCpy $R1 73
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_6417:
  StrCpy $0 6460
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.flv
  IfErrors 0 label_6424
  Goto label_6425
label_6424:
  StrCmp $0 0 label_6434
label_6425:
  Push $0
  Push $1
  StrCpy $1 73
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_6442
label_6434:
  Push $0
  Push $1
  StrCpy $1 73
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_6442:
  StrCpy $0 6474
  Goto $0
  Return

  SectionGetFlags 73 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_6450 label_6450
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.flv 1
  Goto label_6451
label_6450:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.flv 0
label_6451:
  StrCpy $0 6499
  Goto $0
  Return

Section .gvi ; Section_74
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .gvi
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.gvi
  IfErrors 0 label_6470
  Push $R0
  Push $R1
  StrCpy $R1 74
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_6470:
  StrCpy $0 6513
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.gvi
  IfErrors 0 label_6477
  Goto label_6478
label_6477:
  StrCmp $0 0 label_6487
label_6478:
  Push $0
  Push $1
  StrCpy $1 74
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_6495
label_6487:
  Push $0
  Push $1
  StrCpy $1 74
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_6495:
  StrCpy $0 6527
  Goto $0
  Return

  SectionGetFlags 74 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_6503 label_6503
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.gvi 1
  Goto label_6504
label_6503:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.gvi 0
label_6504:
  StrCpy $0 6552
  Goto $0
  Return

Section .gxf ; Section_75
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .gxf
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.gxf
  IfErrors 0 label_6523
  Push $R0
  Push $R1
  StrCpy $R1 75
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_6523:
  StrCpy $0 6566
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.gxf
  IfErrors 0 label_6530
  Goto label_6531
label_6530:
  StrCmp $0 0 label_6540
label_6531:
  Push $0
  Push $1
  StrCpy $1 75
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_6548
label_6540:
  Push $0
  Push $1
  StrCpy $1 75
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_6548:
  StrCpy $0 6580
  Goto $0
  Return

  SectionGetFlags 75 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_6556 label_6556
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.gxf 1
  Goto label_6557
label_6556:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.gxf 0
label_6557:
  StrCpy $0 6605
  Goto $0
  Return

Section .m1v ; Section_76
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .m1v
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.m1v
  IfErrors 0 label_6576
  Push $R0
  Push $R1
  StrCpy $R1 76
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_6576:
  StrCpy $0 6619
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.m1v
  IfErrors 0 label_6583
  Goto label_6584
label_6583:
  StrCmp $0 0 label_6593
label_6584:
  Push $0
  Push $1
  StrCpy $1 76
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_6601
label_6593:
  Push $0
  Push $1
  StrCpy $1 76
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_6601:
  StrCpy $0 6633
  Goto $0
  Return

  SectionGetFlags 76 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_6609 label_6609
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.m1v 1
  Goto label_6610
label_6609:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.m1v 0
label_6610:
  StrCpy $0 6658
  Goto $0
  Return

Section .m2t ; Section_77
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .m2t
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.m2t
  IfErrors 0 label_6629
  Push $R0
  Push $R1
  StrCpy $R1 77
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_6629:
  StrCpy $0 6672
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.m2t
  IfErrors 0 label_6636
  Goto label_6637
label_6636:
  StrCmp $0 0 label_6646
label_6637:
  Push $0
  Push $1
  StrCpy $1 77
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_6654
label_6646:
  Push $0
  Push $1
  StrCpy $1 77
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_6654:
  StrCpy $0 6686
  Goto $0
  Return

  SectionGetFlags 77 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_6662 label_6662
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.m2t 1
  Goto label_6663
label_6662:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.m2t 0
label_6663:
  StrCpy $0 6711
  Goto $0
  Return

Section .m2v ; Section_78
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .m2v
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.m2v
  IfErrors 0 label_6682
  Push $R0
  Push $R1
  StrCpy $R1 78
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_6682:
  StrCpy $0 6725
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.m2v
  IfErrors 0 label_6689
  Goto label_6690
label_6689:
  StrCmp $0 0 label_6699
label_6690:
  Push $0
  Push $1
  StrCpy $1 78
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_6707
label_6699:
  Push $0
  Push $1
  StrCpy $1 78
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_6707:
  StrCpy $0 6739
  Goto $0
  Return

  SectionGetFlags 78 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_6715 label_6715
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.m2v 1
  Goto label_6716
label_6715:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.m2v 0
label_6716:
  StrCpy $0 6764
  Goto $0
  Return

Section .m2ts ; Section_79
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .m2ts
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.m2ts
  IfErrors 0 label_6735
  Push $R0
  Push $R1
  StrCpy $R1 79
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_6735:
  StrCpy $0 6778
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.m2ts
  IfErrors 0 label_6742
  Goto label_6743
label_6742:
  StrCmp $0 0 label_6752
label_6743:
  Push $0
  Push $1
  StrCpy $1 79
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_6760
label_6752:
  Push $0
  Push $1
  StrCpy $1 79
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_6760:
  StrCpy $0 6792
  Goto $0
  Return

  SectionGetFlags 79 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_6768 label_6768
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.m2ts 1
  Goto label_6769
label_6768:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.m2ts 0
label_6769:
  StrCpy $0 6817
  Goto $0
  Return

Section .m4v ; Section_80
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .m4v
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.m4v
  IfErrors 0 label_6788
  Push $R0
  Push $R1
  StrCpy $R1 80
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_6788:
  StrCpy $0 6831
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.m4v
  IfErrors 0 label_6795
  Goto label_6796
label_6795:
  StrCmp $0 0 label_6805
label_6796:
  Push $0
  Push $1
  StrCpy $1 80
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_6813
label_6805:
  Push $0
  Push $1
  StrCpy $1 80
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_6813:
  StrCpy $0 6845
  Goto $0
  Return

  SectionGetFlags 80 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_6821 label_6821
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.m4v 1
  Goto label_6822
label_6821:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.m4v 0
label_6822:
  StrCpy $0 6870
  Goto $0
  Return

Section .mkv ; Section_81
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .mkv
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mkv
  IfErrors 0 label_6841
  Push $R0
  Push $R1
  StrCpy $R1 81
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_6841:
  StrCpy $0 6884
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mkv
  IfErrors 0 label_6848
  Goto label_6849
label_6848:
  StrCmp $0 0 label_6858
label_6849:
  Push $0
  Push $1
  StrCpy $1 81
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_6866
label_6858:
  Push $0
  Push $1
  StrCpy $1 81
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_6866:
  StrCpy $0 6898
  Goto $0
  Return

  SectionGetFlags 81 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_6874 label_6874
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mkv 1
  Goto label_6875
label_6874:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mkv 0
label_6875:
  StrCpy $0 6923
  Goto $0
  Return

Section .mov ; Section_82
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .mov
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mov
  IfErrors 0 label_6894
  Push $R0
  Push $R1
  StrCpy $R1 82
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_6894:
  StrCpy $0 6937
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mov
  IfErrors 0 label_6901
  Goto label_6902
label_6901:
  StrCmp $0 0 label_6911
label_6902:
  Push $0
  Push $1
  StrCpy $1 82
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_6919
label_6911:
  Push $0
  Push $1
  StrCpy $1 82
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_6919:
  StrCpy $0 6951
  Goto $0
  Return

  SectionGetFlags 82 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_6927 label_6927
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mov 1
  Goto label_6928
label_6927:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mov 0
label_6928:
  StrCpy $0 6976
  Goto $0
  Return

Section .mp2v ; Section_83
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .mp2v
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mp2v
  IfErrors 0 label_6947
  Push $R0
  Push $R1
  StrCpy $R1 83
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_6947:
  StrCpy $0 6990
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mp2v
  IfErrors 0 label_6954
  Goto label_6955
label_6954:
  StrCmp $0 0 label_6964
label_6955:
  Push $0
  Push $1
  StrCpy $1 83
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_6972
label_6964:
  Push $0
  Push $1
  StrCpy $1 83
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_6972:
  StrCpy $0 7004
  Goto $0
  Return

  SectionGetFlags 83 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_6980 label_6980
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mp2v 1
  Goto label_6981
label_6980:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mp2v 0
label_6981:
  StrCpy $0 7029
  Goto $0
  Return

Section .mp4 ; Section_84
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .mp4
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mp4
  IfErrors 0 label_7000
  Push $R0
  Push $R1
  StrCpy $R1 84
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_7000:
  StrCpy $0 7043
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mp4
  IfErrors 0 label_7007
  Goto label_7008
label_7007:
  StrCmp $0 0 label_7017
label_7008:
  Push $0
  Push $1
  StrCpy $1 84
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_7025
label_7017:
  Push $0
  Push $1
  StrCpy $1 84
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_7025:
  StrCpy $0 7057
  Goto $0
  Return

  SectionGetFlags 84 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_7033 label_7033
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mp4 1
  Goto label_7034
label_7033:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mp4 0
label_7034:
  StrCpy $0 7082
  Goto $0
  Return

Section .mp4v ; Section_85
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .mp4v
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mp4v
  IfErrors 0 label_7053
  Push $R0
  Push $R1
  StrCpy $R1 85
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_7053:
  StrCpy $0 7096
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mp4v
  IfErrors 0 label_7060
  Goto label_7061
label_7060:
  StrCmp $0 0 label_7070
label_7061:
  Push $0
  Push $1
  StrCpy $1 85
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_7078
label_7070:
  Push $0
  Push $1
  StrCpy $1 85
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_7078:
  StrCpy $0 7110
  Goto $0
  Return

  SectionGetFlags 85 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_7086 label_7086
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mp4v 1
  Goto label_7087
label_7086:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mp4v 0
label_7087:
  StrCpy $0 7135
  Goto $0
  Return

Section .mpa ; Section_86
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .mpa
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mpa
  IfErrors 0 label_7106
  Push $R0
  Push $R1
  StrCpy $R1 86
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_7106:
  StrCpy $0 7149
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mpa
  IfErrors 0 label_7113
  Goto label_7114
label_7113:
  StrCmp $0 0 label_7123
label_7114:
  Push $0
  Push $1
  StrCpy $1 86
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_7131
label_7123:
  Push $0
  Push $1
  StrCpy $1 86
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_7131:
  StrCpy $0 7163
  Goto $0
  Return

  SectionGetFlags 86 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_7139 label_7139
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mpa 1
  Goto label_7140
label_7139:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mpa 0
label_7140:
  StrCpy $0 7188
  Goto $0
  Return

Section .mpe ; Section_87
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .mpe
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mpe
  IfErrors 0 label_7159
  Push $R0
  Push $R1
  StrCpy $R1 87
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_7159:
  StrCpy $0 7202
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mpe
  IfErrors 0 label_7166
  Goto label_7167
label_7166:
  StrCmp $0 0 label_7176
label_7167:
  Push $0
  Push $1
  StrCpy $1 87
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_7184
label_7176:
  Push $0
  Push $1
  StrCpy $1 87
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_7184:
  StrCpy $0 7216
  Goto $0
  Return

  SectionGetFlags 87 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_7192 label_7192
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mpe 1
  Goto label_7193
label_7192:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mpe 0
label_7193:
  StrCpy $0 7241
  Goto $0
  Return

Section .mpeg ; Section_88
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .mpeg
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mpeg
  IfErrors 0 label_7212
  Push $R0
  Push $R1
  StrCpy $R1 88
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_7212:
  StrCpy $0 7255
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mpeg
  IfErrors 0 label_7219
  Goto label_7220
label_7219:
  StrCmp $0 0 label_7229
label_7220:
  Push $0
  Push $1
  StrCpy $1 88
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_7237
label_7229:
  Push $0
  Push $1
  StrCpy $1 88
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_7237:
  StrCpy $0 7269
  Goto $0
  Return

  SectionGetFlags 88 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_7245 label_7245
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mpeg 1
  Goto label_7246
label_7245:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mpeg 0
label_7246:
  StrCpy $0 7294
  Goto $0
  Return

Section .mpeg1 ; Section_89
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .mpeg1
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mpeg1
  IfErrors 0 label_7265
  Push $R0
  Push $R1
  StrCpy $R1 89
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_7265:
  StrCpy $0 7308
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mpeg1
  IfErrors 0 label_7272
  Goto label_7273
label_7272:
  StrCmp $0 0 label_7282
label_7273:
  Push $0
  Push $1
  StrCpy $1 89
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_7290
label_7282:
  Push $0
  Push $1
  StrCpy $1 89
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_7290:
  StrCpy $0 7322
  Goto $0
  Return

  SectionGetFlags 89 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_7298 label_7298
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mpeg1 1
  Goto label_7299
label_7298:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mpeg1 0
label_7299:
  StrCpy $0 7347
  Goto $0
  Return

Section .mpeg2 ; Section_90
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .mpeg2
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mpeg2
  IfErrors 0 label_7318
  Push $R0
  Push $R1
  StrCpy $R1 90
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_7318:
  StrCpy $0 7361
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mpeg2
  IfErrors 0 label_7325
  Goto label_7326
label_7325:
  StrCmp $0 0 label_7335
label_7326:
  Push $0
  Push $1
  StrCpy $1 90
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_7343
label_7335:
  Push $0
  Push $1
  StrCpy $1 90
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_7343:
  StrCpy $0 7375
  Goto $0
  Return

  SectionGetFlags 90 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_7351 label_7351
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mpeg2 1
  Goto label_7352
label_7351:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mpeg2 0
label_7352:
  StrCpy $0 7400
  Goto $0
  Return

Section .mpeg4 ; Section_91
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .mpeg4
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mpeg4
  IfErrors 0 label_7371
  Push $R0
  Push $R1
  StrCpy $R1 91
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_7371:
  StrCpy $0 7414
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mpeg4
  IfErrors 0 label_7378
  Goto label_7379
label_7378:
  StrCmp $0 0 label_7388
label_7379:
  Push $0
  Push $1
  StrCpy $1 91
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_7396
label_7388:
  Push $0
  Push $1
  StrCpy $1 91
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_7396:
  StrCpy $0 7428
  Goto $0
  Return

  SectionGetFlags 91 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_7404 label_7404
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mpeg4 1
  Goto label_7405
label_7404:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mpeg4 0
label_7405:
  StrCpy $0 7453
  Goto $0
  Return

Section .mpg ; Section_92
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .mpg
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mpg
  IfErrors 0 label_7424
  Push $R0
  Push $R1
  StrCpy $R1 92
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_7424:
  StrCpy $0 7467
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mpg
  IfErrors 0 label_7431
  Goto label_7432
label_7431:
  StrCmp $0 0 label_7441
label_7432:
  Push $0
  Push $1
  StrCpy $1 92
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_7449
label_7441:
  Push $0
  Push $1
  StrCpy $1 92
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_7449:
  StrCpy $0 7481
  Goto $0
  Return

  SectionGetFlags 92 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_7457 label_7457
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mpg 1
  Goto label_7458
label_7457:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mpg 0
label_7458:
  StrCpy $0 7506
  Goto $0
  Return

Section .mpv2 ; Section_93
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .mpv2
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mpv2
  IfErrors 0 label_7477
  Push $R0
  Push $R1
  StrCpy $R1 93
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_7477:
  StrCpy $0 7520
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mpv2
  IfErrors 0 label_7484
  Goto label_7485
label_7484:
  StrCmp $0 0 label_7494
label_7485:
  Push $0
  Push $1
  StrCpy $1 93
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_7502
label_7494:
  Push $0
  Push $1
  StrCpy $1 93
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_7502:
  StrCpy $0 7534
  Goto $0
  Return

  SectionGetFlags 93 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_7510 label_7510
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mpv2 1
  Goto label_7511
label_7510:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mpv2 0
label_7511:
  StrCpy $0 7559
  Goto $0
  Return

Section .mts ; Section_94
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .mts
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mts
  IfErrors 0 label_7530
  Push $R0
  Push $R1
  StrCpy $R1 94
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_7530:
  StrCpy $0 7573
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mts
  IfErrors 0 label_7537
  Goto label_7538
label_7537:
  StrCmp $0 0 label_7547
label_7538:
  Push $0
  Push $1
  StrCpy $1 94
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_7555
label_7547:
  Push $0
  Push $1
  StrCpy $1 94
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_7555:
  StrCpy $0 7587
  Goto $0
  Return

  SectionGetFlags 94 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_7563 label_7563
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mts 1
  Goto label_7564
label_7563:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mts 0
label_7564:
  StrCpy $0 7612
  Goto $0
  Return

Section .mtv ; Section_95
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .mtv
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mtv
  IfErrors 0 label_7583
  Push $R0
  Push $R1
  StrCpy $R1 95
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_7583:
  StrCpy $0 7626
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mtv
  IfErrors 0 label_7590
  Goto label_7591
label_7590:
  StrCmp $0 0 label_7600
label_7591:
  Push $0
  Push $1
  StrCpy $1 95
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_7608
label_7600:
  Push $0
  Push $1
  StrCpy $1 95
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_7608:
  StrCpy $0 7640
  Goto $0
  Return

  SectionGetFlags 95 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_7616 label_7616
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mtv 1
  Goto label_7617
label_7616:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mtv 0
label_7617:
  StrCpy $0 7665
  Goto $0
  Return

Section .mxf ; Section_96
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .mxf
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mxf
  IfErrors 0 label_7636
  Push $R0
  Push $R1
  StrCpy $R1 96
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_7636:
  StrCpy $0 7679
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mxf
  IfErrors 0 label_7643
  Goto label_7644
label_7643:
  StrCmp $0 0 label_7653
label_7644:
  Push $0
  Push $1
  StrCpy $1 96
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_7661
label_7653:
  Push $0
  Push $1
  StrCpy $1 96
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_7661:
  StrCpy $0 7693
  Goto $0
  Return

  SectionGetFlags 96 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_7669 label_7669
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mxf 1
  Goto label_7670
label_7669:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.mxf 0
label_7670:
  StrCpy $0 7718
  Goto $0
  Return

Section .nsv ; Section_97
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .nsv
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.nsv
  IfErrors 0 label_7689
  Push $R0
  Push $R1
  StrCpy $R1 97
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_7689:
  StrCpy $0 7732
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.nsv
  IfErrors 0 label_7696
  Goto label_7697
label_7696:
  StrCmp $0 0 label_7706
label_7697:
  Push $0
  Push $1
  StrCpy $1 97
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_7714
label_7706:
  Push $0
  Push $1
  StrCpy $1 97
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_7714:
  StrCpy $0 7746
  Goto $0
  Return

  SectionGetFlags 97 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_7722 label_7722
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.nsv 1
  Goto label_7723
label_7722:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.nsv 0
label_7723:
  StrCpy $0 7771
  Goto $0
  Return

Section .nuv ; Section_98
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .nuv
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.nuv
  IfErrors 0 label_7742
  Push $R0
  Push $R1
  StrCpy $R1 98
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_7742:
  StrCpy $0 7785
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.nuv
  IfErrors 0 label_7749
  Goto label_7750
label_7749:
  StrCmp $0 0 label_7759
label_7750:
  Push $0
  Push $1
  StrCpy $1 98
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_7767
label_7759:
  Push $0
  Push $1
  StrCpy $1 98
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_7767:
  StrCpy $0 7799
  Goto $0
  Return

  SectionGetFlags 98 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_7775 label_7775
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.nuv 1
  Goto label_7776
label_7775:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.nuv 0
label_7776:
  StrCpy $0 7824
  Goto $0
  Return

Section .ogg ; Section_99
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .ogg
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.ogg
  IfErrors 0 label_7795
  Push $R0
  Push $R1
  StrCpy $R1 99
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_7795:
  StrCpy $0 7838
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.ogg
  IfErrors 0 label_7802
  Goto label_7803
label_7802:
  StrCmp $0 0 label_7812
label_7803:
  Push $0
  Push $1
  StrCpy $1 99
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_7820
label_7812:
  Push $0
  Push $1
  StrCpy $1 99
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_7820:
  StrCpy $0 7852
  Goto $0
  Return

  SectionGetFlags 99 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_7828 label_7828
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.ogg 1
  Goto label_7829
label_7828:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.ogg 0
label_7829:
  StrCpy $0 7877
  Goto $0
  Return

Section .ogm ; Section_100
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .ogm
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.ogm
  IfErrors 0 label_7848
  Push $R0
  Push $R1
  StrCpy $R1 100
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_7848:
  StrCpy $0 7891
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.ogm
  IfErrors 0 label_7855
  Goto label_7856
label_7855:
  StrCmp $0 0 label_7865
label_7856:
  Push $0
  Push $1
  StrCpy $1 100
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_7873
label_7865:
  Push $0
  Push $1
  StrCpy $1 100
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_7873:
  StrCpy $0 7905
  Goto $0
  Return

  SectionGetFlags 100 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_7881 label_7881
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.ogm 1
  Goto label_7882
label_7881:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.ogm 0
label_7882:
  StrCpy $0 7930
  Goto $0
  Return

Section .ogx ; Section_101
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .ogx
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.ogx
  IfErrors 0 label_7901
  Push $R0
  Push $R1
  StrCpy $R1 101
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_7901:
  StrCpy $0 7944
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.ogx
  IfErrors 0 label_7908
  Goto label_7909
label_7908:
  StrCmp $0 0 label_7918
label_7909:
  Push $0
  Push $1
  StrCpy $1 101
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_7926
label_7918:
  Push $0
  Push $1
  StrCpy $1 101
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_7926:
  StrCpy $0 7958
  Goto $0
  Return

  SectionGetFlags 101 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_7934 label_7934
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.ogx 1
  Goto label_7935
label_7934:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.ogx 0
label_7935:
  StrCpy $0 7983
  Goto $0
  Return

Section .ogv ; Section_102
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .ogv
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.ogv
  IfErrors 0 label_7954
  Push $R0
  Push $R1
  StrCpy $R1 102
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_7954:
  StrCpy $0 7997
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.ogv
  IfErrors 0 label_7961
  Goto label_7962
label_7961:
  StrCmp $0 0 label_7971
label_7962:
  Push $0
  Push $1
  StrCpy $1 102
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_7979
label_7971:
  Push $0
  Push $1
  StrCpy $1 102
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_7979:
  StrCpy $0 8011
  Goto $0
  Return

  SectionGetFlags 102 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_7987 label_7987
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.ogv 1
  Goto label_7988
label_7987:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.ogv 0
label_7988:
  StrCpy $0 8036
  Goto $0
  Return

Section .rec ; Section_103
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .rec
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.rec
  IfErrors 0 label_8007
  Push $R0
  Push $R1
  StrCpy $R1 103
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_8007:
  StrCpy $0 8050
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.rec
  IfErrors 0 label_8014
  Goto label_8015
label_8014:
  StrCmp $0 0 label_8024
label_8015:
  Push $0
  Push $1
  StrCpy $1 103
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_8032
label_8024:
  Push $0
  Push $1
  StrCpy $1 103
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_8032:
  StrCpy $0 8064
  Goto $0
  Return

  SectionGetFlags 103 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_8040 label_8040
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.rec 1
  Goto label_8041
label_8040:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.rec 0
label_8041:
  StrCpy $0 8089
  Goto $0
  Return

Section .rm ; Section_104
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .rm
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.rm
  IfErrors 0 label_8060
  Push $R0
  Push $R1
  StrCpy $R1 104
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_8060:
  StrCpy $0 8103
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.rm
  IfErrors 0 label_8067
  Goto label_8068
label_8067:
  StrCmp $0 0 label_8077
label_8068:
  Push $0
  Push $1
  StrCpy $1 104
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_8085
label_8077:
  Push $0
  Push $1
  StrCpy $1 104
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_8085:
  StrCpy $0 8117
  Goto $0
  Return

  SectionGetFlags 104 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_8093 label_8093
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.rm 1
  Goto label_8094
label_8093:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.rm 0
label_8094:
  StrCpy $0 8142
  Goto $0
  Return

Section .rmvb ; Section_105
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .rmvb
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.rmvb
  IfErrors 0 label_8113
  Push $R0
  Push $R1
  StrCpy $R1 105
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_8113:
  StrCpy $0 8156
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.rmvb
  IfErrors 0 label_8120
  Goto label_8121
label_8120:
  StrCmp $0 0 label_8130
label_8121:
  Push $0
  Push $1
  StrCpy $1 105
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_8138
label_8130:
  Push $0
  Push $1
  StrCpy $1 105
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_8138:
  StrCpy $0 8170
  Goto $0
  Return

  SectionGetFlags 105 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_8146 label_8146
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.rmvb 1
  Goto label_8147
label_8146:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.rmvb 0
label_8147:
  StrCpy $0 8195
  Goto $0
  Return

Section .rpl ; Section_106
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .rpl
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.rpl
  IfErrors 0 label_8166
  Push $R0
  Push $R1
  StrCpy $R1 106
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_8166:
  StrCpy $0 8209
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.rpl
  IfErrors 0 label_8173
  Goto label_8174
label_8173:
  StrCmp $0 0 label_8183
label_8174:
  Push $0
  Push $1
  StrCpy $1 106
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_8191
label_8183:
  Push $0
  Push $1
  StrCpy $1 106
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_8191:
  StrCpy $0 8223
  Goto $0
  Return

  SectionGetFlags 106 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_8199 label_8199
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.rpl 1
  Goto label_8200
label_8199:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.rpl 0
label_8200:
  StrCpy $0 8248
  Goto $0
  Return

Section .thp ; Section_107
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .thp
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.thp
  IfErrors 0 label_8219
  Push $R0
  Push $R1
  StrCpy $R1 107
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_8219:
  StrCpy $0 8262
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.thp
  IfErrors 0 label_8226
  Goto label_8227
label_8226:
  StrCmp $0 0 label_8236
label_8227:
  Push $0
  Push $1
  StrCpy $1 107
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_8244
label_8236:
  Push $0
  Push $1
  StrCpy $1 107
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_8244:
  StrCpy $0 8276
  Goto $0
  Return

  SectionGetFlags 107 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_8252 label_8252
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.thp 1
  Goto label_8253
label_8252:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.thp 0
label_8253:
  StrCpy $0 8301
  Goto $0
  Return

Section .tod ; Section_108
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .tod
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.tod
  IfErrors 0 label_8272
  Push $R0
  Push $R1
  StrCpy $R1 108
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_8272:
  StrCpy $0 8315
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.tod
  IfErrors 0 label_8279
  Goto label_8280
label_8279:
  StrCmp $0 0 label_8289
label_8280:
  Push $0
  Push $1
  StrCpy $1 108
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_8297
label_8289:
  Push $0
  Push $1
  StrCpy $1 108
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_8297:
  StrCpy $0 8329
  Goto $0
  Return

  SectionGetFlags 108 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_8305 label_8305
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.tod 1
  Goto label_8306
label_8305:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.tod 0
label_8306:
  StrCpy $0 8354
  Goto $0
  Return

Section .tp ; Section_109
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .tp
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.tp
  IfErrors 0 label_8325
  Push $R0
  Push $R1
  StrCpy $R1 109
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_8325:
  StrCpy $0 8368
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.tp
  IfErrors 0 label_8332
  Goto label_8333
label_8332:
  StrCmp $0 0 label_8342
label_8333:
  Push $0
  Push $1
  StrCpy $1 109
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_8350
label_8342:
  Push $0
  Push $1
  StrCpy $1 109
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_8350:
  StrCpy $0 8382
  Goto $0
  Return

  SectionGetFlags 109 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_8358 label_8358
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.tp 1
  Goto label_8359
label_8358:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.tp 0
label_8359:
  StrCpy $0 8407
  Goto $0
  Return

Section .ts ; Section_110
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .ts
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.ts
  IfErrors 0 label_8378
  Push $R0
  Push $R1
  StrCpy $R1 110
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_8378:
  StrCpy $0 8421
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.ts
  IfErrors 0 label_8385
  Goto label_8386
label_8385:
  StrCmp $0 0 label_8395
label_8386:
  Push $0
  Push $1
  StrCpy $1 110
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_8403
label_8395:
  Push $0
  Push $1
  StrCpy $1 110
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_8403:
  StrCpy $0 8435
  Goto $0
  Return

  SectionGetFlags 110 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_8411 label_8411
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.ts 1
  Goto label_8412
label_8411:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.ts 0
label_8412:
  StrCpy $0 8460
  Goto $0
  Return

Section .tts ; Section_111
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .tts
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.tts
  IfErrors 0 label_8431
  Push $R0
  Push $R1
  StrCpy $R1 111
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_8431:
  StrCpy $0 8474
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.tts
  IfErrors 0 label_8438
  Goto label_8439
label_8438:
  StrCmp $0 0 label_8448
label_8439:
  Push $0
  Push $1
  StrCpy $1 111
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_8456
label_8448:
  Push $0
  Push $1
  StrCpy $1 111
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_8456:
  StrCpy $0 8488
  Goto $0
  Return

  SectionGetFlags 111 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_8464 label_8464
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.tts 1
  Goto label_8465
label_8464:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.tts 0
label_8465:
  StrCpy $0 8513
  Goto $0
  Return

Section .vob ; Section_112
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .vob
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.vob
  IfErrors 0 label_8484
  Push $R0
  Push $R1
  StrCpy $R1 112
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_8484:
  StrCpy $0 8527
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.vob
  IfErrors 0 label_8491
  Goto label_8492
label_8491:
  StrCmp $0 0 label_8501
label_8492:
  Push $0
  Push $1
  StrCpy $1 112
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_8509
label_8501:
  Push $0
  Push $1
  StrCpy $1 112
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_8509:
  StrCpy $0 8541
  Goto $0
  Return

  SectionGetFlags 112 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_8517 label_8517
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.vob 1
  Goto label_8518
label_8517:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.vob 0
label_8518:
  StrCpy $0 8566
  Goto $0
  Return

Section .vro ; Section_113
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .vro
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.vro
  IfErrors 0 label_8537
  Push $R0
  Push $R1
  StrCpy $R1 113
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_8537:
  StrCpy $0 8580
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.vro
  IfErrors 0 label_8544
  Goto label_8545
label_8544:
  StrCmp $0 0 label_8554
label_8545:
  Push $0
  Push $1
  StrCpy $1 113
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_8562
label_8554:
  Push $0
  Push $1
  StrCpy $1 113
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_8562:
  StrCpy $0 8594
  Goto $0
  Return

  SectionGetFlags 113 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_8570 label_8570
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.vro 1
  Goto label_8571
label_8570:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.vro 0
label_8571:
  StrCpy $0 8619
  Goto $0
  Return

Section .webm ; Section_114
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .webm
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.webm
  IfErrors 0 label_8590
  Push $R0
  Push $R1
  StrCpy $R1 114
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_8590:
  StrCpy $0 8633
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.webm
  IfErrors 0 label_8597
  Goto label_8598
label_8597:
  StrCmp $0 0 label_8607
label_8598:
  Push $0
  Push $1
  StrCpy $1 114
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_8615
label_8607:
  Push $0
  Push $1
  StrCpy $1 114
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_8615:
  StrCpy $0 8647
  Goto $0
  Return

  SectionGetFlags 114 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_8623 label_8623
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.webm 1
  Goto label_8624
label_8623:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.webm 0
label_8624:
  StrCpy $0 8672
  Goto $0
  Return

Section .wmv ; Section_115
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .wmv
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.wmv
  IfErrors 0 label_8643
  Push $R0
  Push $R1
  StrCpy $R1 115
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_8643:
  StrCpy $0 8686
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.wmv
  IfErrors 0 label_8650
  Goto label_8651
label_8650:
  StrCmp $0 0 label_8660
label_8651:
  Push $0
  Push $1
  StrCpy $1 115
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_8668
label_8660:
  Push $0
  Push $1
  StrCpy $1 115
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_8668:
  StrCpy $0 8700
  Goto $0
  Return

  SectionGetFlags 115 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_8676 label_8676
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.wmv 1
  Goto label_8677
label_8676:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.wmv 0
label_8677:
  StrCpy $0 8725
  Goto $0
  Return

Section .wtv ; Section_116
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .wtv
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.wtv
  IfErrors 0 label_8696
  Push $R0
  Push $R1
  StrCpy $R1 116
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_8696:
  StrCpy $0 8739
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.wtv
  IfErrors 0 label_8703
  Goto label_8704
label_8703:
  StrCmp $0 0 label_8713
label_8704:
  Push $0
  Push $1
  StrCpy $1 116
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_8721
label_8713:
  Push $0
  Push $1
  StrCpy $1 116
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_8721:
  StrCpy $0 8753
  Goto $0
  Return

  SectionGetFlags 116 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_8729 label_8729
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.wtv 1
  Goto label_8730
label_8729:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.wtv 0
label_8730:
  StrCpy $0 8778
  Goto $0
  Return

Section .xesc ; Section_117
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .xesc
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.xesc
  IfErrors 0 label_8749
  Push $R0
  Push $R1
  StrCpy $R1 117
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_8749:
  StrCpy $0 8794
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.xesc
  IfErrors 0 label_8756
  Goto label_8757
label_8756:
  StrCmp $0 0 label_8766
label_8757:
  Push $0
  Push $1
  StrCpy $1 117
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_8774
label_8766:
  Push $0
  Push $1
  StrCpy $1 117
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_8774:
  StrCpy $0 8808
  Goto $0
  Return

  SectionGetFlags 117 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_8782 label_8782
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.xesc 1
  Goto label_8783
label_8782:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Video_.xesc 0
label_8783:
  StrCpy $0 8833
  Goto $0
  Return

SectionGroupEnd

SectionGroup $(LSTR_91)    ; Section 119    ;  Other

Section .asx ; Section_120
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .asx
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.asx
  IfErrors 0 label_8804
  Push $R0
  Push $R1
  StrCpy $R1 120
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_8804:
  StrCpy $0 8847
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.asx
  IfErrors 0 label_8811
  Goto label_8812
label_8811:
  StrCmp $0 0 label_8821
label_8812:
  Push $0
  Push $1
  StrCpy $1 120
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_8829
label_8821:
  Push $0
  Push $1
  StrCpy $1 120
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_8829:
  StrCpy $0 8861
  Goto $0
  Return

  SectionGetFlags 120 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_8837 label_8837
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.asx 1
  Goto label_8838
label_8837:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.asx 0
label_8838:
  StrCpy $0 8886
  Goto $0
  Return

Section .b4s ; Section_121
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .b4s
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.b4s
  IfErrors 0 label_8857
  Push $R0
  Push $R1
  StrCpy $R1 121
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_8857:
  StrCpy $0 8900
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.b4s
  IfErrors 0 label_8864
  Goto label_8865
label_8864:
  StrCmp $0 0 label_8874
label_8865:
  Push $0
  Push $1
  StrCpy $1 121
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_8882
label_8874:
  Push $0
  Push $1
  StrCpy $1 121
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_8882:
  StrCpy $0 8914
  Goto $0
  Return

  SectionGetFlags 121 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_8890 label_8890
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.b4s 1
  Goto label_8891
label_8890:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.b4s 0
label_8891:
  StrCpy $0 8939
  Goto $0
  Return

Section .cue ; Section_122
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .cue
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.cue
  IfErrors 0 label_8910
  Push $R0
  Push $R1
  StrCpy $R1 122
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_8910:
  StrCpy $0 8953
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.cue
  IfErrors 0 label_8917
  Goto label_8918
label_8917:
  StrCmp $0 0 label_8927
label_8918:
  Push $0
  Push $1
  StrCpy $1 122
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_8935
label_8927:
  Push $0
  Push $1
  StrCpy $1 122
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_8935:
  StrCpy $0 8967
  Goto $0
  Return

  SectionGetFlags 122 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_8943 label_8943
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.cue 1
  Goto label_8944
label_8943:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.cue 0
label_8944:
  StrCpy $0 8992
  Goto $0
  Return

Section .ifo ; Section_123
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .ifo
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.ifo
  IfErrors 0 label_8963
  Push $R0
  Push $R1
  StrCpy $R1 123
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_8963:
  StrCpy $0 9006
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.ifo
  IfErrors 0 label_8970
  Goto label_8971
label_8970:
  StrCmp $0 0 label_8980
label_8971:
  Push $0
  Push $1
  StrCpy $1 123
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_8988
label_8980:
  Push $0
  Push $1
  StrCpy $1 123
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_8988:
  StrCpy $0 9020
  Goto $0
  Return

  SectionGetFlags 123 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_8996 label_8996
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.ifo 1
  Goto label_8997
label_8996:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.ifo 0
label_8997:
  StrCpy $0 9045
  Goto $0
  Return

Section .m3u ; Section_124
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .m3u
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.m3u
  IfErrors 0 label_9016
  Push $R0
  Push $R1
  StrCpy $R1 124
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_9016:
  StrCpy $0 9059
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.m3u
  IfErrors 0 label_9023
  Goto label_9024
label_9023:
  StrCmp $0 0 label_9033
label_9024:
  Push $0
  Push $1
  StrCpy $1 124
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_9041
label_9033:
  Push $0
  Push $1
  StrCpy $1 124
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_9041:
  StrCpy $0 9073
  Goto $0
  Return

  SectionGetFlags 124 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_9049 label_9049
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.m3u 1
  Goto label_9050
label_9049:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.m3u 0
label_9050:
  StrCpy $0 9098
  Goto $0
  Return

Section .m3u8 ; Section_125
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .m3u8
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.m3u8
  IfErrors 0 label_9069
  Push $R0
  Push $R1
  StrCpy $R1 125
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_9069:
  StrCpy $0 9112
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.m3u8
  IfErrors 0 label_9076
  Goto label_9077
label_9076:
  StrCmp $0 0 label_9086
label_9077:
  Push $0
  Push $1
  StrCpy $1 125
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_9094
label_9086:
  Push $0
  Push $1
  StrCpy $1 125
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_9094:
  StrCpy $0 9126
  Goto $0
  Return

  SectionGetFlags 125 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_9102 label_9102
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.m3u8 1
  Goto label_9103
label_9102:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.m3u8 0
label_9103:
  StrCpy $0 9151
  Goto $0
  Return

Section .pls ; Section_126
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .pls
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.pls
  IfErrors 0 label_9122
  Push $R0
  Push $R1
  StrCpy $R1 126
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_9122:
  StrCpy $0 9165
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.pls
  IfErrors 0 label_9129
  Goto label_9130
label_9129:
  StrCmp $0 0 label_9139
label_9130:
  Push $0
  Push $1
  StrCpy $1 126
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_9147
label_9139:
  Push $0
  Push $1
  StrCpy $1 126
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_9147:
  StrCpy $0 9179
  Goto $0
  Return

  SectionGetFlags 126 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_9155 label_9155
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.pls 1
  Goto label_9156
label_9155:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.pls 0
label_9156:
  StrCpy $0 9204
  Goto $0
  Return

Section .ram ; Section_127
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .ram
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.ram
  IfErrors 0 label_9175
  Push $R0
  Push $R1
  StrCpy $R1 127
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_9175:
  StrCpy $0 9218
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.ram
  IfErrors 0 label_9182
  Goto label_9183
label_9182:
  StrCmp $0 0 label_9192
label_9183:
  Push $0
  Push $1
  StrCpy $1 127
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_9200
label_9192:
  Push $0
  Push $1
  StrCpy $1 127
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_9200:
  StrCpy $0 9232
  Goto $0
  Return

  SectionGetFlags 127 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_9208 label_9208
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.ram 1
  Goto label_9209
label_9208:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.ram 0
label_9209:
  StrCpy $0 9257
  Goto $0
  Return

Section .sdp ; Section_128
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .sdp
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.sdp
  IfErrors 0 label_9228
  Push $R0
  Push $R1
  StrCpy $R1 128
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_9228:
  StrCpy $0 9271
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.sdp
  IfErrors 0 label_9235
  Goto label_9236
label_9235:
  StrCmp $0 0 label_9245
label_9236:
  Push $0
  Push $1
  StrCpy $1 128
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_9253
label_9245:
  Push $0
  Push $1
  StrCpy $1 128
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_9253:
  StrCpy $0 9285
  Goto $0
  Return

  SectionGetFlags 128 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_9261 label_9261
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.sdp 1
  Goto label_9262
label_9261:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.sdp 0
label_9262:
  StrCpy $0 9310
  Goto $0
  Return

Section .vlc ; Section_129
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .vlc
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.vlc
  IfErrors 0 label_9281
  Push $R0
  Push $R1
  StrCpy $R1 129
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_9281:
  StrCpy $0 9324
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.vlc
  IfErrors 0 label_9288
  Goto label_9289
label_9288:
  StrCmp $0 0 label_9298
label_9289:
  Push $0
  Push $1
  StrCpy $1 129
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_9306
label_9298:
  Push $0
  Push $1
  StrCpy $1 129
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_9306:
  StrCpy $0 9338
  Goto $0
  Return

  SectionGetFlags 129 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_9314 label_9314
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.vlc 1
  Goto label_9315
label_9314:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.vlc 0
label_9315:
  StrCpy $0 9363
  Goto $0
  Return

Section .wvx ; Section_130
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .wvx
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.wvx
  IfErrors 0 label_9334
  Push $R0
  Push $R1
  StrCpy $R1 130
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_9334:
  StrCpy $0 9377
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.wvx
  IfErrors 0 label_9341
  Goto label_9342
label_9341:
  StrCmp $0 0 label_9351
label_9342:
  Push $0
  Push $1
  StrCpy $1 130
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_9359
label_9351:
  Push $0
  Push $1
  StrCpy $1 130
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_9359:
  StrCpy $0 9391
  Goto $0
  Return

  SectionGetFlags 130 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_9367 label_9367
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.wvx 1
  Goto label_9368
label_9367:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.wvx 0
label_9368:
  StrCpy $0 9416
  Goto $0
  Return

Section .xspf ; Section_131
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .xspf
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.xspf
  IfErrors 0 label_9387
  Push $R0
  Push $R1
  StrCpy $R1 131
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_9387:
  StrCpy $0 9430
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.xspf
  IfErrors 0 label_9394
  Goto label_9395
label_9394:
  StrCmp $0 0 label_9404
label_9395:
  Push $0
  Push $1
  StrCpy $1 131
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_9412
label_9404:
  Push $0
  Push $1
  StrCpy $1 131
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_9412:
  StrCpy $0 9444
  Goto $0
  Return

  SectionGetFlags 131 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_9420 label_9420
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.xspf 1
  Goto label_9421
label_9420:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.xspf 0
label_9421:
  StrCpy $0 9469
  Goto $0
  Return

Section .wpl ; Section_132
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .wpl
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.wpl
  IfErrors 0 label_9440
  Push $R0
  Push $R1
  StrCpy $R1 132
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_9440:
  StrCpy $0 9483
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.wpl
  IfErrors 0 label_9447
  Goto label_9448
label_9447:
  StrCmp $0 0 label_9457
label_9448:
  Push $0
  Push $1
  StrCpy $1 132
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_9465
label_9457:
  Push $0
  Push $1
  StrCpy $1 132
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_9465:
  StrCpy $0 9497
  Goto $0
  Return

  SectionGetFlags 132 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_9473 label_9473
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.wpl 1
  Goto label_9474
label_9473:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.wpl 0
label_9474:
  StrCpy $0 9522
  Goto $0
  Return

Section .zpl ; Section_133
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .zpl
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.zpl
  IfErrors 0 label_9493
  Push $R0
  Push $R1
  StrCpy $R1 133
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_9493:
  StrCpy $0 9536
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.zpl
  IfErrors 0 label_9500
  Goto label_9501
label_9500:
  StrCmp $0 0 label_9510
label_9501:
  Push $0
  Push $1
  StrCpy $1 133
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_9518
label_9510:
  Push $0
  Push $1
  StrCpy $1 133
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_9518:
  StrCpy $0 9550
  Goto $0
  Return

  SectionGetFlags 133 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_9526 label_9526
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.zpl 1
  Goto label_9527
label_9526:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.zpl 0
label_9527:
  StrCpy $0 9575
  Goto $0
  Return

Section /o .vlt ; Section_134
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .vlt
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_SKIN_.vlt
  IfErrors 0 label_9546
  Push $R0
  Push $R1
  StrCpy $R1 134
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_9546:
  StrCpy $0 9589
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_SKIN_.vlt
  IfErrors 0 label_9553
  Goto label_9554
label_9553:
  StrCmp $0 0 0 label_9563
label_9554:
  Push $0
  Push $1
  StrCpy $1 134
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_9571
label_9563:
  Push $0
  Push $1
  StrCpy $1 134
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_9571:
  StrCpy $0 9603
  Goto $0
  Return

  SectionGetFlags 134 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_9579 label_9579
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_SKIN_.vlt 1
  Goto label_9580
label_9579:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_SKIN_.vlt 0
label_9580:
  StrCpy $0 9628
  Goto $0
  Return

Section /o .wsz ; Section_135
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .wsz
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_SKIN_.wsz
  IfErrors 0 label_9599
  Push $R0
  Push $R1
  StrCpy $R1 135
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_9599:
  StrCpy $0 9642
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_SKIN_.wsz
  IfErrors 0 label_9606
  Goto label_9607
label_9606:
  StrCmp $0 0 0 label_9616
label_9607:
  Push $0
  Push $1
  StrCpy $1 135
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_9624
label_9616:
  Push $0
  Push $1
  StrCpy $1 135
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_9624:
  StrCpy $0 9656
  Goto $0
  Return

  SectionGetFlags 135 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_9632 label_9632
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_SKIN_.wsz 1
  Goto label_9633
label_9632:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_SKIN_.wsz 0
label_9633:
  StrCpy $0 9681
  Goto $0
  Return

Section /o .iso ; Section_136
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .iso
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.iso
  IfErrors 0 label_9652
  Push $R0
  Push $R1
  StrCpy $R1 136
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_9652:
  StrCpy $0 9695
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.iso
  IfErrors 0 label_9659
  Goto label_9660
label_9659:
  StrCmp $0 0 0 label_9669
label_9660:
  Push $0
  Push $1
  StrCpy $1 136
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_9677
label_9669:
  Push $0
  Push $1
  StrCpy $1 136
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_9677:
  StrCpy $0 9709
  Goto $0
  Return

  SectionGetFlags 136 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_9685 label_9685
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.iso 1
  Goto label_9686
label_9685:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.iso 0
label_9686:
  StrCpy $0 9734
  Goto $0
  Return

Section /o .mid ; Section_137
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .mid
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.mid
  IfErrors 0 label_9705
  Push $R0
  Push $R1
  StrCpy $R1 137
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_9705:
  StrCpy $0 9748
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.mid
  IfErrors 0 label_9712
  Goto label_9713
label_9712:
  StrCmp $0 0 0 label_9722
label_9713:
  Push $0
  Push $1
  StrCpy $1 137
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_9730
label_9722:
  Push $0
  Push $1
  StrCpy $1 137
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_9730:
  StrCpy $0 9762
  Goto $0
  Return

  SectionGetFlags 137 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_9738 label_9738
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.mid 1
  Goto label_9739
label_9738:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Audio_.mid 0
label_9739:
  StrCpy $0 9787
  Goto $0
  Return

Section /o .zip ; Section_138
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .zip
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.zip
  IfErrors 0 label_9758
  Push $R0
  Push $R1
  StrCpy $R1 138
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_9758:
  StrCpy $0 9801
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.zip
  IfErrors 0 label_9765
  Goto label_9766
label_9765:
  StrCmp $0 0 0 label_9775
label_9766:
  Push $0
  Push $1
  StrCpy $1 138
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_9783
label_9775:
  Push $0
  Push $1
  StrCpy $1 138
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_9783:
  StrCpy $0 9815
  Goto $0
  Return

  SectionGetFlags 138 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_9791 label_9791
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.zip 1
  Goto label_9792
label_9791:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.zip 0
label_9792:
  StrCpy $0 9840
  Goto $0
  Return

Section /o .rar ; Section_139
  SectionIn 1 3
  Push $R0
  StrCpy $R0 .rar
  Call func_553
  Pop $R0
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.rar
  IfErrors 0 label_9811
  Push $R0
  Push $R1
  StrCpy $R1 139
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_9811:
  StrCpy $0 10860
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.rar
  IfErrors 0 label_9818
  Goto label_9819
label_9818:
  StrCmp $0 0 0 label_9828
label_9819:
  Push $0
  Push $1
  StrCpy $1 139
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_9836
label_9828:
  Push $0
  Push $1
  StrCpy $1 139
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_9836:
  StrCpy $0 10874
  Goto $0
  Return

  SectionGetFlags 139 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_9844 label_9844
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.rar 1
  Goto label_9845
label_9844:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC_EXT_Other_.rar 0
label_9845:
  StrCpy $0 10899
  Goto $0
  Return

SectionGroupEnd

SectionGroupEnd

Section $(LSTR_92) ; Section_142    ;  "Context Menus"
  SectionIn 1 3
  WriteRegStr HKCR VLC.3ga\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.3ga\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.3ga\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.3ga\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.3ga\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.3ga\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.3ga\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.3ga\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.669\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.669\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.669\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.669\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.669\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.669\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.669\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.669\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.a52\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.a52\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.a52\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.a52\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.a52\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.a52\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.a52\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.a52\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.aac\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.aac\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.aac\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.aac\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.aac\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.aac\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.aac\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.aac\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.ac3\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.ac3\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.ac3\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.ac3\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.ac3\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.ac3\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.ac3\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.ac3\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.adt\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.adt\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.adt\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.adt\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.adt\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.adt\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.adt\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.adt\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.adts\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.adts\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.adts\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.adts\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.adts\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.adts\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.adts\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.adts\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.aif\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.aif\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.aif\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.aif\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.aif\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.aif\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.aif\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.aif\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.aifc\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.aifc\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.aifc\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.aifc\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.aifc\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.aifc\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.aifc\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.aifc\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.aiff\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.aiff\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.aiff\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.aiff\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.aiff\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.aiff\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.aiff\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.aiff\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.au\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.au\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.au\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.au\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.au\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.au\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.au\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.au\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.amr\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.amr\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.amr\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.amr\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.amr\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.amr\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.amr\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.amr\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.aob\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.aob\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.aob\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.aob\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.aob\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.aob\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.aob\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.aob\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.ape\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.ape\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.ape\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.ape\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.ape\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.ape\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.ape\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.ape\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.caf\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.caf\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.caf\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.caf\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.caf\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.caf\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.caf\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.caf\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.cda\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.cda\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.cda\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.cda\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.cda\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.cda\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.cda\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.cda\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.dts\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.dts\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.dts\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.dts\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.dts\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.dts\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.dts\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.dts\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.flac\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.flac\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.flac\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.flac\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.flac\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.flac\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.flac\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.flac\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.it\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.it\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.it\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.it\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.it\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.it\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.it\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.it\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.m4a\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.m4a\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.m4a\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.m4a\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.m4a\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.m4a\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.m4a\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.m4a\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.m4p\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.m4p\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.m4p\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.m4p\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.m4p\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.m4p\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.m4p\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.m4p\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mka\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.mka\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mka\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mka\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mka\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.mka\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mka\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mka\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mlp\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.mlp\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mlp\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mlp\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mlp\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.mlp\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mlp\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mlp\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mod\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.mod\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mod\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mod\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mod\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.mod\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mod\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mod\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mp1\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.mp1\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mp1\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mp1\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mp1\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.mp1\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mp1\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mp1\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mp2\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.mp2\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mp2\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mp2\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mp2\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.mp2\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mp2\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mp2\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mp3\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.mp3\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mp3\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mp3\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mp3\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.mp3\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mp3\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mp3\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mpc\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.mpc\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mpc\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mpc\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mpc\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.mpc\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mpc\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mpc\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mpga\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.mpga\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mpga\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mpga\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mpga\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.mpga\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mpga\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mpga\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.oga\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.oga\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.oga\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.oga\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.oga\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.oga\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.oga\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.oga\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.oma\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.oma\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.oma\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.oma\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.oma\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.oma\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.oma\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.oma\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.opus\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.opus\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.opus\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.opus\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.opus\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.opus\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.opus\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.opus\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.qcp\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.qcp\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.qcp\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.qcp\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.qcp\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.qcp\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.qcp\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.qcp\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.ra\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.ra\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.ra\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.ra\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.ra\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.ra\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.ra\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.ra\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.rmi\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.rmi\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.rmi\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.rmi\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.rmi\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.rmi\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.rmi\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.rmi\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.snd\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.snd\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.snd\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.snd\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.snd\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.snd\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.snd\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.snd\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.s3m\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.s3m\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.s3m\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.s3m\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.s3m\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.s3m\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.s3m\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.s3m\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.spx\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.spx\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.spx\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.spx\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.spx\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.spx\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.spx\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.spx\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.tta\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.tta\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.tta\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.tta\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.tta\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.tta\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.tta\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.tta\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.voc\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.voc\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.voc\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.voc\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.voc\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.voc\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.voc\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.voc\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.vqf\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.vqf\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.vqf\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.vqf\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.vqf\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.vqf\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.vqf\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.vqf\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.w64\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.w64\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.w64\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.w64\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.w64\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.w64\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.w64\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.w64\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.wav\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.wav\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.wav\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.wav\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.wav\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.wav\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.wav\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.wav\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.wma\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.wma\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.wma\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.wma\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.wma\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.wma\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.wma\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.wma\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.wv\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.wv\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.wv\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.wv\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.wv\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.wv\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.wv\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.wv\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.xa\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.xa\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.xa\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.xa\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.xa\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.xa\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.xa\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.xa\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.xm\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.xm\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.xm\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.xm\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.xm\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.xm\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.xm\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.xm\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.3g2\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.3g2\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.3g2\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.3g2\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.3g2\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.3g2\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.3g2\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.3g2\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.3gp\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.3gp\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.3gp\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.3gp\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.3gp\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.3gp\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.3gp\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.3gp\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.3gp2\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.3gp2\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.3gp2\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.3gp2\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.3gp2\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.3gp2\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.3gp2\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.3gp2\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.3gpp\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.3gpp\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.3gpp\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.3gpp\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.3gpp\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.3gpp\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.3gpp\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.3gpp\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.amv\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.amv\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.amv\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.amv\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.amv\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.amv\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.amv\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.amv\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.asf\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.asf\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.asf\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.asf\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.asf\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.asf\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.asf\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.asf\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.avi\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.avi\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.avi\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.avi\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.avi\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.avi\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.avi\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.avi\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.bik\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.bik\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.bik\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.bik\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.bik\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.bik\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.bik\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.bik\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.dav\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.dav\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.dav\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.dav\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.dav\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.dav\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.dav\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.dav\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.divx\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.divx\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.divx\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.divx\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.divx\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.divx\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.divx\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.divx\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.drc\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.drc\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.drc\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.drc\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.drc\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.drc\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.drc\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.drc\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.dv\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.dv\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.dv\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.dv\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.dv\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.dv\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.dv\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.dv\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.dvr-ms\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.dvr-ms\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.dvr-ms\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.dvr-ms\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.dvr-ms\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.dvr-ms\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.dvr-ms\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.dvr-ms\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.evo\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.evo\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.evo\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.evo\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.evo\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.evo\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.evo\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.evo\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.f4v\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.f4v\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.f4v\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.f4v\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.f4v\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.f4v\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.f4v\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.f4v\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.flv\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.flv\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.flv\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.flv\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.flv\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.flv\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.flv\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.flv\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.gvi\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.gvi\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.gvi\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.gvi\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.gvi\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.gvi\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.gvi\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.gvi\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.gxf\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.gxf\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.gxf\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.gxf\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.gxf\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.gxf\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.gxf\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.gxf\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.m1v\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.m1v\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.m1v\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.m1v\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.m1v\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.m1v\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.m1v\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.m1v\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.m2t\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.m2t\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.m2t\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.m2t\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.m2t\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.m2t\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.m2t\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.m2t\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.m2v\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.m2v\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.m2v\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.m2v\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.m2v\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.m2v\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.m2v\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.m2v\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.m2ts\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.m2ts\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.m2ts\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.m2ts\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.m2ts\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.m2ts\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.m2ts\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.m2ts\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.m4v\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.m4v\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.m4v\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.m4v\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.m4v\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.m4v\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.m4v\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.m4v\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mkv\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.mkv\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mkv\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mkv\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mkv\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.mkv\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mkv\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mkv\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mov\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.mov\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mov\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mov\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mov\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.mov\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mov\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mov\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mp2v\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.mp2v\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mp2v\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mp2v\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mp2v\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.mp2v\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mp2v\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mp2v\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mp4\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.mp4\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mp4\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mp4\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mp4\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.mp4\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mp4\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mp4\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mp4v\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.mp4v\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mp4v\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mp4v\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mp4v\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.mp4v\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mp4v\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mp4v\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mpa\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.mpa\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mpa\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mpa\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mpa\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.mpa\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mpa\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mpa\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mpe\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.mpe\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mpe\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mpe\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mpe\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.mpe\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mpe\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mpe\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mpeg\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.mpeg\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mpeg\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mpeg\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mpeg\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.mpeg\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mpeg\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mpeg\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mpeg1\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.mpeg1\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mpeg1\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mpeg1\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mpeg1\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.mpeg1\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mpeg1\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mpeg1\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mpeg2\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.mpeg2\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mpeg2\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mpeg2\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mpeg2\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.mpeg2\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mpeg2\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mpeg2\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mpeg4\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.mpeg4\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mpeg4\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mpeg4\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mpeg4\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.mpeg4\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mpeg4\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mpeg4\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mpg\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.mpg\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mpg\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mpg\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mpg\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.mpg\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mpg\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mpg\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mpv2\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.mpv2\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mpv2\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mpv2\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mpv2\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.mpv2\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mpv2\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mpv2\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mts\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.mts\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mts\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mts\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mts\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.mts\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mts\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mts\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mtv\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.mtv\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mtv\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mtv\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mtv\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.mtv\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mtv\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mtv\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mxf\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.mxf\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mxf\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mxf\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mxf\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.mxf\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mxf\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mxf\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.nsv\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.nsv\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.nsv\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.nsv\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.nsv\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.nsv\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.nsv\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.nsv\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.nuv\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.nuv\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.nuv\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.nuv\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.nuv\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.nuv\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.nuv\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.nuv\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.ogg\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.ogg\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.ogg\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.ogg\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.ogg\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.ogg\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.ogg\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.ogg\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.ogm\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.ogm\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.ogm\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.ogm\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.ogm\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.ogm\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.ogm\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.ogm\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.ogx\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.ogx\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.ogx\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.ogx\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.ogx\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.ogx\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.ogx\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.ogx\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.ogv\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.ogv\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.ogv\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.ogv\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.ogv\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.ogv\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.ogv\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.ogv\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.rec\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.rec\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.rec\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.rec\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.rec\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.rec\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.rec\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.rec\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.rm\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.rm\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.rm\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.rm\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.rm\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.rm\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.rm\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.rm\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.rmvb\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.rmvb\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.rmvb\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.rmvb\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.rmvb\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.rmvb\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.rmvb\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.rmvb\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.rpl\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.rpl\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.rpl\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.rpl\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.rpl\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.rpl\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.rpl\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.rpl\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.thp\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.thp\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.thp\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.thp\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.thp\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.thp\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.thp\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.thp\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.tod\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.tod\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.tod\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.tod\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.tod\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.tod\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.tod\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.tod\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.tp\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.tp\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.tp\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.tp\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.tp\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.tp\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.tp\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.tp\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.ts\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.ts\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.ts\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.ts\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.ts\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.ts\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.ts\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.ts\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.tts\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.tts\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.tts\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.tts\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.tts\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.tts\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.tts\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.tts\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.vob\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.vob\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.vob\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.vob\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.vob\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.vob\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.vob\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.vob\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.vro\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.vro\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.vro\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.vro\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.vro\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.vro\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.vro\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.vro\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.webm\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.webm\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.webm\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.webm\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.webm\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.webm\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.webm\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.webm\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.wmv\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.wmv\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.wmv\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.wmv\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.wmv\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.wmv\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.wmv\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.wmv\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.wtv\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.wtv\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.wtv\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.wtv\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.wtv\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.wtv\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.wtv\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.wtv\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.xesc\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.xesc\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.xesc\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.xesc\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.xesc\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.xesc\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.xesc\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.xesc\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.asx\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.asx\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.asx\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.asx\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.asx\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.asx\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.asx\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.asx\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.b4s\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.b4s\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.b4s\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.b4s\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.b4s\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.b4s\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.b4s\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.b4s\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.cue\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.cue\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.cue\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.cue\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.cue\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.cue\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.cue\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.cue\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.ifo\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.ifo\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.ifo\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.ifo\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.ifo\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.ifo\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.ifo\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.ifo\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.m3u\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.m3u\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.m3u\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.m3u\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.m3u\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.m3u\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.m3u\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.m3u\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.m3u8\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.m3u8\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.m3u8\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.m3u8\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.m3u8\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.m3u8\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.m3u8\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.m3u8\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.pls\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.pls\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.pls\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.pls\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.pls\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.pls\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.pls\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.pls\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.ram\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.ram\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.ram\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.ram\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.ram\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.ram\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.ram\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.ram\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.sdp\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.sdp\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.sdp\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.sdp\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.sdp\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.sdp\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.sdp\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.sdp\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.vlc\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.vlc\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.vlc\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.vlc\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.vlc\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.vlc\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.vlc\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.vlc\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.wvx\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.wvx\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.wvx\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.wvx\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.wvx\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.wvx\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.wvx\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.wvx\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.xspf\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.xspf\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.xspf\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.xspf\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.xspf\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.xspf\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.xspf\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.xspf\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.wpl\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.wpl\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.wpl\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.wpl\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.wpl\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.wpl\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.wpl\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.wpl\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.zpl\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.zpl\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.zpl\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.zpl\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.zpl\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.zpl\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.zpl\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.zpl\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.iso\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.iso\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.iso\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.iso\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.iso\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.iso\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.iso\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.iso\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mid\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.mid\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mid\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mid\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.mid\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.mid\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.mid\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.mid\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.zip\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.zip\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.zip\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.zip\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.zip\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.zip\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.zip\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.zip\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.rar\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR VLC.rar\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.rar\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.rar\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR VLC.rar\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR VLC.rar\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR VLC.rar\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR VLC.rar\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
  WriteRegStr HKCR Directory\shell\PlayWithVLC "" $(LSTR_74)    ;  "Play with VLC media player"
  WriteRegStr HKCR Directory\shell\PlayWithVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR Directory\shell\PlayWithVLC MultiSelectModel Player
  WriteRegStr HKCR Directory\shell\PlayWithVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --no-playlist-enqueue $\"%1$\""
  WriteRegStr HKCR Directory\shell\AddToPlaylistVLC "" $(LSTR_93)    ;  "Add to VLC media player's Playlist"
  WriteRegStr HKCR Directory\shell\AddToPlaylistVLC Icon $\"$INSTDIR\vlc.exe$\",0
  WriteRegStr HKCR Directory\shell\AddToPlaylistVLC MultiSelectModel Player
  WriteRegStr HKCR Directory\shell\AddToPlaylistVLC\command "" "$\"$INSTDIR\vlc.exe$\" --started-from-file --playlist-enqueue $\"%1$\""
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC07
  IfErrors 0 label_10870
  Push $R0
  Push $R1
  StrCpy $R1 142
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_10870:
  StrCpy $0 10918
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC07
  IfErrors 0 label_10877
  Goto label_10878
label_10877:
  StrCmp $0 0 label_10887
label_10878:
  Push $0
  Push $1
  StrCpy $1 142
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_10895
label_10887:
  Push $0
  Push $1
  StrCpy $1 142
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_10895:
  StrCpy $0 10932
  Goto $0
  Return

  SectionGetFlags 142 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_10903 label_10903
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC07 1
  Goto label_10904
label_10903:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC07 0
label_10904:
  StrCpy $0 10957
  Goto $0
  Return

Section /o $(LSTR_94) ; Section_143    ;  "Delete preferences and cache"
  StrCpy $0 0
label_10908:
  ClearErrors
  EnumRegKey $1 HKU "" $0
  StrCmp $1 "" label_10916
  IntOp $0 $0 + 1
  ReadRegStr $2 HKU "$1\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" AppData
  StrCmp $2 "" label_10908
  RMDir /r $2\vlc
  Goto label_10908
label_10916:
SectionEnd


  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC08
  IfErrors 0 label_10928
  Push $R0
  Push $R1
  StrCpy $R1 143
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_10928:
  StrCpy $0 10966
  Goto $0
  Return

  ClearErrors
  ReadRegDWORD $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC08
  IfErrors 0 label_10935
  Goto label_10936
label_10935:
  StrCmp $0 0 0 label_10945
label_10936:
  Push $0
  Push $1
  StrCpy $1 143
  SectionGetFlags $1 $0
  IntOp $0 $0 & 0xFFFFFFFE
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
  Goto label_10953
label_10945:
  Push $0
  Push $1
  StrCpy $1 143
  SectionGetFlags $1 $0
  IntOp $0 $0 | 1
  SectionSetFlags $1 $0
  Pop $1
  Pop $0
label_10953:
  StrCpy $0 10967
  Goto $0
  Return

  SectionGetFlags 143 $_62_
  IntOp $_62_ $_62_ & 1
  IntCmp $_62_ 1 0 label_10961 label_10961
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC08 1
  Goto label_10962
label_10961:
  WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSection_SEC08 0
label_10962:
  StrCpy $0 10968
  Goto $0
  Return

  Return

  Return

  Return

Function .onMouseOverSection
  StrCmp $0 -1 0 label_10973
  SendMessage $_39_ ${WM_SETTEXT} 0 STR:
  EnableWindow $_39_ 0
  SendMessage $_39_ ${WM_SETTEXT} 0 STR:$_38_
  Goto label_11012
label_10973:
  StrCmp $0 0 0 label_10978
  SendMessage $_39_ ${WM_SETTEXT} 0 STR:
  EnableWindow $_39_ 1
  SendMessage $_39_ ${WM_SETTEXT} 0 STR:$(LSTR_95)    ;  "The media player itself"
  Goto label_11012
label_10978:
  StrCmp $0 1 0 label_10983
  SendMessage $_39_ ${WM_SETTEXT} 0 STR:
  EnableWindow $_39_ 1
  SendMessage $_39_ ${WM_SETTEXT} 0 STR:$(LSTR_96)    ;  "Adds icons to your start menu for easy access"
  Goto label_11012
label_10983:
  StrCmp $0 2 0 label_10988
  SendMessage $_39_ ${WM_SETTEXT} 0 STR:
  EnableWindow $_39_ 1
  SendMessage $_39_ ${WM_SETTEXT} 0 STR:$(LSTR_97)    ;  "Adds icon to your desktop for easy access"
  Goto label_11012
label_10988:
  StrCmp $0 4 0 label_10993
  SendMessage $_39_ ${WM_SETTEXT} 0 STR:
  EnableWindow $_39_ 1
  SendMessage $_39_ ${WM_SETTEXT} 0 STR:$(LSTR_98)    ;  "The VLC ActiveX plugin"
  Goto label_11012
label_10993:
  StrCmp $0 6 0 label_10998
  SendMessage $_39_ ${WM_SETTEXT} 0 STR:
  EnableWindow $_39_ 1
  SendMessage $_39_ ${WM_SETTEXT} 0 STR:$(LSTR_99)    ;  "DVD and CD playback registration"
  Goto label_11012
label_10998:
  StrCmp $0 7 0 label_11003
  SendMessage $_39_ ${WM_SETTEXT} 0 STR:
  EnableWindow $_39_ 1
  SendMessage $_39_ ${WM_SETTEXT} 0 STR:$(LSTR_100)    ;  "Sets VLC media player as the default application for the specified file type"
  Goto label_11012
label_11003:
  StrCmp $0 142 0 label_11008
  SendMessage $_39_ ${WM_SETTEXT} 0 STR:
  EnableWindow $_39_ 1
  SendMessage $_39_ ${WM_SETTEXT} 0 STR:$(LSTR_101)    ;  "Add context menu items ('Play With VLC' and 'Add To VLC's Playlist')"
  Goto label_11012
label_11008:
  StrCmp $0 143 0 label_11012
  SendMessage $_39_ ${WM_SETTEXT} 0 STR:
  EnableWindow $_39_ 1
  SendMessage $_39_ ${WM_SETTEXT} 0 STR:$(LSTR_102)    ;  "Deletes VLC media player preferences and cache files leftover from previous installations"
label_11012:
FunctionEnd


Function .onInit
  SetRegView 64
  Push $0
  Push $1
  Push $2
  Push $3
  ClearErrors
  ReadRegStr $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSectionUsed
  IfErrors 0 label_11022
  Goto label_11086
label_11022:
  Call func_2767
  StrCpy $0 0
  StrCpy $1 ""
  StrCpy $2 ""
  StrCpy $3 ""
label_11027:
  ClearErrors
  SectionGetFlags $0 $_62_
  IntOp $_62_ $_62_ & 8
  IntCmp $_62_ 8 0 label_11059 label_11059
  StrCmp $1 "" label_11040
  Push $R0
  Push $R1
  StrCpy $R1 $1
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_11040:
  StrCmp $2 "" label_11049
  Push $R0
  Push $R1
  StrCpy $R1 $2
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_11049:
  StrCmp $3 "" label_11058
  Push $R0
  Push $R1
  StrCpy $R1 $3
  SectionGetFlags $R1 $R0
  IntOp $R0 $R0 | 8
  SectionSetFlags $R1 $R0
  Pop $R1
  Pop $R0
label_11058:
  Goto label_11061
label_11059:
  IfErrors 0 label_11061
  Goto label_11085
label_11061:
  SectionGetFlags $0 $_62_
  IntOp $_62_ $_62_ & 2
  IntCmp $_62_ 2 0 label_11072 label_11072
  StrCmp $1 "" 0 label_11067
  StrCpy $1 $0
  Goto label_11072
label_11067:
  StrCmp $2 "" 0 label_11070
  StrCpy $2 $0
  Goto label_11072
label_11070:
  StrCmp $3 "" 0 label_11072
  StrCpy $3 $0
label_11072:
  SectionGetFlags $0 $_62_
  IntOp $_62_ $_62_ & 4
  IntCmp $_62_ 4 0 label_11083 label_11083
  StrCmp $3 "" label_11078
  StrCpy $3 ""
  Goto label_11083
label_11078:
  StrCmp $2 "" label_11081
  StrCpy $2 ""
  Goto label_11083
label_11081:
  StrCmp $1 "" label_11083
  StrCpy $1 ""
label_11083:
  IntOp $0 $0 + 1
  Goto label_11027
label_11085:
  Call func_2781
label_11086:
  Pop $3
  Pop $2
  Pop $1
  Pop $0
  System::Call kernel32::GetCurrentProcess()p.s
    ; Call Initialize_____Plugins
    ; SetOverwrite off
    ; AllowSkipFiles off
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push kernel32::GetCurrentProcess()p.s
    ; CallInstDLL $PLUGINSDIR\System.dll Call
  System::Call kernel32::IsWow64Process2(ps,*i0s,*i)
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push kernel32::IsWow64Process2(ps,*i0s,*i)
    ; CallInstDLL $PLUGINSDIR\System.dll Call
  Push |
  System::Call kernel32::IsWow64Process(p-1,*i0s)
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; Push kernel32::IsWow64Process(p-1,*i0s)
    ; CallInstDLL $PLUGINSDIR\System.dll Call
  System::Int64Op
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\System.dll
    ; SetDetailsPrint lastused
    ; CallInstDLL $PLUGINSDIR\System.dll Int64Op
  Pop $_62_
  StrCmp $_62_ 0 0 label_11114
  MessageBox MB_OK|MB_ICONSTOP "This version of VLC only runs on 64-bit operating systems.$\nPlease get the 32-bit version and try again."
  Quit
label_11114:
  Call :label_577
  IntOp $_62_ $_69_ & 0x7FFFFFFF
  IntCmp $_62_ 0x05010000 0 label_11123
  Call :label_577
  IntCmp $_69_ 0x85010000 0 label_11122 label_11122
  ReadMemory $_62_ 0 1023410177
  IntCmp $_62_ 1 0 0 label_11122
  Goto label_11128
label_11122:
  Goto label_11124
label_11123:
  Goto label_11128
label_11124:
  ReadRegStr $INSTDIR HKLM Software\VideoLAN\VLC InstallDir
  StrCmp $INSTDIR "" 0 label_11130
  StrCpy $INSTDIR $PROGRAMFILES64\VideoLAN\VLC
  Goto label_11130
label_11128:
  MessageBox MB_OK|MB_ICONSTOP "This version of VLC only runs on Windows XP SP2 and newer."
  Quit
label_11130:
  Call func_642
  SetRegView 32
  Call func_777
  StrCmp $_3_ "" label_11137
  ReadRegStr $_7_ HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" UninstallString
  ReadRegStr $_8_ HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" InstallLocation
  StrCpy $_3_ ""
label_11137:
  SetRegView lastused
  Call func_777
  StrCmp $_3_ "" 0 label_11142
  StrCpy $_2_ 0
  Goto label_11147
label_11142:
  Push 3.0.24
  Push $_3_
  Call func_797
  StrCmp $_4_ newer label_11147
  StrCpy $_2_ 0
label_11147:
  ReadRegStr $_71_ HKLM Software\VideoLAN\VLC Language
  StrCmp $_71_ "" label_11150
  StrCpy $LANGUAGE $_71_
label_11150:
  IfSilent label_11322
  StrCmp $_71_ "" 0 label_11322
  LangDLL::LangDialog "Installer Language" "Please select a language." AC "Tiếng Việt" 1066 1258 हिन्दी 1081 1200 Corsu 1155 1252 Asturies 9997 1252 "Norsk (nynorsk)" 2068 1252 Brezhoneg 1150 1252 Gàidhlig 1169 1252 "Bahasa Indonesia" 1057 1252 Latviešu 1062 1257 Íslenska 1039 1252 Hrvatski 1050 1250 Shqip 1052 1250 Afrikaans 1078 1252 Slovenski 1060 1250 עברית 1037 1255 Galego 1110 1252 Euskera 1069 1252 Lietuvių 1063 1257 "Eesti keel" 1061 1257 Български 1026 1251 Català 1027 1252 Magyar 1038 1250 Српски 3098 1251 Slovenčina 1051 1250 Română 1048 1250 Polski 1045 1250 العربية 1025 1256 Bosanski 5146 1250 Čeština 1029 1250 Ελληνικά 1032 1253 한국어 1042 949 "Bahasa Melayu" 1086 1252 Norsk 1044 1252 ไทย 1054 874 Türkçe 1055 1254 Українська 1058 1251 O‘zbek 1091 1252 Cymraeg 1106 1252 "Português Brasileiro" 1046 1252 Português 2070 1252 Русский 1049 1251 Suomi 1035 1252 Svenska 1053 1252 Dansk 1030 1252 Nederlands 1043 1252 Italiano 1040 1252 日本語 1041 932 中文(繁體) 1028 950 中文(简体) 2052 936 Español 1034 1252 Deutsch 1031 1252 Français 1036 1252 English 1033 1252 ""
    ; Call Initialize_____Plugins
    ; AllowSkipFiles on
    ; File $PLUGINSDIR\LangDLL.dll
    ; SetDetailsPrint lastused
    ; Push ""
    ; Push 1252
    ; Push 1033
    ; Push English
    ; Push 1252
    ; Push 1036
    ; Push Français
    ; Push 1252
    ; Push 1031
    ; Push Deutsch
    ; Push 1252
    ; Push 1034
    ; Push Español
    ; Push 936
    ; Push 2052
    ; Push 中文(简体)
    ; Push 950
    ; Push 1028
    ; Push 中文(繁體)
    ; Push 932
    ; Push 1041
    ; Push 日本語
    ; Push 1252
    ; Push 1040
    ; Push Italiano
    ; Push 1252
    ; Push 1043
    ; Push Nederlands
    ; Push 1252
    ; Push 1030
    ; Push Dansk
    ; Push 1252
    ; Push 1053
    ; Push Svenska
    ; Push 1252
    ; Push 1035
    ; Push Suomi
    ; Push 1251
    ; Push 1049
    ; Push Русский
    ; Push 1252
    ; Push 2070
    ; Push Português
    ; Push 1252
    ; Push 1046
    ; Push "Português Brasileiro"
    ; Push 1252
    ; Push 1106
    ; Push Cymraeg
    ; Push 1252
    ; Push 1091
    ; Push O‘zbek
    ; Push 1251
    ; Push 1058
    ; Push Українська
    ; Push 1254
    ; Push 1055
    ; Push Türkçe
    ; Push 874
    ; Push 1054
    ; Push ไทย
    ; Push 1252
    ; Push 1044
    ; Push Norsk
    ; Push 1252
    ; Push 1086
    ; Push "Bahasa Melayu"
    ; Push 949
    ; Push 1042
    ; Push 한국어
    ; Push 1253
    ; Push 1032
    ; Push Ελληνικά
    ; Push 1250
    ; Push 1029
    ; Push Čeština
    ; Push 1250
    ; Push 5146
    ; Push Bosanski
    ; Push 1256
    ; Push 1025
    ; Push العربية
    ; Push 1250
    ; Push 1045
    ; Push Polski
    ; Push 1250
    ; Push 1048
    ; Push Română
    ; Push 1250
    ; Push 1051
    ; Push Slovenčina
    ; Push 1251
    ; Push 3098
    ; Push Српски
    ; Push 1250
    ; Push 1038
    ; Push Magyar
    ; Push 1252
    ; Push 1027
    ; Push Català
    ; Push 1251
    ; Push 1026
    ; Push Български
    ; Push 1257
    ; Push 1061
    ; Push "Eesti keel"
    ; Push 1257
    ; Push 1063
    ; Push Lietuvių
    ; Push 1252
    ; Push 1069
    ; Push Euskera
    ; Push 1252
    ; Push 1110
    ; Push Galego
    ; Push 1255
    ; Push 1037
    ; Push עברית
    ; Push 1250
    ; Push 1060
    ; Push Slovenski
    ; Push 1252
    ; Push 1078
    ; Push Afrikaans
    ; Push 1250
    ; Push 1052
    ; Push Shqip
    ; Push 1250
    ; Push 1050
    ; Push Hrvatski
    ; Push 1252
    ; Push 1039
    ; Push Íslenska
    ; Push 1257
    ; Push 1062
    ; Push Latviešu
    ; Push 1252
    ; Push 1057
    ; Push "Bahasa Indonesia"
    ; Push 1252
    ; Push 1169
    ; Push Gàidhlig
    ; Push 1252
    ; Push 1150
    ; Push Brezhoneg
    ; Push 1252
    ; Push 2068
    ; Push "Norsk (nynorsk)"
    ; Push 1252
    ; Push 9997
    ; Push Asturies
    ; Push 1252
    ; Push 1155
    ; Push Corsu
    ; Push 1200
    ; Push 1081
    ; Push हिन्दी
    ; Push 1258
    ; Push 1066
    ; Push "Tiếng Việt"
    ; Push AC
    ; Push "Please select a language."
    ; Push "Installer Language"
    ; CallInstDLL $PLUGINSDIR\LangDLL.dll LangDialog
  Pop $LANGUAGE
  StrCmp $LANGUAGE cancel 0 label_11322
  Abort
label_11322:
FunctionEnd


Function func_11323    ; Page 1, Pre
  StrCmp $_3_ "" 0 label_11325
  Abort
label_11325:
  StrCmp $_2_ 1 0 label_11328
  StrCpy $_0_ 1
  Abort
label_11328:
  nsDialogs::Create /NOUNLOAD 1018
    ; Call Initialize_____Plugins
    ; AllowSkipFiles off
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push 1018
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll /NOUNLOAD Create
  Pop $0
  StrCmp $_4_ newer 0 label_11379
  SendMessage $_9_ ${WM_SETTEXT} 0 STR:$(LSTR_103)    ;  "Already Installed"
  SendMessage $_11_ ${WM_SETTEXT} 0 STR:$(LSTR_104)    ;  "Choose how you want to install VLC."
  nsDialogs::CreateItem /NOUNLOAD STATIC 0x10000000|0x40000000|0x04000000 0 0 0 100% 40 $(LSTR_105)    ;  "An older version of VLC is installed on your system. Select the operation you want to perform and click Next to continue."
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push $(LSTR_105)    ;  "An older version of VLC is installed on your system. Select the operation you want to perform and click Next to continue."
    ; Push 40
    ; Push 100%
    ; Push 0
    ; Push 0
    ; Push 0
    ; Push 0x10000000|0x40000000|0x04000000
    ; Push STATIC
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll /NOUNLOAD CreateItem
  Pop $R0
  nsDialogs::CreateItem /NOUNLOAD BUTTON 0x00000009|0x00000C00|0x00002000|0x10000000|0x40000000|0x04000000|0x00020000|0x00010000 0 10 55 100% 30 $(LSTR_106)    ;  "Upgrade VLC using previous settings (recommended)"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push $(LSTR_106)    ;  "Upgrade VLC using previous settings (recommended)"
    ; Push 30
    ; Push 100%
    ; Push 55
    ; Push 10
    ; Push 0
    ; Push 0x00000009|0x00000C00|0x00002000|0x10000000|0x40000000|0x04000000|0x00020000|0x00010000
    ; Push BUTTON
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll /NOUNLOAD CreateItem
  Pop $_1_
  nsDialogs::CreateItem /NOUNLOAD BUTTON 0x00000009|0x00000400|0x00002000|0x10000000|0x40000000|0x04000000 0 10 85 100% 50 $(LSTR_107)    ;  "Change settings (advanced)"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push $(LSTR_107)    ;  "Change settings (advanced)"
    ; Push 50
    ; Push 100%
    ; Push 85
    ; Push 10
    ; Push 0
    ; Push 0x00000009|0x00000400|0x00002000|0x10000000|0x40000000|0x04000000
    ; Push BUTTON
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll /NOUNLOAD CreateItem
  Pop $R0
  StrCmp $_0_ "" 0 label_11378
  StrCpy $_0_ 1
label_11378:
  Goto label_11471
label_11379:
  StrCmp $_4_ older 0 label_11424
  SendMessage $_9_ ${WM_SETTEXT} 0 STR:$(LSTR_103)    ;  "Already Installed"
  SendMessage $_11_ ${WM_SETTEXT} 0 STR:$(LSTR_104)    ;  "Choose how you want to install VLC."
  nsDialogs::CreateItem /NOUNLOAD STATIC 0x10000000|0x40000000|0x04000000 0 0 0 100% 40 $(LSTR_108)    ;  "A newer version of VLC is already installed! It is not recommended that you downgrade to an older version. Select the operation you want to perform and click Next to continue."
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push $(LSTR_108)    ;  "A newer version of VLC is already installed! It is not recommended that you downgrade to an older version. Select the operation you want to perform and click Next to continue."
    ; Push 40
    ; Push 100%
    ; Push 0
    ; Push 0
    ; Push 0
    ; Push 0x10000000|0x40000000|0x04000000
    ; Push STATIC
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll /NOUNLOAD CreateItem
  Pop $R0
  nsDialogs::CreateItem /NOUNLOAD BUTTON 0x00000009|0x00000C00|0x00002000|0x10000000|0x40000000|0x04000000|0x00020000|0x00010000 0 10 55 100% 30 $(LSTR_109)    ;  "Downgrade VLC using previous settings (recommended)"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push $(LSTR_109)    ;  "Downgrade VLC using previous settings (recommended)"
    ; Push 30
    ; Push 100%
    ; Push 55
    ; Push 10
    ; Push 0
    ; Push 0x00000009|0x00000C00|0x00002000|0x10000000|0x40000000|0x04000000|0x00020000|0x00010000
    ; Push BUTTON
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll /NOUNLOAD CreateItem
  Pop $_1_
  nsDialogs::CreateItem /NOUNLOAD BUTTON 0x00000009|0x00000400|0x00002000|0x10000000|0x40000000|0x04000000 0 10 85 100% 50 $(LSTR_107)    ;  "Change settings (advanced)"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push $(LSTR_107)    ;  "Change settings (advanced)"
    ; Push 50
    ; Push 100%
    ; Push 85
    ; Push 10
    ; Push 0
    ; Push 0x00000009|0x00000400|0x00002000|0x10000000|0x40000000|0x04000000
    ; Push BUTTON
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll /NOUNLOAD CreateItem
  Pop $R0
  StrCmp $_0_ "" 0 label_11423
  StrCpy $_0_ 1
label_11423:
  Goto label_11471
label_11424:
  StrCmp $_4_ same 0 label_11469
  SendMessage $_9_ ${WM_SETTEXT} 0 STR:$(LSTR_103)    ;  "Already Installed"
  SendMessage $_11_ ${WM_SETTEXT} 0 STR:$(LSTR_110)    ;  "Choose the maintenance option to perform."
  nsDialogs::CreateItem /NOUNLOAD STATIC 0x10000000|0x40000000|0x04000000 0 0 0 100% 40 $(LSTR_111)    ;  "VLC 3.0.24 is already installed. Select the operation you want to perform and click Next to continue."
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push $(LSTR_111)    ;  "VLC 3.0.24 is already installed. Select the operation you want to perform and click Next to continue."
    ; Push 40
    ; Push 100%
    ; Push 0
    ; Push 0
    ; Push 0
    ; Push 0x10000000|0x40000000|0x04000000
    ; Push STATIC
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll /NOUNLOAD CreateItem
  Pop $R0
  nsDialogs::CreateItem /NOUNLOAD BUTTON 0x00000009|0x00000C00|0x00002000|0x10000000|0x40000000|0x04000000|0x00020000|0x00010000 0 10 55 100% 30 $(LSTR_112)    ;  "Add/Remove/Reinstall components"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push $(LSTR_112)    ;  "Add/Remove/Reinstall components"
    ; Push 30
    ; Push 100%
    ; Push 55
    ; Push 10
    ; Push 0
    ; Push 0x00000009|0x00000C00|0x00002000|0x10000000|0x40000000|0x04000000|0x00020000|0x00010000
    ; Push BUTTON
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll /NOUNLOAD CreateItem
  Pop $R0
  nsDialogs::CreateItem /NOUNLOAD BUTTON 0x00000009|0x00000400|0x00002000|0x10000000|0x40000000|0x04000000 0 10 85 100% 50 $(LSTR_113)    ;  "Uninstall VLC"
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; Push $(LSTR_113)    ;  "Uninstall VLC"
    ; Push 50
    ; Push 100%
    ; Push 85
    ; Push 10
    ; Push 0
    ; Push 0x00000009|0x00000400|0x00002000|0x10000000|0x40000000|0x04000000
    ; Push BUTTON
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll /NOUNLOAD CreateItem
  Pop $_1_
  StrCmp $_0_ "" 0 label_11468
  StrCpy $_0_ 2
label_11468:
  Goto label_11471
label_11469:
  MessageBox MB_OK|MB_ICONSTOP "Unknown value of PreviousVersionState, aborting" /SD IDOK
  Abort
label_11471:
  StrCmp $_0_ 1 0 label_11474
  SendMessage $_1_ 0x00F1 1 0
  Goto label_11475
label_11474:
  SendMessage $R0 0x00F1 1 0
label_11475:
  nsDialogs::Show
    ; Call Initialize_____Plugins
    ; File $PLUGINSDIR\nsDialogs.dll
    ; SetDetailsPrint lastused
    ; CallInstDLL $PLUGINSDIR\nsDialogs.dll Show
FunctionEnd


Function func_11480    ; Page 1, Leave
  SendMessage $_1_ 0x00F0 0 0 $R0
  StrCmp $R0 1 0 label_11484
  StrCpy $_0_ 1
  Goto label_11485
label_11484:
  StrCpy $_0_ 2
label_11485:
  StrCmp $_0_ 1 0 label_11489
  StrCmp $_4_ same 0 label_11489
  Call func_11490
  Quit
label_11489:
FunctionEnd


Function func_11490
  ReadRegStr $R1 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" UninstallString
  StrCmp $R1 "" 0 label_11493
  Return

label_11493:
  HideWindow
  ClearErrors
  ExecWait "$\"$R1$\" _?=$INSTDIR"
  IfErrors label_11500
  IfFileExists $INSTDIR\uninstall.exe 0 label_11500
  Delete $R1
  RMDir $INSTDIR
label_11500:
FunctionEnd


Function func_11501
  StrCmp $_2_ 1 0 label_11504
  Abort
  Goto label_11506
label_11504:
  StrCmp $_3_ "" label_11506
  Abort
label_11506:
FunctionEnd


Function func_11507
  StrCmp $_2_ 1 0 label_11509
  Abort
label_11509:
FunctionEnd


Function func_11510
  ClearErrors
  ReadRegStr $0 HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSectionUsed
  IfErrors label_11515
  StrCmp $_0_ 1 0 label_11515
  Abort
label_11515:
FunctionEnd


Function func_11516
  StrCmp $_0_ "" label_11518
  Abort
label_11518:
FunctionEnd


Function .onInstSuccess
  Push $0
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" MementoSectionUsed ""
  Call func_2806
  Pop $0
FunctionEnd


Section ; Section_144
  WriteUninstaller $INSTDIR\uninstall.exe ;  $INSTDIR\$INSTDIR\uninstall.exe
  WriteRegStr HKLM Software\VideoLAN\VLC InstallDir $INSTDIR
  WriteRegStr HKLM Software\VideoLAN\VLC Version 3.0.24
  WriteRegStr HKLM Software\VideoLAN\VLC "" $INSTDIR\vlc.exe
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" DisplayName $(LSTR_2)    ;  "VLC media player"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" UninstallString $\"$INSTDIR\uninstall.exe$\"
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" InstallLocation $INSTDIR
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" DisplayIcon $INSTDIR\vlc.exe
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" DisplayVersion 3.0.24
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" URLInfoAbout https://www.videolan.org/
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" Publisher VideoLAN
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" VersionMajor 3
  WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\VLC media player" VersionMinor 0
SectionEnd


/*
Function Initialize_____Plugins
  SetDetailsPrint lastused
  StrCmp $PLUGINSDIR "" 0 label_11548
  Push $0
  SetErrors
  GetTempFileName $0
  Delete $0
  CreateDirectory $0 ; CreateRestrictedDirectory
  IfErrors label_11549
  StrCpy $PLUGINSDIR $0
  Pop $0
label_11548:
  Return

label_11549:
  MessageBox MB_OK|MB_ICONSTOP "Error! Can't initialize plug-ins directory. Please try again later." /SD IDOK
  Quit
FunctionEnd
*/



; --------------------
; UNREFERENCED STRINGS:

/*
17 CommonFilesDir
32 "C:\Program Files"
52 "$PROGRAMFILES\Common Files"
68 $COMMONFILES
261 $_22_
19088 $_54_
*/
