INSERT INTO public.member(
	name, email, password, phone, enroll_lecture, finsh_lecture, level)
	VALUES ('홍길동', 'gidong@gmail.com', 'asdf1234', '01057611989', 3, 4, 'Beginner');

INSERT INTO public.lecture(category, level, title, detail, total_time, thumenail_link, video_link, is_active)
	VALUES 
    ('디지털 역량 강화', '초급', '스마트폰 기본활용', '시니어 대상 스마트폰 교육 (카카오톡, 카메라/갤러리 활용법) 입니다', 10, 'https://sdfedu.seoul.kr/data/file/22e8f3bc9a3936a2a0a45a82a0073e0d.jpg', 'https://sdfedu.seoul.kr/course/course_view.jsp?id=29&ch=course1&s_style=webzine&cid=3&ccid=&s_field=&s_keyword=#cview2', true),
    ('디지털 역량 강화', '중급', '스마트폰 실생활 활용', '시니어 대상 스마트폰 교육 (배달앱, 키오스크 활용법) 입니다.', 18, 'https://sdfedu.seoul.kr/data/file/7fa19b17226b1bcc1144830d0b60d470.jpg', 'https://sdfedu.seoul.kr/course/course_view.jsp?id=30&ch=course1&s_style=webzine&cid=3&ccid=&s_field=&s_keyword=', true),
    ('디지털 역량 강화', '고급', '시니어 디지털 소비 생활', '디지털 소비 생활', 13, 'https://sdfedu.seoul.kr/data/file/a665fac880b596bd6063b2131addbe7f.jpg', 'https://sdfedu.seoul.kr/course/course_view.jsp?id=33&ch=course1&s_style=webzine&cid=3&ccid=&s_field=&s_keyword=', true);

INSERT INTO lecture_detail(
	lecture_seq, title, parent_lecture_id,show_title, stt_text)
	VALUES 
    (1, 'Opening', 1, '[스마트폰 기본 활용] 1. 오리엔테이션', '안녕하세요 이번 시간에는 카카오톡 사용법과 카메라, 갤러리 사용법에 대해 배워보도록 하겠습니다. 
첫 번째로 배울 카카오톡은 스마트폰을 사용하는 분들이 가장 많이 사용하는 앱입니다. 
카카오톡을 잘 활용하면 가족 친구들과 문자, 사진, 동영상 등을 주고받으며 재미있게 소통할 수 있습니다.
두 번째로 배울 내용은 카메라와 갤러리 사용법입니다. 
스마트폰 카메라로 사진을 찍고 갤러리에서 관리하는 방법을 배워 여러분의 즐거운 추억을 기록하고 간직해보세요. 
그럼 본격적으로 카카오톡 그리고 카메라와 갤러리 사용법에 대해 배워보도록 하겠습니다.'),
    (2, '2-1-1', 1, '[스마트폰 기본 활용] 2. 카카오톡 계정등록', '카카오톡 앱 시작하기 강의를 시작하겠습니다. 
다음 화면에서 카카오톡 앱을 찾아 누릅니다. 
카카오톡 이용 안내에 대한 화면이 나옵니다. 
기본적으로 내 핸드폰에 등록된 사람들과 연락을 하기 위해서는 허용하기 버튼을 누릅니다.
다음은 전화를 걸고 카카오톡 앱에서 연동해도 되는지의 여부를 묻는 것인데 허용을 눌러줍니다. 
다음은 기기의 사진, 미디어 파일을 카카오톡 앱에서 전송하기 위해 연동 여부를 묻는 것인데 허용을 눌러줍니다. 
다음은 내 핸드폰에 등록된 사람들과 연락을 하기 위해서 연동해도 되는지를 묻는 화면인데,
이것 또한 허용을 눌러줍니다. 카카오톡을 시작하는 화면입니다. 
카카오톡 가입을 안 했으니 새로운 카카오 계정 만들기를 눌러줍니다. 
다음은 이용 약관에 동의를 요구하는 화면입니다. 
필수 동의를 체크 후
동의하고 계속 진행합니다를 눌러주세요. 
다음은 전화번호를 입력하는 화면입니다. 
휴대전화번호라고 적힌 메모 칸에 핸드폰 번호를 입력하고 확인 버튼을 누릅니다. 
인증번호를 보냈다는 알림창에 확인을 누릅니다. 
다음은 인증번호를 입력하는 화면입니다.
인증번호는 60초 안에 입력하셔야 합니다. 
60초가 지나면 재전송 버튼을 눌러 인증 번호를 다시 받을 수 있습니다. 
받은 인증번호의 입력이 올바르지 않으면 인증번호가 틀렸다는 알림창이 나타납니다.
카카오 전화번호로 인증을 했기 때문에 새로운 카카오 계정 만들기 버튼을 누릅니다. 
카카오 계정 비밀번호를 입력 후 확인 버튼을 누릅니다. 
사람들에게 보여지는 이름을 적고 하단에 자동 친구 추가에 체크를 해주셔야 휴대폰에 등록된 사람들의 목록이 나타납니다.
그 다음 확인 버튼을 누릅니다. 다음과 같은 화면이 뜨고 카카오톡 목록으로 화면이 바뀝니다.
'),
    (3, '2-1-2', 1, '[스마트폰 기본 활용] 3. 카카오톡 화면구성 및 프로필설정', '다음은 화면 설명에 대한 강의입니다. 
카카오톡 앱을 누르시면 하단에 네 가지 아이콘이 나타납니다. 
첫 번째 아이콘을 선택하면 등록된 친구를 볼 수 있는 화면입니다. 
두 번째 아이콘을 선택하면 상대방이랑 대화한 기록이 남아 있는 채팅방 목록이 나옵니다.
세 번째 아이콘을 선택하면 다음이라는 사이트와 연결이 되어서 뉴스 기사를 보고 검색도 할 수 있습니다. 
네 번째 아이콘은 그 외에 사용할 수 있는 기능입니다. 
이렇게 한 번 둘러보았으니 나의 프로필 설정을 해볼까요? 다음은 프로필 설정에 대한 강의입니다.
카카오톡에서 상대방에게 보여지는 나의 사진을 설정할 수 있습니다. 
카카오톡 앱을 실행한 상태에서 제일 위에 있는 나의 이름 옆에 있는 그림 아이콘을 눌러주세요. 
하단 중앙에 있는 프로필 편집을 누릅니다.
하단에 다양한 아이콘들이 생겨나는데 하단에 왼쪽에 있는 카메라 아이콘을 눌러 사진을 변경합니다. 
프로필, 사진, 동영상 선택창이 나타나는데 앨범에서 사진, 동영상선택을 누릅니다. 
내 스마트폰에 저장되어 있는 사진이 나타나는데 그 중에 하나를 고릅니다.
고른 사진이 적용된 화면이 나타납니다. 
여기에서 우측 상단에 있는 완료 버튼을 눌러 프로필 사진 바꾸기를 마무리합니다.'),
    (4, '2-1-3', 1, '[스마트폰 기본 활용] 4. 카카오톡 프로필 설정', '다음은 프로필 설정에 대한 강의입니다. 
카카오톡에서 상대방에게 보여지는 나의 사진을 설정할 수 있습니다. 
카카오톡 앱을 실행한 상태에서 제일 위에 있는 나의 이름 옆에 있는 그림 아이콘을 눌러주세요.
하단 중앙에 있는 프로필 편집을 누릅니다. 
하단에 다양한 아이콘들이 생겨나는데 하단에 왼쪽에 있는 카메라 아이콘을 눌러 사진을 변경합니다. 
프로필 사진 동영상 선택창이 나타나는데 앨범에서 사진, 동영상 선택을 누릅니다.
내 스마트폰에 저장되어 있는 사진이 나타나는데 그 중에 하나를 고릅니다. 
고른 사진이 적용된 화면이 나타납니다. 
여기에서 우측 상단에 있는 완료 버튼을 눌러 프로필 사진 바꾸기를 마무리합니다.'),
    (5, '2-1-4', 1, '[스마트폰 기본 활용] 5. 카카오톡 환경설정', '다음은 환경 설정에 대한 강의입니다. 
카카오톡 환경 설정을 통해서 카카오톡의 글자 크기를 변경해 보겠습니다. 
하단에 있는 네 가지의 아이콘 중 맨 오른쪽에 있는 아이콘을 누르시면 그 외 다양한 설정들이 나옵니다.
이 중에서 상단 우측에 있는 버튼을 누릅니다. 
화면이라는 글씨를 누릅니다. 채팅방 글자 크기를 누르면 크기를 선택하는 창이 나타나는데 그중 아주 크게를 선택하고 확인 버튼을 누르면 크기가 변경됩니다.'),
    (6, '2-2-1', 1, '[스마트폰 기본 활용] 6. 카카오톡 메시지 보내기', '카카오톡으로 소통하기 강의를 시작하겠습니다. 
화면에 있는 내 스마트폰에 저장되어 있는 사람들의 목록에서 메시지를 보낼 사람의 아이콘을 누르면 화면이 바뀌는데 여기에서 1대 1 채팅을 누릅니다. 
채팅창을 누르면 글자를 입력하는 키패드가 나타납니다.
여기서 메시지를 작성하고 화살표를 누르면 상대방에게 전송됩니다.'),
    (7, '2-2-2', 1, '[스마트폰 기본 활용] 7. 카카오톡 사진 및 영상 공유하기', '대화창 하단 왼쪽에 있는 플러스를 누르면 다양한 아이콘이 나옵니다. 
그중 앨범이나 동영상을 누르면 내 스마트폰에 저장되어 있는 최근 사진 몇 장이 대표로 보이고, 왼쪽 버튼을 누르면 전체 사진이 보이는데, 그중 사진을 선택하여 전송 버튼을 누르면 사진 또는 동영상이 전송됩니다.'),
    (8, '2-2-3', 1, '[스마트폰 기본 활용] 8. 카카오톡 파일관리', '대화창 상단에 목록 아이콘을 누르면 채팅방에서 주고받은 사진, 동영상 파일 등을 확인할 수 있습니다.'),
    (9, '2-3-1', 1, '[스마트폰 기본 활용] 9. 카메라 활용 (시연)', '스마트폰의 카메라 활용 강의입니다. 본 수업의 화면에 표시되는 아이콘, 위치, 내용 등은 실제 여러분이 가지고 계신 스마트폰과 조금 다를 수 있다는 점을 미리 말씀드립니다. 
카메라 화면 상단에 있는 아이콘 기능에 대해 설명하겠습니다. 
첫 번째는 설정 아이콘입니다.
이 아이콘을 누르면 qr 코드 인식과 모션, 포토 기능을 선택할 수 있고, 후면 카메라 동영상 크기를 설정할 수 있습니다. 
두 번째는 플래시 아이콘입니다. 이 아이콘을 누르면 플래시를 켜고 끌 수 있습니다.
플래시는 대부분 어두운 곳에서 사진이나 동영상을 촬영해야 할 때 사용합니다. 
첫 번째 아이콘은 끄기, 두 번째는 자동, 세 번째는 켜기입니다. 
평소에는 꺼두었다가 어두운 곳에서 촬영 시 자동이나 켜기로 변경하시면 됩니다. 
세 번째는
타이머 아이콘입니다. 이 아이콘을 누르면 타이머가 설정되어 촬영 전에 일정한 여유를 두고 촬영할 수 있습니다. 
특히 단체 사진을 찍을 때 유용하게 사용할 수 있습니다. 
네 번째는 화면 비율 아이콘입니다. 이 아이콘을 누르면
촬영하는 화면의 크기를 조절할 수 있습니다. 
사진이나 동영상의 촬영 용도에 따라 공간을 더 넓게 촬영하고 싶을 때 사용합니다. 
첫 번째 비율이 일반적인 화면의 3 대 4 비율이고,
두 번째 비율은 좀 더 넓은 비율인 9대 16, 세 번째 비율은 정사각형인 1대 1의 비율이고, 네 번째 비율은 화면 크기가 제일 넓은 풀 화면입니다. 
촬영하려는 사진의 용도에 따라 비율을 설정합니다. 
다섯 번째는 화면 효과 설정 아이콘입니다.
중간에 효과를 옆으로 넘기고 미리 보면서 선택할 수 있는데, 마음에 드는 효과를 설정해서 분위기에 어울리는 연출을 하여 사진을 찍을 수 있습니다. 
스마트폰 홈 화면에서 카메라 앱을 누릅니다. 
카메라 화면이 뜨는데, 화면 하단에 하얀 버튼을 누르면 사진 촬영이 됩니다.
현재는 사진 촬영으로 설정되어서 버튼 색깔이 하얀데, 동영상 촬영으로 변경하고 싶을 때, 동영상이라는 글자를 누르면 동영상 촬영으로 변경됩니다. 
또한 사진과 동영상 촬영 시, 촬영 버튼 우측에 있는 아이콘을 누르면 화면 전면 또는 후면으로 변경되어 촬영할 수 있습니다.'),
    (10, '2-3-2', 1, '[스마트폰 기본 활용] 10. 카메라 활용 (실습)', '스마트폰의 카메라 활용 강의입니다. 본 수업의 화면에 표시되는 아이콘, 위치, 내용 등은 실제 여러분이 가지고 계신 스마트폰과 조금 다를 수 있다는 점을 미리 말씀드립니다. 
카메라 화면 상단에 있는 아이콘 기능에 대해 설명하겠습니다. 
첫 번째는 설정 아이콘입니다.
이 아이콘을 누르면 qr 코드 인식과 모션, 포토 기능을 선택할 수 있고, 후면 카메라 동영상 크기를 설정할 수 있습니다. 
두 번째는 플래시 아이콘입니다. 이 아이콘을 누르면 플래시를 켜고 끌 수 있습니다.
플래시는 대부분 어두운 곳에서 사진이나 동영상을 촬영해야 할 때 사용합니다. 
첫 번째 아이콘은 끄기, 두 번째는 자동, 세 번째는 켜기입니다. 
평소에는 꺼두었다가 어두운 곳에서 촬영 시 자동이나 켜기로 변경하시면 됩니다.
세 번째는 타이머 아이콘입니다. 이 아이콘을 누르면 타이머가 설정되어 촬영 전에 일정한 여유를 두고 촬영할 수 있습니다. 
특히 단체 사진을 찍을 때 유용하게 사용할 수 있습니다. 
네 번째는 화면 비율 아이콘입니다.
이 아이콘을 누르면 촬영하는 화면의 크기를 조절할 수 있습니다. 
사진이나 동영상의 촬영 용도에 따라 공간을 더 넓게 촬영하고 싶을 때 사용합니다. 
첫 번째 비율이 일반적인 화면에 3대 4 비율이고,
두 번째 비율은 좀 더 넓은 비율인 9대 16, 세 번째 비율은 정사각형인 1대 1의 비율이고, 네 번째 비율은 화면 크기가 제일 넓은 풀 화면입니다. 
촬영하려는 사진의 용도에 따라 비율을 설정합니다. 
다섯 번째는 화면 효과 설정 아이콘입니다.
중간에 효과를 옆으로 넘기고 미리 보면서 선택할 수 있는데, 마음에 드는 효과를 설정해서 분위기에 어울리는 연출을 하여 사진을 찍을 수 있습니다. 
스마트폰 홈 화면에서 카메라 앱을 누릅니다. 
카메라 화면이 뜨는데, 화면 하단에 하얀 버튼을 누르면 사진 촬영이 됩니다.
현재는 사진 촬영으로 설정되어서 버튼 색깔이 하얀데, 동영상 촬영으로 변경하고 싶을 때, 동영상이라는 글자를 누르면 동영상 촬영으로 변경됩니다. 
또한 사진과 동영상 촬영 시, 촬영 버튼 우측에 있는 아이콘을 누르면 화면 전면 또는 후면으로 변경되어 촬영할 수 있습니다.'),
    (11, '2-3-3', 1, '[스마트폰 기본 활용] 11. 갤러리 활용 (시연)', '스마트폰의 갤러리 활용 강의입니다. 본 수업의 화면에 표시되는 아이콘, 위치, 내용 등은 실제 여러분이 가지고 계신 스마트폰과 조금 다를 수 있다는 점을 미리 말씀드립니다. 
스마트폰 홈 화면에 있는 갤러리 앱을 누릅니다. 
화면 하단에 사진, 앨범,
스토리 공유의 각각의 폴더로 사진이 정리되어 있습니다. 
사진 폴더는 촬영 날짜별로 정리가 되어 있으며, 앨범 폴더는 사진을 저장한 방식으로 정리되어 있습니다. 
촬영한 사진과 동영상을 보기 위해서는
앨범 폴더에 카메라를 누르고 보고 싶은 사진을 누르면 직접 촬영한 사진과 동영상을 볼 수 있습니다. 
사진을 삭제하려면 오른쪽 하단에 있는 휴지통 아이콘을 누른 후 휴지통으로 이동을 누르면 됩니다. 
다음은 사진을 메시지로 공유하는 방법입니다. 
하단 중앙에 있는 아이콘을 누르시면 사진을 어디로 공유할 것인지 선택할 수 있습니다.
지금은 메시지를 선택하여 보냅니다. 연락처를 선택하거나 메시지를 주고받았던 사람을 누르면 사진 또는 동영상을 전송할 수 있습니다.'),
    (12, '2-4-1', 1, '[스마트폰 기본 설정] 12. 스마트폰 환경설정', '다음은 스마트폰의 환경 설정과 용어를 학습해 보겠습니다. 
스마트폰 화면을 켜시면 앱이 있는 홈 화면이 나타납니다. 
이 화면에서 손가락을 위에서 아래로 쓸어내리면 다음과 같은 창이 나타납니다. 
여기에서 가운데 선을 한 번 더 쓸어 내리면
스마트폰에 유용한 기능의 아이콘들이 나타납니다. 
다양한 아이콘이 보이고 이 중 흑백으로 변경되며, 현재 사용하고 있는 것으로 설정됩니다. 
이것을 사용하면 주변에서 와이파이가 있는 장소에서 자동으로 인식이 되어 무료 와이파이를 사용할 수 있습니다.
다음은 모바일 데이터 설정입니다. 이 아이콘은 와이파이가 실행되지 않을 때 인터넷을 사용할 수 있는 아이콘으로, 와이파이가 없는 곳에서 인터넷 사용을 원하실 때 켜주시기 바랍니다.
현재는 회색 아이콘으로 활성화되지 않은 상태인데, 아이콘을 누르면 모바일 데이터를 사용할 수 있게 됩니다. 
다음은 자동 회전 설정입니다. 이 아이콘은 화면이 가로 또는 세로로 회전이 되는 것을 설정해주는 아이콘입니다.
해당 기능은 가로로 된 사진 영상을 보다 크게 스마트폰으로 보고 싶을 때 주로 활용합니다. 
현재 스마트폰 화면을 세로로 볼 수 있게 고정되어 있고, 아이콘을 누르면 스마트폰 화면이 자동 회전으로 변경이 됩니다. 
다음은 블루투스 설정입니다.
블루투스 설정을 통해서 이어폰을 연결하거나 다른 기기를 연결할 때 사용합니다. 
이 아이콘도 마찬가지로 사용하지 않는 중일 때는 회색 아이콘이며, 사용 중일 때는 파란색으로 나타납니다. 
블루투스 설정은 사용하지 않을 시에는 꺼두시는 게 배터리 절약에 도움이 됩니다.
이 아이콘은 지금 진동 상태로 설정이 되어 있는데, 이것을 누르면 무음으로 변경되고, 또 한 번 누르면 소리의 순서로 변경이 됩니다.'),
    (13, '2-4-2', 1, '[스마트폰 기본 설정] 13. 스마트폰 환경설정', '다음은 문자 메시지를 사용하는 방법입니다. 
다음과 같은 화면에서 메시지 앱을 누릅니다. 
메시지를 보내기 위해서 메시지 앱을 한 번 더 눌러 새로운 창을 엽니다. 
상단의 입력란에 메시지를 받는 사람의 전화번호를 입력합니다. 
다음은
메시지 입력창에 보낼 메시지를 입력합니다. 
입력이 마치면 전송 버튼을 누릅니다. 
다음은 메시지를 삭제하는 방법입니다. 
메시지 앱을 들어간 후 메시지를 누르고 있으면 삭제 아이콘이 나옵니다. 
삭제 아이콘을 누르면 취소와 삭제를 선택하는 창에서 삭제를 누릅니다.'),
    (14, 'Ending', 1, '[스마트폰 기본 설정] 18. 마무리', '이번 시간에는 카카오톡 그리고 카메라와 갤러리 사용법에 대해 알아보았습니다. 
생각보다 쉬우시죠? 이번 시간에 배운 내용을 지금 바로 활용해 카카오톡으로 친구 가족들과 인사하고 여러분이 촬영한 사진을 공유해 보세요. 
일상생활이 훨씬 즐거워질 거예요. 그럼 이번 수업은 여기까지입니다. 
앞으로 남은 수업도 기대해 주세요. 그럼 다음 수업에서 뵙겠습니다. 
감사합니다.'),

    (1, '3-1', 2, '[실생활 활용] 1. 오리엔테이션', '안녕하세요 오늘은 모바일 주문 방법과 키오스크 사용법에 대해 배워보도록 하겠습니다. 
요즘은 스마트폰으로 음식을 간편하게 주문할 수 있습니다. 
배달 앱 사용법을 알아두면 음식 배달이 필요할 때 언제 어디서나 메뉴 선택부터 결제까지 스마트폰 하나로 빠르게 해결할 수 있습니다.
이번 시간에는 키오스크 사용법에 대해서도 알아볼 텐데요. 
키오스크란 음식점이나 가게에서 무인으로 주문받은 기계입니다. 
요즘은 어딜 가나 키오스크가 있죠 사용법을 모르면 참 답답하지만 키오스크 사용법도 알고 보면 생각보다 쉽다는 걸 아시게 될 거예요. 
자 그럼 이제 본격적으로 배달 앱과 키오스크 사용법에 대해서 알아보도록 하겠습니다.
'),
    (2, '3-2', 2, '[실생활 활용] 2. 모바일 주문 앱 알아보기', '모바일 주문 앱 알아보기 강의를 시작하겠습니다. 
모바일 주문 앱을 눌러주세요. 배달 주문 앱은 배달하는 위치가 중요하기 때문에 접근 권한 허용을 위한 확인을 누르고 허용을 누릅니다. 
다음은 약관에 동의하는 화면입니다. 필수라고 적힌 약관에 동의를 하시고 시작하기 버튼을 누르시면
마케팅 정보 앱 알림 동의 안내창이 나타납니다. 
안내창에서 확인을 누르시면 주소를 입력하는 창이 나타납니다. 
지번, 도로명, 건물명으로 된 주소를 입력하거나 하단에 현 위치로 주소 설정을 누르시면
현재 위치를 파악해 자동으로 주소가 설정됩니다. 
주소를 입력하시고 홈 화면으로 가시면 상단에 입력한 주소가 등록됩니다. 
현재 보이는 홈 화면에서 메뉴에 따른 다양한 음식의 아이콘이 보입니다. 
치킨을 누르고
현재 위치에서 배달 가능한 치킨 가게 목록을 확인하고 주문할 가게를 고릅니다. 
주문할 가게의 정보와 메뉴를 볼 수 있습니다. 
앱을 통해서 가게에 전화로 주문할 수도 있고, 화면을 내리시면 가게의 메뉴를 보실 수도 있습니다.
자주 배달해서 먹는 가게를 저장해 놓을 수도 있습니다. 
가게를 누른 다음에 나타나는 화면 중간에 찜이라는 하트 아이콘을 누르면 저장됩니다. 
홈 화면 하단의 아이콘에서 찜한 가게를 누르면 저장한 가게 목록을 확인할 수 있습니다.'),
    (3, '3-4', 2, '[실생활 활용] 3. 모바일 앱 활용 주문 절차', '배달하는 곳의 주소를 확인하시고 주문하려는 음식의 메뉴 아이콘을 누릅니다. 
지금은 중식으로 주문해 보겠습니다. 중식 아이콘을 누르면 중식 관련 가게 목록이 나타납니다. 
주문하고 싶은 가게를 누르면 가게 정보가 나타납니다.
여기서 주의사항은 가게에 따른 최소 주문 금액을 확인하고 명시된 금액 이상으로 결제해야 주문이 가능하다는 점입니다. 
화면에서 메뉴를 선택합니다. 주문 수량이 한 개 이상이면 플러스 버튼을 누르시고, 한 개일 때는 하단에 한 개 담기를 누르면 장바구니에 담아집니다. 
장바구니는 한 가게에서 메뉴 담기만 가능합니다.
장바구니에 담은 메뉴가 가게의 최소 주문 금액을 채워야 배달이 가능합니다. 
플러스 더 담으러 가기를 눌러 메뉴를 장바구니에 추가하고 하단에 배달 주문하기를 누릅니다. 
주문하는 정보의 화면이 나타납니다. 기입한 주소를 확인하시고 화면을 내리면
결제 수단을 선택할 수 있습니다. 결제 수단은 카드와 휴대폰 결제, 만나서 카드 결제, 또는 만나서 현금 결제가 있습니다. 
해당 결제 수단을 선택하고 위 내용에 모두 동의합니다에 체크를 해준 후 결제하기 버튼을 눌러줍니다.'),
    (4, '3-6-1', 2, '[실생활 활용] 4. 카페 음료 주문', '키오스크 활용 강의를 시작하겠습니다. 
가게에 들어서면 키오스크가 배치되어 있습니다. 
음료를 주문해 보겠습니다. 먹고 가기, 포장하기가 있는데 상황에 맞게 선택하시면 됩니다. 
화면 상단에 등장하는 주요 메뉴를 고르면 관련한 상세 메뉴들이 나타납니다.
맨 오른쪽 화살표 버튼을 누르면 메뉴를 더 볼 수 있습니다. 
주문하려는 메뉴를 선택하면 하단에 결제 금액과 취소 주문을 선택할 수 있는 화면이 나옵니다. 
대부분 결제 수단이 카드이기 때문에 카드를 선택하고 화면에 나오는 제한 시간을 고려하여
카드 삽입구에 카드를 넣습니다. 해당 매장에 포인트 적립에 대한 안내창이 나옵니다. 
적립 여부를 선택하시고 휴대폰 번호를 입력 후 확인을 누릅니다. 
카페 스템프 적립 확인을 누르시면 결제가 완료되어 하단에 영수증이 나옵니다.'),
    (5, '3-6-2', 2, '[실생활 활용] 5. 패스트푸드 세트 주문', '패스트푸드점에서 키오스크로 세트 메뉴 주문하기 강의를 시작하겠습니다. 
매장을 방문하시면 키오스크가 설치되어 있습니다. 
매에서 먹고 가는 방법으로 주문하겠습니다. 
다음으로 매장의 메뉴들이 나오는데 추천 메뉴를 누르시면 한 번에 주문하실 수 있고, 다른 메뉴를 누르셔서 단품으로도 주문할 수 있습니다.
세트로 주문을 해보겠습니다. 세트 구성은 햄버거, 음료, 디저트 구성이 기본이며 여기서 추가하거나 제외할 수 있습니다. 
디저트와 음료를 고릅니다. 메뉴를 선택하고 하단에 결제하기를 누릅니다. 
주문한 메뉴와 금액을 확인하고
포장할 것인지 매장에서 먹을 것인지 선택합니다. 
지금은 매장을 선택합니다. 할인이나 적립을 확인하시고 해당 사항이 없으면 선택 없음을 누릅니다. 
결제 수단을 카드로 누르신 후 단말기에 신용 체크카드 투입 안내창이 나타나면 카드를 삽입합니다.
출력된 영수증에 표기된 대기 번호를 확인하시고 매장에 비치된 화면에 번호가 등장하면 음식을 받아옵니다.'),
    (7, '3-8', 2, '[실생활 활용] 6. 마무리', '이번 시간에는 배달 앱으로 주문하는 방법과 매장에서 편리하게 사용할 수 있는 키오스크 활용에 대한 방법을 익혔습니다. 
오늘 배운 내용을 활용하셔서 언제 어디서나 멋지고 스마트하게 음식을 주문해보세요. 
이번 시간 수업은 여기까지입니다. 앞으로 남은 수업도 기대해 주세요. 
그럼 다음 시간에 뵙겠습니다. 감사합니다.'),

    (1, 'SD21', 3, '디지털 소비생활 - 오리엔테이션', '여러분 안녕하세요. 이번 주제는 소비 생활입니다. 
소비 생활이라고 하면 원하는 물건, 삶에 필요한 물건을 구입하려고 했을 때 비용을 지불하는 것까지 포함됩니다. 
그런데 세월이 흐르고 시대가 바뀌어서 방법이 변했어요. 
혹시 이런 경험 없을까요?
현장에서 열심히 카트에 물건을 담았는데 결제하려고 밀고 갔더니 계산하는 분이 안 계세요. 
혼자 하라고 하는데 당황스러워요. 또 이런 경험 없을까요? 모바일로 결제를 편리하게 하고 있는데 거기서 본인이 맞는지 확인을 한다고 하는데 이건 뭘 막 입력하는 게 불편해요 어려워요 혹은
결제 단계에 갔는데 신용카드 번호를 매번 넣기도 어렵고 이때 필요한 것이 바로 디지털 방법이에요. 
우리는 오늘 이런 불편함들을 해소하기 위해서 네 가지를 배워볼 거예요. 
가지 수가 많다고 두려워하지 마세요. 
쉽게 갑니다. 첫 번째 간편 결제. 간편한 결제를 위해서 그 내용 속에 온라인 결제 그리고 편리한
오프라인에서의 결제 그리고 예전에 교통카드였는데요 결제까지 가능한 티머니 그리고 가끔 선물 받은 기프티콘 어떻게 활용하는지 이게 바로 간편 결제 교육 내용이고요. 
간편 인증은 쉽게 본인 인증 확인을 도와주기 위해서 패스 인증서라는 게 있거든요. 
한 번만 가입하면 그다음부터 쉬워요.
가입하고 발급받는 것까지 그리고 서울 시민이라면 제로페이를 가입하고 발급받아 사용하는 방법까지 마지막으로는 셀프 계산대에서 어떻게 하면 아는 척하고 여유롭게 개선할 수 있는지 한번 간접 체험으로 경험해 보도록 하겠습니다.'),
    (2, 'SD22', 3, '디지털 소비생활 - 간편 결제/간편 인증 소개', '여러분 안녕하세요. 반갑습니다. 오늘 우리는 간편 결제와 간편 인증에 대해서 알아보도록 하겠습니다. 
간편하다는 게 뭘까요? 간편하다는 것은 아주 간단하고 편리하다는 뜻입니다. 
결제가 어떤 물건을 샀을 때 값을 지불하는 그 결제가 간단하게 이루어진다는 것 참 행복한 일이죠
이때 필요한 조건이 있는데요. 똑똑한 스마트폰이 손 안에 있어야 합니다. 
스마트폰으로 즉 모바일로 우리의 소비 생활이 얼마나 간편해지는지 한번 알아볼까요? 간편 결제를 먼저 알아볼 텐데요. 
간편결제를 이해하기 위해서는
간편하지 않은 결제를 먼저 알아보면 어떨까요? 그렇다고 아주 불편하거나 아주 나쁜 결제는 아닙니다. 
전통적으로 그리고 일반적으로 그리고 보통 우리는 어떤 사고 싶은 물건을 구입할 때 처음에는 현금을 냈겠죠 그리고 일정 시간이 지난 뒤에는 플라스틱 신용카드를
냈겠죠 그 신용카드를 긁거나 꽂아서 인식하면 결제가 되는 방식이었죠. 
그런 다음 스마트폰이 등장한 이후에는 우리가 스마트폰 안에서 장을 보죠. 
장바구니에 물건을 담고 결제하는 순간이 왔을 때 보통의 결제 일반적인 결제 전통적인 결제는
신용카드 번호를 하나씩 입력해야 됩니다. 
혹은 통장의 계좌번호도 하나씩 입력해야 됩니다. 
안전한 듯 보이지만 매우 번거로운 작업이겠죠 바로 이런 점 때문에 간편 결제가 등장하게 됩니다. 
자 그렇다면 간편 결제는 어떻게 이루어질까요?
방법은 정말 간편합니다. 물론 처음 한 번 정도는 어떤 노력이 필요해요. 
어떤 노력이냐고요? 자신의 스마트폰에 모바일 결제를 할 때 신용카드 번호 혹은 통장의 계좌번호를 한 번 정도는 정부를 입력해야 합니다.
그 번호를 한번 등록하게 되면 그다음부터는 본인 인증 즉 이 신용카드가 당신 것이 맞습니까? 혹은 이 통장의 계좌번호가 본인이 맞습니까? 이런 본인 인증 절차만 거치면 결제가 되는 방식이겠죠
그러고 보니 간편 결제와 간편 인증은 친구처럼 함께 가는 그림입니다. 
그런데 이런 간편 결제의 방식에 또 다른 친구가 등장하는데요. 
바로 모바일 결제입니다. 다시 말하면 모바일 페이라고 하는데요. 
여기서 페이라는 단어 요즘 많이 쓰이죠
페이는 어떤 값을 지불하다 혹은 결제하다라는 겁니다. 
쉽게 말씀드리면 자신의 신용카드와 통장의 계좌번호를 연결해 두어서 일정 금액을 충전한 뒤에 그 페이를 사용하는 겁니다. 
결제하는 순간마다 사용하는 거죠.
바로 이때 서울 시민이라면 모두가 쓸 수 있는 제로 페이가 등장합니다. 
이 제로페이 써본 적이 있으시다고요? 제로페이는 장점도 있고 단점도 있습니다. 
물론 모든 페이가 마찬가지인데요. 장점은 아주 매력적인데요. 
일정 금액을 충전할 때 혜택이 있는 겁니다. 
예를 들어
10%의 혜택이라고 하면 10만 원어치를 충전할 때 1만 원 정도를 더 충전해주거나 혹은 10만 원을 충전해야 되는데 현금으로 9만 원 정도만 입금하면 10만 원으로 채워주는 방식 이렇든 저렇든 혜택은 1만 원이죠.
이렇게 퍼센트에 따라 혜택을 주는 방식이 가장 큰 장점이고요. 
또 다른 장점들이 있는데 그중에 하나가 세금 공제가 된다는 점. 
하지만 이 페이를 사용할 수 있는 가게, 업소, 소상공, 자영업 시장, 마트 모두가 다 사용하는 게 아니기 때문에 이 가맹점이 점점 더 늘어나고 있는 과정에 있다는 점은 아주 사소한 단점이겠죠.
우리는 지금 신용카드나 통장 계좌 번호를 사용해서 일반적인 간편 결제 첫 번째 방법과 모바일 페이를 사용해서 결제하는 방식을 알아보았는데요. 
여기서 한 가지 큰 주의사항이 있습니다. 
이렇든 저렇든 본인의 신용카드 번호나 통장의 계좌번호를 등록하는 방법이 공통적이기 때문에
이때 이게 안전하게 쓰일까 혹은 금융 범죄에 악용되지 않을까 이런 걱정이 생길 수 있어요. 
이런 점들을 막기 위해 인증 절차가 있는데요. 
특히 두 가지 경우는 아주 예민한 인증이 필요해요. 
어떤 경우냐고요? 이렇게 본인의 금융 정보를 다루는 경우 한 가지와
혹은 가족관계 증명서, 주민등록 등본 이렇게 아주 고급스러운 아주 구체적인 개인의 정보가 담겨 있는 어떤 국가기관의 사이트를 활용하는 데 이럴 때는 더 엄격하게 안전이 필요하겠죠 바로 이때 통신사 패스 인증서 같은 게 필요합니다. 
일반적인 본인 인증은 보통의 본인 인증은
어떤 사용 중에 본인의 휴대폰 번호를 입력하면 인증번호가 휴대폰 문자로 오고 그 번호를 다시 재입력하면 본인이 맞군요라고 지나가는 경우인데 바로 이렇게 예민한 금융기관 혹은 국가기관 사이트를 이용할 때 본인 개인 정보가 아주 구체적으로 안전이 요구될 때 이런 통신사 패스 인증서가 필요한데요.
사전에 한 번 정도 등록을 해서 패스 인증서를 스마트폰에 내려받아서 설치해서 사용하는 겁니다. 
한 번 설치하면 그다음부터는 비밀번호만 입력하면 인증이 이루어지는데요. 
이때 또 한 가지 주의할 점은 비밀번호로 본인의 생년월일 혹은 본인의 휴대폰 번호 같은 숫자로
비밀번호를 만들어 보면 주변 사람이 다 알게 되겠죠 이런 점만 조심하면 되겠습니다. 
여러분 간편 결제를 이해하고 있는데요. 
지금까지의 제 설명은 주로 모바일로 스마트폰으로 혹은 집 안에서 이루어지는 경우인데 이 스마트폰을 들고 시장이나 마트에 직접 가서도 간편 결제가 가능할까요? 네 가능합니다.
장바구니에 물건을 담고 결제하는 순간이 되었을 때에 본인의 스마트폰 그러니까 신용카드 플라스틱을 뚝 꺼내지 않고 신용카드 화면을 보여주는 거죠. 
사전에 등록된 어떤 페이나 여기서는 기프티콘이나 모바일 상품권도 가능한데요. 
이렇게 간편결제 서비스의 화면을 열면 거기에 qr 코드나
바코드를 화면으로 보여주면 상대방이 스캔해서 결제하는 방식이죠. 
그럴 때 여러분 이보다 더 쉬운 방식도 있어요. 
어떤 방식이냐고요? 스마트폰 뒷면을 단말기 근처에 근처에 가기만 하면 삐 소리와 함께 결제되는 nfc 방식이에요. 
쉽게 말하면 가까운 거리 통신 개념입니다. 
우리가 버스 탈 때
버스 카드를 단말기 근처에 가져가면 b 결제되는 거와 똑같은 방식이죠. 
앞으로 서울 시내에 대부분의 버스에 현금을 넣는 통이 사라진다고 하니까 이 nfc 방식을 많이 활용하면 되겠죠 우리는 지금까지 간편 결제와 간편 인증에 대해서 알아보았습니다.
사전에 약간만 노력을 기울이면 그다음부터는 편리하게 쓸 수 있으니 여러분은 그야말로 스마트 시니어가 될 수 있습니다. 
지금까지 경청해 주셔서 감사합니다.'),
    (3, 'SD23', 3, '디지털 소비생활 - 비플제로페이 가입 (시연)', '간편결제 서비스 비플제로페이는 가맹점에서 간편하게 결제가 가능하고 특히 동네 상권에서 유용하게 활용할 수 있습니다. 
비플제로페이 첫 화면을 눌러서 다음 단계로 진행해 주세요. 
비플제로페이는 회원 가입이 필요합니다. 
실습에서 입력한 정보는 저장 및 전송되지 않습니다.
회원 가입을 위해 이름을 입력하고 엔터 또는 확인을 눌러주세요.
이름이 입력되었습니다. 화면 하단에 파란색 다음 버튼을 눌러주세요. 
주민등록번호 앞자리 생년월일 6자리를 입력하고 엔터 또는 확인을 눌러주세요.
주민등록번호 뒤 첫 자리를 입력하고 엔터 또는 확인을 눌러주세요.
본인 인증에 사용할 휴대폰 통신사를 선택합니다. 
통신사 항목을 눌러서 통신사 선택 상자를 열어주세요. 
통신사 선택에서 총 6가지 통신사 유형을 확인할 수 있습니다. 
통신사를 눌러서 선택해 주세요. 통신사가 선택되었습니다. 
휴대폰 번호를 숫자만 입력하고 엔터 또는 확인을 눌러주세요.
인증 문자를 받기 위해 화면 하단 파란색 인증 문자 받기 버튼을 눌러주세요. 
인증번호 받기를 누르면 비플제로페이 사용을 위한 약관이 안내됩니다. 
약관에 모두 동의 왼쪽 동그라미 부분을 눌러서 체크해 주세요. 
약관에 동의하고 화면 하단 다음 버튼을 누르면 인증번호가 휴대폰으로 전송됩니다.
휴대폰 문자로 인증번호가 발송됩니다. 
휴대폰에 수신된 인증번호를 입력합니다. 
실습에서는 입력창을 눌러서 2 4 9 7 3을 입력하고 엔터 또는 확인을 눌러주세요. 
인증번호가 입력되었습니다. 파란색 인증 완료 버튼을 눌러주세요.
본인 인증이 완료되었습니다. 확인을 눌러 다음으로 진행해 주세요. 
비플제로페이 회원 가입이 완료되었습니다. 
비플제로페이를 사용하려면 여섯자리 숫자로 된 거래 승인번호 설정이 필요합니다. 
거래 승인번호 설정하기를 눌러주세요. 
여섯자리 숫자로 거래 승인번호를 설정하겠습니다.
거래 승인번호는 결제할 때 비밀번호로 사용됩니다. 
실습에서는 20 2 1 1 2로 설정하겠습니다. 
첫 번째 자리 이를 입력해 주세요. 두 번째 자리 0을 해 주세요. 
세 번째 자리 이를 입력해 주세요. 네 번째 자리 이를 입력해 주세요. 
다섯 번째 자리 이를 입력해 주세요. 
여섯번째 자리 이를 해 주세요.
거래 승인번호 20, 2, 1, 1, 1을 다시 한 번 입력해 주세요. 
첫 번째 자리 1을 입력해 주세요. 두 번째 자리 0을 입력해 주세요. 
세 번째 자리 이를 력해 주세요. 네 번째 자리 1을 입력해 주세요. 
다섯 번째 자리 이를 입력해 주세요. 
여섯 번째 자리 이를 입력해 주세요.
비밀번호 설정이 완료되었습니다. 이제 비플제로페이를 사용할 준비가 되었습니다. 
다음 시간에는 비플제로페이의 계좌를 연결하는 실습을 진행하겠습니다.'),
    (4, 'SD24', 3, '디지털 소비생활 - 비플제로페이 계좌연결/사용법 (시연)', '비플제로페이로 상품권 없이 은행 계좌에서 즉시 결제하기 위해서 은행 계좌를 제로페이에 연결하는 실습을 진행하겠습니다. 
계좌에서 제로페이 결제 버튼을 눌러주세요. 
비플제로페이의 개인용 계좌를 등록해야만 계좌에서 제로페이 결제 개인용 서비스 이용이 가능합니다. 
제로페이의 계좌를 등록하기 위해 확인을 눌러주세요.
계좌 관리 화면입니다. 제로페이 결제와 상품권 구매를 위한 계좌 정보를 관리합니다. 
현재 등록된 계좌가 없습니다. 계좌 등록을 위해서 더하기 표시를 눌러주세요. 
실습에서 입력한 정보는 저장 및 전송되지 않습니다. 
등록을 원하는 본인 명의의 계좌 은행을 선택해 주세요.
이름은 자동으로 등록되어 있습니다. 계좌번호를 숫자만 입력하고 엔터 또는 확인을 눌러주세요.
계좌번호 입력이 완료되었습니다. ars 인증 전화 수신을 위해 화면 하단 ars 인증 버튼을 눌러주세요. 
전화를 받아서 ars 인증을 진행해 주세요. 
안내 음성을 잘 듣고 요청하는 정보를 키패드로 입력하면 인증됩니다. 
실습에서는 화면을 눌러 다음으로 진행해 주세요. 
ars 인증을 통해 계좌 등록이 완료되었습니다.
화면 하단 파란색 확인 버튼을 눌러주세요. 
계좌 연결이 완료되었습니다. 가맹점에서 비플제로페이로 결제하는 방법에는 크게 두 가지가 있습니다. 
화면을 눌러서 다음으로 진행해 주세요. 
첫 번째 방법은 가맹점에서 상품을 구매할 때 비플제로페이 앱의 바코드와 qr 코드를 활용해서 결제를 진행하는 방법입니다.
실습을 위해 화면을 눌러서 다음으로 진행해 주세요. 
비플제로페이 메뉴에서 계좌에서 제로페이 결제 앱 버튼을 눌러주세요.
연결해 놓은 계좌가 보입니다. 화면의 오른쪽에 결제하기 버튼을 눌러주세요. 
은행 계좌에서 결제된다는 메시지와 함께 qr 코드를 인식할 수 있는 화면과 바코드 그림이 보이고 있습니다. 
화면 하단에 바코드 그림을 눌러서 다음으로 진행해 주세요. 
이제 비플제로페이 앱에서 생성된 바코드와 qr 코드를 확인할 수 있습니다. 
그럼 바코드와 qr 코드를 통해 결제하는 방법을 확인하기 위해
화면을 눌러서 다음으로 진행해 주세요. 
가맹점에서 물건을 구매할 때 바코드나 qr 코드를 매장 카운터에 보여주고 이를 바코드 스캐너로 스캔하면 결제가 완료됩니다. 
스캔을 하는 동시에 연결된 계좌에서 출금이 진행되고 결제가 완료됩니다. 
화면을 눌러서 다음으로 이동해 주세요.
서울 디지털 재단 가게에서 8,800원의 상품을 구매했다는 영수증이 바로 발급되었습니다. 
이제 화면을 눌러서 다음 결제 방법을 실습해 보겠습니다. 
화면을 눌러주세요. 두 번째 방법은 가맹점에서 상품을 구매할 때 가맹점에 비치 또는 부착되어 있는 qr 코드를 고객이 스캔해서 결제하는 방법입니다.
매장마다 고유의 qr 코드가 있어서 이 코드를 스캔하면 매장의 결제 화면으로 연결되는 방식입니다. 
화면을 눌러서 다음으로 진행해 주세요. 
비플제로페이 메뉴에서 계좌에서 제로페이 결제 앱 버튼을 눌러주세요. 
연결해 놓은 계좌가 보입니다. 화면의 오른쪽에 결제하기 버튼을 눌러주세요. 
은행 계좌에서 결제된다는 메시지와 함께
qr 코드를 인식할 수 있는 화면과 바코드 그림이 보이고 있습니다. 
이번에는 가맹점의 비치 및 부착되어 있는 비플제로페이 qr 코드를 스캔하겠습니다. 
qr 코드를 화면에 인식해 주세요. 실습에서는 qr 코드 이미지를 눌러주세요. 
가맹점의 정보가 인식되고
매장 결제 화면으로 연결되었습니다. 비플제로페이 가맹점으로 등록된 매장이라면 이렇게 비플제로페이 앱을 활용해서 결제를 진행할 수 있습니다. 
이제 결제를 진행하기 위해서 금액을 입력하겠습니다. 
결제 금액 입력을 눌러서 만 2300원을 입력하고 엔터 또는 확인을 눌러주세요.
결제 금액에 1만 2천300원이라고 입력했습니다. 
결제 금액에 직접 입력한 금액대로 결제가 진행되므로 결제할 금액을 잘 확인하고 입력해주세요. 
결제되는 계좌를 확인한 다음 결제하기를 눌러주세요. 
결제 금액을 다시 한 번 확인한 다음 확인을 눌러서 결제를 완료해 보겠습니다. 
확인을 눌러주세요.
결제가 완료되었습니다. 서울 디지털 재단 가게에서 1만 2천300원의 상품을 구매했다는 영수증이 발급되었습니다. 
이제 비플제로페이 앱을 활용해서 보다 편리한 소비 생활을 누려보세요.'),
    (5, 'SD25', 3, '디지털 소비생활 - 패스인증서 가입 (시연)', '간편 인증 및 인증서 발급을 위한 패스 앱 실습입니다. 
패스 앱은 통신사에서 제공하는 서비스로 이용 중인 통신사의 패스 앱을 설치해야만 이용이 가능합니다. 
화면을 눌러서 다음으로 진행해 주세요. 
최초 패스 앱을 실행하면 간편 본인 확인 정보를 등록합니다. 
이름과 주민등록번호 앞자리 주민등록번호 뒤 첫 자리
그리고 휴대폰 번호가 필요합니다. 화면을 눌러서 다음으로 진행해 주세요. 
실습에서 입력한 정보는 저장 및 전송되지 않습니다. 
간편 본인 확인 정보 등록에서 이름을 입력하고 엔터 또는 확인을 눌러주세요.
주민등록번호 앞자리 생년월일 6자리를 입력하고 엔터 또는 확인을 눌러주세요.
주민등록번호 뒤 첫 자리를 입력하고 엔터 또는 확인을 눌러주세요. 
휴대폰 번호를 숫자만 입력하고 엔터 또는 확인을 눌러주세요.
본인 확인을 위한 정보 입력이 완료되었습니다. 
화면 하단 검은색 다음 버튼을 눌러주세요. 
패스 앱 사용을 위한 필수 동의 항목과 선택 동의 항목이 있습니다. 
실습에서는 패스 필수 항목 모두 동의 왼쪽에 체크 표시를 눌러주세요. 
패스 필수 항목 모두 동의에 체크되었습니다. 
선택 항목은 체크하지 않겠습니다. 화면 하단 검은색 다음 버튼을 눌러주세요.
인증번호가 입력한 휴대폰 번호로 전송됩니다. 
실습에서는 인증번호의 7 59 77 4를 입력하고 엔터 또는 확인을 눌러주세요. 
인증번호가 입력되었습니다. 화면 하단 검은색 확인 버튼을 눌러주세요.
인증 진행 중입니다. 인증이 완료되면 비밀번호 등록 화면으로 이동합니다. 
실습에서는 화면을 눌러서 다음으로 진행해 주세요. 
패스 앱을 실행하고 간편 인증을 진행할 때 비밀번호 입력을 통해 인증이 완료됩니다. 
따라서 사용할 비밀번호 설정이 필요합니다. 
화면을 눌러서 다음으로 진행해 주세요. 
비밀번호는 개인 정보가 포함되거나 쉽게 예상할 수 없는 비밀번호를 설정해 주세요.
실습에서는 20 2 1 1 2를 비밀번호로 설정하겠습니다. 
설정할 비밀번호 첫 번째 자리 이를 입력해 주세요. 
두 번째 자리 0을 입력해 주세요. 세 번째 자 이를 입력해 주세요. 
네 번째 자 일을 입력해 주세요. 다섯 번째 자리 1을 입력해 주세요.
여섯 번째 자리 이를 입력해 주세요. 
비밀번호를 한 번 더 입력합니다. 반드시 처음 입력한 비밀번호를 한 번 더 입력해야 합니다. 
실습에서 설정한 비밀번호 2, 0, 2, 1, 2위. 
첫 번째 자리 이를 입력해 주세요. 두 번째 자리 0을 입력해 주세요. 
세 번째 자리
이를 입력해 주세요. 네 번째 자리 이를 입력해 주세요. 
다섯 번째 자리 이를 입력해 주세요. 
여섯 번째 자리 이를 입력해 주세요. 
입력하신 6자리 비밀번호가 설정되었고 패스 가입이 완료되었습니다.'),
    (6, 'SD26', 3, '디지털 소비생활 - 패스인증서 발급 (시연)', '패스 앱 가입에 이어서 금융기관, 공공기관 그리고 각종 웹사이트에서 인증 수단으로 사용 가능한 패스 인증서 등록을 실습하겠습니다. 
패스 인증서를 등록하기 위해서 패스 앱 첫 화면에서 인증서 관리 버튼을 눌러주세요. 
인증서 관리 화면입니다. 발급받은 인증서가 없을 경우 화면과 같이 새로운 인증서 발급 버튼과 인증 대기 목록을 확인할 수 있습니다.
패스 인증서 발급하기 영역을 눌러주세요. 
공동인증서보다 더 간편한 패스 인증서 발급을 위한 약관 동의 절차입니다. 
선택 항목은 체크하지 않고 인증서 발급을 진행하겠습니다.
서비스 이용을 위해 필수로 동의가 필요한 서비스 필수 항목 모두 동의해 체크해 주세요. 
서비스 필수 항목 모두 동의에 체크되었습니다. 
선택 항목은 동의하지 않고 진행하겠습니다. 
화면 하단 검은색 발급하기 버튼을 눌러주세요. 
인증서 발급을 위해서 회원가입 실습 시 입력했던 비밀번호 20, 21, 1, 2를 입력하겠습니다.
번호 자판을 이용하여 비밀번호 첫 번째 자리 이를 눌러주세요. 
두 번째 자리 0을 눌러주세요. 세 번째 자리 1을 눌러주세요. 
네 번째 자리 1을 눌주세요. 다섯 번째 자리 눌러주세요. 
여섯 번째 자리 1을 눌러주세요. 인증서 발급이 완료되었습니다. 
이제 패스 인증서를 활용해 보세요.'),
    (7, 'SD27', 3, '디지털 소비생활 - 셀프 계산대 체험 (시연)', '셀프 계산대를 사용하는 방법에 대해 실습해보겠습니다. 
매장에서는 제품의 바코드를 찾아 스캔하거나 스캔 시작하기 버튼을 누르면 셀프 계산이 시작됩니다. 
스캔 시작하기 버튼을 눌러주세요.
결제할 상품의 바코드를 찾아 스캐너로 스캔해 주세요. 
실습에서는 화면을 눌러서 스캔을 대신하겠습니다. 
화면을 눌러서 다음으로 이동해 주세요. 
스카치 테이프 한 개가 스캔되었습니다. 
스캔 한 제품과 스캔하지 않은 제품이 잘 구분되도록 스캔 한 제품은 꼭 포장대 위로 이동하여 놓아주세요.
화면을 눌러서 다음으로 이동해 주세요. 
제품을 스캔하고 포장대로 옮기는 작업은 중요합니다. 
스캔한 제품이 포장대 위로 이동하면 센서 또는 무게로 인식하고 다음 제품 스캔이 가능한 셀프 계산대가 많이 보급되어 있습니다. 
스캔한 상품을 포장대 위로 옮겨놓아 주세요. 
포장대로 전부 이동했다면 확인을 눌러주세요.
다음 상품의 바코드를 찾아 스캔너로 스캔해주세요. 
실습에서는 화면을 눌러서 스캔을 대신하겠습니다. 
화면을 눌러서 다음으로 이동해 주세요. 
자두마 캔디 한 개가 스캔되었습니다. 
화면을 눌러서 다음으로 이동해 주세요. 
스캔한 제품과 스캔하지 않은 제품이 잘 구분되도록 스캔한 제품은 꼭 포장대 위로 이동하여 놓아주세요.
포장대로 전부 이동했다면 확인을 눌러주세요. 
포장대로 이동한 상품과 가격을 확인하고 결제하기를 눌러서 다음으로 진행해 주세요. 
포인트 적립 및 사용 화면입니다. 실습에서는 휴대폰 번호를 이용해 포인트를 적립하겠습니다. 
휴대폰 번호 입력 버튼을 눌러주세요.
휴대폰 번호를 입력하겠습니다. 휴대폰 번호를 숫자만 입력하고 엔터 또는 확인을 눌러주세요.
휴대폰 번호가 입력되었습니다. 확인 버튼을 눌러 포인트 적립을 완료해 주세요. 
입력한 번호와 함께 회원 정보를 확인할 수 있습니다. 
포인트 적립을 완료하고 쇼핑 계속하기를 눌러 다음으로 이동해 주세요. 
물건 값 4천800원을 결제할 수단을 선택해 주세요. 
실습에서는 신용카드로 결제하겠습니다. 
신용카드 버튼을 눌러주세요.
결제할 카드를 꺼내 카드 투입구에 넣어주세요. 
화면을 눌러서 다음으로 이동해 주세요. 
카드의 ic 칩이 인식될 수 있도록 투입구 끝까지 밀어넣어 주세요. 
화면을 눌러서 다음으로 이동해 주세요. 
승인 중입니다. 카드가 승인되고 결제 완료 화면이 나올 때까지 카드를 빼지 말고 기다려주세요.
결제 과정에서 모니터에 나오는 지시 사항을 잘 확인해서 대응해 주세요. 
카드를 인식하지 못하는 경우 카드를 뺐다가 다시 놓으면 됩니다. 
화면을 눌러서 다음으로 이동해 주세요.
결제가 완료되었습니다. 결제 완료. 화면을 확인하고 화면을 눌러서 다음으로 이동해 주세요. 
종이 영수증 여부를 선택해 주세요. 실습에서는 영수증을 받겠습니다. 
옛 버튼을 눌러주세요. 영수증이 출력 중입니다. 
기다려주세요. 화면을 눌러서 다음으로 진행해 주세요.
셀프 계산대 쇼핑이 완료되었습니다. 카드와 상품 영수증을 잘 챙겨주세요.');

INSERT INTO public.lecture(category, level, title, detail, total_time, thumenail_link, video_link, is_active)
	VALUES 
    ('디지털 역량 강화', '초급', '스마트폰 기본설정', '시니어 대상 맞춤형 스마트폰 교육 (구글계정,앱설치,환경설정법) 입니다.', 10, 'https://sdfedu.seoul.kr/data/file/1e2af834014910febb15675661e6cb1f.jpg', 'https://sdfedu.seoul.kr/course/course_view.jsp?id=28&ch=course1&s_style=webzine&cid=3&ccid=&s_field=&s_keyword=', false),
    ('디지털 역량 강화', '고급', '스마트폰 심화과정', '시니어 대상 스마트폰 교육 (QR체크인, ZOOM 활용법) 입니다', 18, 'https://sdfedu.seoul.kr/data/file/2b8b97f0e43247a3f0579ee8049479f4.jpg', 'https://sdfedu.seoul.kr/course/course_view.jsp?id=31&ch=course1&s_style=webzine&cid=3&ccid=&s_field=&s_keyword=', false),
    ('디지털 역량 강화', '고급', '시니어 디지털 교통 편의', '교통편의 서비스 활용', 18, 'https://sdfedu.seoul.kr/data/file/3298a8df44799b286fcb8e459ddceefc.jpg', 'https://sdfedu.seoul.kr/course/course_view.jsp?id=32&ch=course1&s_style=webzine&cid=3&ccid=&s_field=&s_keyword=', false),
    ('디지털 역량 강화', '고급', '시니어 디지털 행정', '디지털 행정! 정부24, 안전신문고, 서울시 공공예약서비스 주정차알림서비스 활용법을 알아보겠습니다.', 18, 'https://sdfedu.seoul.kr/data/file/19fb252ac3b6399c4bd1cad0ebada9e9.jpg', 'https://sdfedu.seoul.kr/course/course_view.jsp?id=34&ch=course1&s_style=webzine&cid=3&ccid=&s_field=&s_keyword=', false),
    ('디지털 역량 강화', '고급', '시니어 디지털 범죄', '디지털 범죄 예방 스미싱, 메신저피싱, 보이스피싱', 18, 'https://sdfedu.seoul.kr/data/file/79ecba10e9c9430347c41c7ad30c0fa1.jpg', 'https://sdfedu.seoul.kr/course/course_view.jsp?id=35&ch=course1&s_style=webzine&cid=3&ccid=&s_field=&s_keyword=', false),
    ('디지털 역량 강화', '고급', '챗GPT 이용방법', '요즘 대세 #챗GPT 회원가입에서부터 이용방법까지 아나운서가 자세하게 알려 드립니다!', 18, 'https://sdfedu.seoul.kr/data/file/b26df697a2838efb1d5ced7abcaf9cf4.jpg', 'https://sdfedu.seoul.kr/course/course_view.jsp?id=180&ch=course1&s_style=webzine&cid=3&ccid=&s_field=&s_keyword=', false),
('AI 빅데이터 역량 강화',	'초급',	'데이터 맛보기',	'데이터에 대한 기본적인 지식을 부담없이 학습할 수 있도록 설계한 교육과정 입니다.',	1	,'https://sdfedu.seoul.kr/data/file/0d0cb676e137cf97565ccc3734ca0b57.jpg',	'https://sdfedu.seoul.kr/course/course_view.jsp?id=27&ch=course2&s_style=webzine&cid=2&s_field=&s_keyword=', false),
('AI 빅데이터 역량 강화',	'초급',	'디지털 트렌드',	'요즘 이슈가 되고 있는 디지털 기술들을 알기 쉽고 친절하게 설명해 드리는 교육과정입니다.',	1	,'https://sdfedu.seoul.kr/data/file/4842b5a78f376777978a400a57e641c3.jpg',	'https://sdfedu.seoul.kr/course/course_view.jsp?id=36&ch=course2&s_style=webzine&cid=2&s_field=&s_keyword=', false),
('AI 빅데이터 역량 강화',	'초급',	'데이터시대 정보 리터러시',	'데이터와 관련된 기초 지식을 탄탄하게 배울 수 있습니다.',	1	,'https://sdfedu.seoul.kr/data/file/90397ca8a1c3ac5c06e5496ef0212e45.jpg',	'https://sdfedu.seoul.kr/course/course_view.jsp?id=37&ch=course2&s_style=webzine&cid=2&s_field=&s_keyword=', false),
('AI 빅데이터 역량 강화',	'초급',	'공공데이터 구경하기',	'공공데이터 종류, 수집방법 등 공공데이터의 AtoZ를 배울 수 있습니다.',	1	,'https://sdfedu.seoul.kr/data/file/db3cbaff2794a1201b6c5629e1e3daab.jpg',	'https://sdfedu.seoul.kr/course/course_view.jsp?id=38&ch=course2&s_style=webzine&cid=2&s_field=&s_keyword=', false),
('AI 빅데이터 역량 강화',	'초급',	'데이터 분석 체험하기 Part1',	'엑셀 기초 이론, 분석부터 시각화 실습까지 배워봅니다.',	1	,'https://sdfedu.seoul.kr/data/file/8d6eef35b46e340ea7e51f81a614445b.jpg',	'https://sdfedu.seoul.kr/course/course_view.jsp?id=53&ch=course2&s_style=webzine&cid=2&s_field=&s_keyword=', false),
('AI 빅데이터 역량 강화',	'초급',	'데이터 분석 체험하기 Part2',	'엑셀 함수와 파워쿼리 기능을 배워봅니다. (Part 1. 선수강 권장)',	1	,'https://sdfedu.seoul.kr/data/file/14128b0ce613fe6c4a304d0234e9f3dc.jpg',	'https://sdfedu.seoul.kr/course/course_view.jsp?id=54&ch=course2&s_style=webzine&cid=2&s_field=&s_keyword=', false),
('AI 빅데이터 역량 강화',	'초급',	'데이터 분석을 위한 통계수학 기초과정',	'데이터 분석에 필요한 통계수학을 기초 수준에서 배워봅니다.',	1	,'https://sdfedu.seoul.kr/data/file/5b8639724f5e942d5f0eeebd8a99526e.jpg',	'https://sdfedu.seoul.kr/course/course_view.jsp?id=55&ch=course2&s_style=webzine&cid=2&s_field=&s_keyword=', false),
('AI 빅데이터 역량 강화',	'초급',	'디자인씽킹 기반 데이터 분석 과정',	'디자인적 사고에 입각하여 데이터 분석이 필요한 요소를 도출하고, 분석 도구를 활용하여 실제 분석 과정을 체험해 볼 수 있습니다.',	1	,'https://sdfedu.seoul.kr/data/file/a50ea3c551654bf03aa178d5112e3e7e.jpg',	'https://sdfedu.seoul.kr/course/course_view.jsp?id=56&ch=course2&s_style=webzine&cid=2&s_field=&s_keyword=', false),
('AI 빅데이터 역량 강화',	'초급',	'파이썬을 활용한 공공데이터 전처리 과정',	'파이썬 언어로 데이터 분석에 도전해 보고 싶은 분들을 위해 준비한 기초과정입니다.',	1	,'https://sdfedu.seoul.kr/data/file/8df111c64900e89e594c15a2a9b4a5b3.jpg',	'https://sdfedu.seoul.kr/course/course_view.jsp?id=57&ch=course2&s_style=webzine&cid=2&s_field=&s_keyword=', false),
('AI 빅데이터 역량 강화',	'초급',	'R로 하는 데이터 분석 기초(공공데이터 활용)','통계 및 데이터 분석에 많이 쓰이는 R 프로그램을 활용하여 데이터 전처리에서부터 데이터 분석 및 시각화까지 수행해 보고 싶은 분들을 위해 준비',	1	,'https://sdfedu.seoul.kr/data/file/855b915f32f48ea038e287b05e547b40.jpg',	'https://sdfedu.seoul.kr/course/course_view.jsp?id=58&ch=course2&s_style=webzine&cid=2&s_field=&s_keyword=', false),
('AI 빅데이터 역량 강화',	'중급',	'PowerBI를 활용한 데이터 시각화','데이터를 분석 및 시각화하여 신속한 의사결정을 할 수 있도록 Insight를 제공하는 클라우드 데이터 분석 서비스 Power BI!',	1	,'https://sdfedu.seoul.kr/data/file/b5859f424a48508fe45b00abab20bd8d.jpg',	'https://sdfedu.seoul.kr/course/course_view.jsp?id=59&ch=course2&s_style=webzine&cid=2&s_field=&s_keyword=', false),
('AI 빅데이터 역량 강화',	'중급',	'파이썬을 활용한 공공데이터 시각화 과정','파이썬 언어로 수준 높은 데이터 분석 및 시각화에 도전해 보고 싶은 분들을 위해 준비한 중급과정입니다.',	1	,'https://sdfedu.seoul.kr/data/file/91f2bf2f9842009762261c8d5201d161.jpg',	'https://sdfedu.seoul.kr/course/course_view.jsp?id=60&ch=course2&s_style=webzine&cid=2&s_field=&s_keyword=', false),
('AI 빅데이터 역량 강화',	'고급',	'파이썬을 활용한 공공데이터 머신러닝','파이썬 언어로 데이터 분석 전문가에 도전해 보고 싶은 분들을 위해 준비한 심화과정입니다.',	1	,'https://sdfedu.seoul.kr/data/file/9b85e37aeddf77343bf5a95c120a2735.jpg',	'https://sdfedu.seoul.kr/course/course_view.jsp?id=61&ch=course2&s_style=webzine&cid=2&s_field=&s_keyword=', false),
('AI 빅데이터 역량 강화',	'고급',	'파이썬을 활용한 열린데이터 텍스트분석','파이썬 언어로 데이터 분석 전문가에 도전해 보고 싶은 분들을 위해 준비한 심화과정입니다.',	1	,'https://sdfedu.seoul.kr/data/file/b2cc5880aeb1b683f9745c6bba469740.jpg',	'https://sdfedu.seoul.kr/course/course_view.jsp?id=62&ch=course2&s_style=webzine&cid=2&s_field=&s_keyword=', false),
('AI 빅데이터 역량 강화',	'고급',	'QGIS를 활용한 서울형 공간정보 데이터 분석','QGIS, Biz-Gis, PowerBi 등의 지리정보분석 및 데이터 분석 도구를 활용하여 서울시의 다양한 지리정보 데이터를 활용하는 방법을 익힐 수 있습니다.',	1	,'https://sdfedu.seoul.kr/data/file/04687a3dd6715aa63300dad256e7dd9c.jpg',	'https://sdfedu.seoul.kr/course/course_view.jsp?id=63&ch=course2&s_style=webzine&cid=2&s_field=&s_keyword=', false);

