# aspproject
Asp.net 웹어플리케이션(.netframework)만들기
비어있음
폴더 및 핵심 참조 추가--> 웹폼선택
프로젝트--> 새 항목추가 -->웹--> web Form -->이름:FrmHelloWorld.aspx
**웹 폼 파일명 앞에 Frm 접두사를 붙이는 이유는 웹 폼 파일명 생성 시 내부적으로 코드 숨김 파일이라고 해서 
같은 이름으로 C# 클래스가 만들어지는데,
Page 클래스 학습 시 Page.aspx로 파일을 만들면 실제 Page 클래스와 클래스명이 충돌이 나기에 
FrmPage 식으로 변경해서 사용하는 것이다. 
단, 데모용 예제에서만 사용하지 실제 현업 프로젝트에서는 Frm 접두사를 사용하지 않고 
ShoppingCart.aspx와 같이 의미 있는 단어로 각각의 페이지를 생성

TextBox-->txtDisplay
Button-->클릭

protected void btnClick_Click(object sender, EventArgs e)
        {
            txtDisplay.Text = "안녕하세요.";
        }

FrmHelloWorld.aspx-->마우스오른쪽:시작 페이지로 설정
control + f5

**Visual Studio는 localhost:5285와 같이 포트 번호를 동적으로 만들어 내 해당 웹 사이트를 실행한다. 
윈도 서버의 IIS와 같은 웹 서버를 사용할 수도 있으나 Visual Studio 자체 웹 서버를 사용해서 동적으로 해당 웹 사이트 폴더에 있는
 ASP.NET 페이지를 실행한다. 하지만 실제 서버에서 실행될 때는 가상 포트를 사용하지 않고 IIS와 같은 웹 서버에 올린 다음에 
서비스되어야 하기에 로컬에서 개발할 때는 가상 포트를 사용하고 실제 서버에서 서비스될 때는 IIS와 같은 웹 서버를 사용해야 한다.

ASP.NET은 크게 웹 폼과 MVC로 구분하지만 기본적으로는 ASP.NET 웹 폼, 그리고 두 영역에서 두루 사용할 수 있는 명령어 부분을 의미한다. 
이 장에서는 ASP.NET 웹 폼 부분을 공부해보자.

ASP.NET 웹 페이지 하나는 
디자인을 담당: Default.aspx (웹 폼페이지):ASP.NET 웹 페이지의 확장자는 *.aspx, ASP.NET 웹 폼
코드를 담당: Default.aspx.cs(코드 숨김페이지)

System.Web.UI.Page 클래스
ASP.NET의 각 웹 페이지는 Page 클래스에서 모든 기능을 상속 받는다. 
Page 클래스는 웹 사이트 제작에 필요한 모든 구성 요소를 지니고 있다. 
Page 클래스를 상속 받으므로 해당 웹 폼 페이지는 아주 손쉽게 웹 페이지를 구성할 수 있다.
public partial class Default : System.Web.UI.Page ► Page 클래스

ASP.NET 서버 컨트롤
서버 컨트롤이란 HTML 태그의 버튼, 텍스트박스, 레이블처럼 웹 페이지에서 모양과 기능을 지닌 표현 단위 하나를 말한다.

runat=“server”
ASP.NET은 모든 HTML 구성 요소에 ID 속성과 runat="server" 속성을 주어 HTML 태그에서 ASP.NET 서버 컨트롤로 바꿀 수 있다.
**HTML 태그와 ASP.NET 서버 컨트롤 
이 책을 통해 웹 폼과 MVC의 장점을 모두 익혀서 웹 사이트를 제작하는 최적의 방식을 습득하자

ASP.NET 관련 확장자
• aspx: ASP.NET의 기본 확장자. 웹 폼을 의미한다.
• ascx: 단독으로는 실행되지 않으며 aspx에 포함되어서 실행되는 웹 폼 사용자 정의 컨트롤을 의미한다.
• master: 웹 사이트의 공통 레이아웃을 담고 있는 마스터 페이지에 대한 확장자다.
• cshtml: ASP.NET MVC에서의 뷰(View) 페이지를 C# 문법으로 작성하는 페이지다.
• config: 각종 환경 설정을 하는 파일이다. web.config, bundle.config 등이 있다.

=실습=========================================
DevASPNET만들기
폴더 및 핵심 참조 추가--> X
솔루션 탐색기의 프로젝트에 마우스 오른쪽 버튼을 클릭해서 추가 > 새 항목 메뉴를 클릭
웹--> web Form -->이름:FrmASPNET.aspx
control + f5
div태그안에 <em>ASP.NET의 세계에 오신 것을 환영합니다</em>추가
===================================================

Page_Load 이벤트 처리기
# 콘솔 응용 프로그램에서 프로그램의 진입점을 나타내는 Main 메서드와 같다


ASP.NET 주요 내장 개체
Response 개체, Request 개체, Server 개체, Application 개체, Session 개체
Response 개체
** C# 콘솔 응용 프로그램에서의 Console.Write()에 해당하는 ASP.NET의 명령어는 Response.Write() 메서드다.
=====================================================
이름			위치
-----------------------------------------------------------------------------------------------
Write()			페이지에 문자열을 출력한다.
			HTML을 포함해 자바스크립트를 실행할 수도 있다.
Redirect()			지정된 페이지로 이동한다.
Expires			현재 페이지의 소멸 시간을 설정한다.
Buffer			버퍼링 사용 여부를 결정한다.
Flush()			현재 버퍼의 내용을 출력한다.
Clear()			현재 버퍼의 내용을 비운다.
End()			현재 페이지를 종료한다.
			End() 메서드 이후의 코드는 실행하지 않는다.
WriteFile()		스트림(파일)을 출력한다.
Cookies[]			쿠키를 저장한다.
=============================================================
쿠키(Cookie)
웹 서버가 웹 브라우저에 보내서 저장했다가 서버의 요청이 있을 때 다시 서버로 보내주는 문자열 정보다. 
사용자가 특정 웹 사이트에 접속했을 때 관련 기록을 남겨 놓았다가 다음에 같은 웹 사이트에 접속하면 남겨둔 기록을 읽어 이전 상태로 유지하는 역할을 한다. 
쿠키는 클라이언트 컴퓨터의 웹 브라우저에서 저장하는 데이터이며, 반대로 서버에 저장하는 데이터는 세션(Session)이라고 한다.

=실습=========================================
DevASPNET
솔루션 탐색기의 프로젝트에 마우스 오른쪽 버튼을 클릭해서 추가 > 새 항목 메뉴를 클릭
웹--> web Form -->이름:FrmResponseWrite.aspx
<%= %> 구문에 있는 문자열은 코드 숨김 페이지에서 Response.Write() 메서드로 문자열을 출력하는 기능과 같은 기능
FrmResponseWrite.aspx
<asp:Button ID="btnClick" runat="server" Text="클릭" OnClick ="btnClick_Click" />
 <br />
<%= "또 만나요<br />" %>
 <asp:Button ID="btnJavaScript" runat="server" Text= "자바스크립트로 인사말 출력" OnClick="btnJavaScript_Click" />
추가
FrmResponseWrite.aspx.cs
       protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("안녕하세요.<br />");
        }

        protected void btnClick_Click(object sender, EventArgs e)
        {
            Response.Write("<span style=‘color:blue;’>반갑습니다.</span><br />");
        }

        protected void btnJavaScript_Click(object sender, EventArgs e)
        {
            string strJs = @"
            <script language='JavaScript'>
            window.alert('안녕');
             </script>";
            Response.Write(strJs);
        }
추가

솔루션 탐색기의 프로젝트에 마우스 오른쪽 버튼을 클릭해서 추가 > 새 항목 메뉴를 클릭
웹--> web Form -->이름:FrmResponseBuffer.aspx
protected void Page_Load(object sender, EventArgs e)
        {
            // [0] 현재 페이지를 매번 새로 읽어옴
            Response.Expires = -1;
            // [1] 버퍼링 사용
            Response.Buffer = true;
            // [2] 화면 글쓰기
            Response.Write("[1] 현재 글은 보여짐<br />");
            // [3] 현재 버퍼에 있는 내용 출력
            Response.Flush();
            // [4] 화면 글쓰기
            Response.Write("[2] 현재 글은 안 보임<br />");
            // [5] 현재 버퍼 내용 비우기
            Response.Clear();
            // [6] 문자열 출력
            Response.Write("[3] 보여짐<br />");
            // [7] 현재 페이지 종료
            Response.End();// Response.Flush()+End()
            // [8] 문자열 출력
            Response.Write("[4] 실행 안 됨<br />");
        }

솔루션 탐색기의 프로젝트에 마우스 오른쪽 버튼을 클릭해서 추가 > 새 항목 메뉴를 클릭
웹--> web Form -->이름:FrmResponseRedirect.aspx
FrmResponseRedirect.aspx
asp:Button ID="btnDotNetKorea" runat="server" Text="닷넷코리아" OnClick="btnDotNetKorea_Click"/>
            <br />
            <asp:LinkButton ID="btnDevLec" runat="server" 
                OnClick="btnDevLec_Click">데브렉</asp:LinkButton>    
            <br />
            <asp:ImageButton ID ="btnVisualAcademy" runat="server" 
                AlternateText="비주얼아카데미" ToolTip="하와소" OnClick="btnVisualAcademy_Click"
                Style="height: 16px" /><br />

FrmResponseRedirect.aspx.cs
protected void btnDotNetKorea_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://www.dotnetkorea.com/");
      }

        protected void btnDevLec_Click(object sender, EventArgs e)
        {
            string strUrl = "http://www.devlec.com/";
            Response.Redirect(strUrl);
        }

        protected void btnVisualAcademy_Click(object sender, ImageClickEventArgs e)
        {
            string strUrl = String.Format("http://{0}/{1}?{2}={3}",
                "www.visualacademy.com",
                "default.htm", "UserID", "RedPlus");
            Response.Redirect(strUrl);
        }
======================================================================

Request 개체
=====================================================
멤버		설명
------------------------------------------------------------------------------------------------------
QueryString[]		Get 방식으로 넘어온 쿼리스트링 값인 key와 value를 받고자 할 때 사용한다.
Form[]			Post 방식으로 넘어온 key와 value 값을 받고자 할 때 사용한다.
Params[]			사용자에게 전송된 Get/Post 방식을 모두 받고자 할 때 사용한다.
UserHostAddress		현재 접속자의 IP 주소 문자열을 반환한다.
ServerVariables[]		현재 접속자의 주요 서버 환경 변숫값을 알려 준다.
Cookies[]			저장된 쿠키 값을 읽어 온다.
Url			현재 웹 페이지의 URL을 반환한다.
PhysicalApplicationPath	현재 웹 사이트의 가상 디렉터리의 물리적인 경로를 알려 준다
===============================================================
=실습=========================================
웹--> web Form -->이름:FrmRequest.aspx
FrmRequest.aspx
	아이디 :
            <asp:TextBox ID="UserID" runat="server"></asp:TextBox><br />
            이름 :
            <asp:TextBox ID="Password" runat="server"></asp:TextBox><br />
            아이디 :
            <asp:TextBox ID="Name" runat="server"></asp:TextBox><br />
            아이디 :
            <asp:TextBox ID="Age" runat="server"></asp:TextBox><br />
            <br />
            <asp:Button ID="btnSubmit" runat="server" Text="전송" OnClick="btnSubmit_Click"/>
FrmRequest.aspx.cs
protected void Page_Load(object sender, EventArgs e)
        {
            string strUserId = "";
            string strPassword = String.Empty;
            string strName = "";
            string strAge = String.Empty;

            // [1] Request 객체의 QueryString 컬렉션(get)
            strUserId = Request.QueryString["UserID"];
            // [2] Request 객체의 Params 컬렉션(get/post)
            strPassword = Request.Params["Password"];
            // [3] Request 객체의 Form 컬렉션(post)
            strName = Request.Form["Name"];
            // [4] Request 객체 자체로 받기
            strAge = Request["Age"];
            
            Response.Write( strUserId);
            Response.Write(strPassword);
            Response.Write(strName);
            Response.Write(strAge);
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // ASP.NET에서는 Request 개체보다는
            // 컨트롤의 속성을 사용해서 값은 받는다.
            string name = Name.Text;
            int age = Convert.ToInt16(Age.Text);
        }

웹--> web Form -->이름:FrmRequestUserHostAddress.aspx
FrmRequestUserHostAddress.aspx
 IP 주소 얻기<br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label><br />
            <asp:Label ID="Label2" runat="server"></asp:Label><br />
            <asp:Label ID="Label3" runat="server"></asp:Label>
<!--Visual Studio 개발 환경에서 실행하면 localhost를 통해 실행되는데, 
                이때 출력되는 값은 localhost, 127.0.0.1, ::1 세 가지 형태 중 하나로 출력-->
FrmRequestUserHostAddress.aspx.cs
 protected void Page_Load(object sender, EventArgs e)
        {
            // 웹 폼에서 현재 접속자의  IP 주소 얻기
            this.Label1.Text = Request.UserHostAddress;// 추천 
            this.Label2.Text = Request.ServerVariables["REMOTE_HOST"];
            this.Label3.Text = Request.ServerVariables["REMOTE_ADDR"];
        }
=======================================================
Server 개체
Server 개체는 서버에 있는 특정 페이지를 현재 페이지에 포함하거나 현재 페이지의 서버 측 경로 등을 웹 페이지에 표시할 때 필요한 기능
==================================
멤버		설명
----------------------------------------------------------
MapPath(".")	현재 파일과 같은 경로 값 반환
		".", "../" 식으로 원하는 경로의 물리적 경로를 받아 올 수 있음
Execute()		다른 파일 포함(인클루드) 후 제어권 돌아옴
Transfer()		다른 파일 포함(인클루드) 후 제어권 넘김
UrlPathEncode()	넘어온 쿼리스트링을 유니코드로 변환(한글 처리)
ScriptTimeout	서버에서 현재 aspx 페이지를 몇 초간 처리할 건지 설정
=실습=========================================
웹--> web Form -->이름:FrmServerMapPath.aspx
FrmServerMapPath.aspx
	<div>
            현재 파일(웹 폼)의 물리적인 전체 경로 :
            <asp:Label ID ="Label1" runat="server"></asp:Label><br />
            현재 스크립트 파일의 루트 경로 :
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </div>
FrmServerMapPath.aspx.cs
	// 현재 웹 폼의 서버측의 물리적 경로
            this.Label1.Text = Server.MapPath(".");// 같은 경로
            // 현재 스크립트 파일의 루트 경로
            this.Label2.Text = Request.ServerVariables["SCRIPT_NAME"];
=================================================

Application 개체
Application["이름"] = 값; 
==========================================================
멤버		설명
-----------------------------------------------------------------------------------------------------
Lock()		   애플리케이션 변수를 잠그는 메서드
UnLock()		   잠긴 애플리케이션 변수를 해제하는 메서드
Add()		   애플리케이션 변수를 만들 때 사용
Application_Start()	   웹 애플리케이션이 시작될 때 발생(웹 사이트에 첫 번째 사용자가 방문할 때 발생).
		   Global.asax에서 설정  
Application_End()      웹 응용 프로그램이 끝날 때 발생(웹 사이트에서 마지막 사용자가 나간 후 발생).
		   Global.asax에서 설정
=============================================================

Session 개체
pplication 변수가 누구나 접근 가능한 공통(Public)적인 성격이라면 
Session 변수는 사용자별로 하나씩 생성되는 전용(Private)적인 성격이다.
==========================================================
멤버		설명
-----------------------------------------------------------------------------------------------------
SessionID		현재 세션의 고유 번호 값 반환
SessionTimeout	세션 시간 기록: 기본값 20분. 더 추가하거나 줄일 경우 사용
Abandon()	현재 세션 지우기
Session_Start()	사용자(세션) 한 명이 방문할 때 실행
Session_End()	사용자 한 명이 나간 후 실행
===========================================================
공통(Public) 데이터는 Application 개체 변수를, 전용(Private) 데이터는 Session 개체 변수를 통해 관리

=실습=========================================
웹--> web Form -->이름:FrmApplicationSession.aspx
FrmApplicationSession.aspx
	현재 페이지가 모든 사용자에 의해
            <asp:Label ID="lblApplication" runat="server"></asp:Label>
            번 호출되었습니다.<br />
            현재 페이지가 나에 의해서
            <asp:Label ID="lblSession" runat="server"></asp:Label>
            번 호출되었습니다.<br />
            나의 고유 접속번호 :
            <asp:Label ID="lblSessionID" runat="server"></asp:Label><br />
            현재 세션 유지시간 :
            <asp:Label ID="lblTimeout" runat="server"></asp:Label><br />
FrmApplicationSession.aspx.cs
==================================================
 Application과 Session을 사용한 상태 관리
Application 변수를 선언하고 값을 입력하면 공통(Public) 성격을 가지는 전역 변수가 생성되는데 웹 서버에 같은 이름으로 단 한 개만 생성된다. 
예를 들어 Application["변수명"] = "값"; 형식으로 선언되는데 A 사용자가 Application["Count"] = 100;으로 
초기화하면 B 사용자가 Application["Count"]를 출력했을 때 
100이 출력되는 형태로 Application 변수의 값은 모든 사용자에게 똑같이 공유된다.
Session 변수를 선언하면 전용(Private) 성격을 가지는 전역 변수가 생성되는데 웹 서버에 사용자마다 같은 이름의 변수를 여러 개 생성할 수 있다. 
Session["변수명"] = "값"; 형식으로 선언할 수 있으며 A 사용자가 Session["Count"] = 100;으로 
초기화하면 B 사용자가 Session["Count"]를 출력했을 때 에러(선언하지 않음)가 발생하거나 NULL 값이 출력될 수 있다
여기서 세션 전역 변수는 사용자마다 생성되므로 세션 하나당 1KB 정도의 값만 보관해도 1000명이면 1000KB, 즉 1MB 정도의 메모리를 잡아먹는다는 데 주의해야 한다. 그래서 세션 전역 변수는 꼭 필요한 곳에서만 사용해야 한다.
Application과 Session 전역 변수는 아무 곳에서나 선언하고 사용해도 되지만, 일반적으로 웹 프로젝트 루트에 위치하는 Global.asax에서 관리한다. 
Global.asax 파일은 웹 사이트에 접근하는 모든 사용자에 대한 판단을 관리하는 관문 역할을 하는 게이트웨이 파일이다. 응용 프로그램과 관련된 유용한 이벤트 처리기를 담고 있는데 다음 네 가지가 가장 많이 사용된다.

Page 클래스
==========================================================
멤버		설명
-----------------------------------------------------------------------------------------------------
IsPostBack			현재 페이지를 처음 로드했는지, 다시 게시(포스트백)했는지 확인한다.
ClientScript.RegisterClientScriptBlock()	자바스크립트를 동적으로 웹 페이지에 추가한다.
Header				현재 웹 폼의 <head> 태그 부분을 정의한다.
Title				현재 웹 폼의 제목을 동적으로 설정하거나 가져온다.
SetFocus()			다른 컨트롤의 ID 값을 지정해주면 웹 폼이 로드할 때 해당 컨트롤에 포커스가 지정된다.
==================================================================================
Page.IsPostBack
이 속성은 웹 페이지가 다시 게시가 되었는지 처음 로드되었는지를 알려 준다. 
여기서 다시 게시란 한 번 페이지가 로드된 뒤 버튼 등을 클릭하면 화면이 깜빡거리고 해당 페이지가 다시 로드되는 현상을 말한다.
첫째, 처음 로드할 때만 어떤 처리를 해주려면 반드시 Page_Load 이벤트 처리기의 if(!Page.IsPostBack){} 코드 블록 안에 정의를 해주어야 한다. 
둘째, 버튼을 클릭했을 때 Page_Load 이벤트 처리기를 실행하지 않고 해당 버튼의 고유 기능만 구현하려면 Button의 속성에서 CausesValidation 속성을 false로 설정해야 한다.
Page 지시문
이 페이지 지시문에는 선언적으로 여러 가지 속성을 추가함으로써 웹 폼의 동작을 제어할 수 있다.
• Language="C#": ASP.NET의 기본 언어를 C# 언어로 설정한다.
• AutoEventWireup = "true": ASPX 파일에서 발생한 이벤트를 ASPX.CS 파일의 이벤트 처리기에 자동으로 연결해준다.
• CodeFile=" *.aspx.cs": 현재 웹 폼 페이지의 코드를 담당하는 코드 숨김 파일을 지정한다.
• Inherits="클래스명": 코드 숨김 파일의 클래스 이름을 지정한다.
• Trace = "true": 웹 폼을 추적하는 코드를 페이지 아래에 출력한다.
• Debug = "true": 웹 폼 실행 시 발생되는 에러 메시지를 자세하게 출력한다.
• ValidateRequest = "false": 웹 폼에서 입력된 HTML 태그를 서버 측으로 전송한다(기본값은 true다).
• MaintainScrollPositionOnPostback = "true": 상하 스크롤바가 생기는 페이지에서 새로 고침하거나 버튼이 클릭될 때 바로 전의 스크롤바 위치로 스크롤을 고정한다.

=실습=========================================
추가 > 새 항목 > 웹 > 스타일시트를 선택해 DevASPNET.css라는 이름으로 스타일시트를 추가
FrmPageLoad.aspx 추가 
FrmPageLoad.aspx
	<asp:Button ID="btnPostBack" runat="server" Text="다시 게시(PostBack)" OnClick="btnPostBack_Click"/>
            <asp:Button ID="btnNewLoad" runat="server" OnClick="btnNewLoad_Click" Text="다시 로드" />
FrmPageLoad.aspx.cs



System.Web.UI.Control 클래스
=실습=========================================
프로젝트:DevStandardControl
 프로젝트에 마우스 오른쪽 버튼을 클릭해 추가 > 새 항목 메뉴를 클릭:FrmStandardControl.aspx
FrmStandardControl.aspx
<h1>표준 컨트롤(Standard Control)</h1>
            <h2>[1] 순수 HTML 사용해서 버튼 만들기</h2>
            <input type="button" value="버튼1" id="btnInput" />

            <h2>[2] runat 속성을 추가해서 서버 컨트롤 버튼 만들기</h2>
            
            <input type="button" value="버튼2" id="btnHtml" runat="server"/>
            <!--input type="button" value="버튼2" id="btnHtml" / 
                runat="server"를 붙인 input 요소에 대해서는 Value 속성으로 접근이 가능
                -->
             <h2>[3] ASP.NET 표준 컨트롤을 사용해서 버튼 만들기</h2>
            <asp:Button Text="버튼3" runat="server" ID="btnServer"/>
FrmStandardControl.aspx.cs
 protected void Page_Load(object sender, EventArgs e)
        {
            btnHtml.Value = "HTML 서버 컨트롤 - 버튼";
            btnServer.Text = "표준 컨트롤 - 버튼";
        }
=================================================

Label 컨트롤
레이블 컨트롤은 웹 폼에 편집이 불가능한 문자열을 출력하고자 할 때 사용
=실습 Label 컨트롤을 사용한 현재 날짜와 시간 출력=========================
FrmLabel.aspx
 현재 시간 :
            <asp:Label ID="lblDateTime" runat="server" 
                BackColor="#FFFFC0" BorderColor="Red"
                BorderStyle="Solid" BorderWidth="1px" ForeColor="Blue" />
                />
FrmLabel.aspx.cs
protected void Page_Load(object sender, EventArgs e)
        {
            // 레이블에 현재 날짜와 시간을 출력
            this.lblDateTime.Text = DateTime.Now.ToString();
        }
=======================================================

TextBox 컨트롤
====================================================
멤버	이름		설명
--------------------------------------------------------------------------
클래스	TextBox		System.Web.UI.WebControls.Text 클래스
속성	Text		텍스트박스 컨트롤에 쓰여질 문자열 지정
	TextMode		텍스트, 암호, 멀티라인 텍스트 결정
			HTML5의 주요 텍스트박스(Color, Email, DateTime, Phone 등) 모양을 제공
	ReadOnly		읽기 전용 텍스트박스 생성
==============================================================
=실습_ TextBox 컨트롤을 사용해 사용자 정보 얻어오기================================
FrmTextBox.aspx
<h2>SingleLine:</h2>
            이름 :
            <asp:TextBox ID="txtSingleLine" runat="server" CssClass="myTextAlign"/>
            <h2>MultiLine:</h2>
            소개 :
            <asp:TextBox ID="txtMultiLine" runat="server" TextMode="MultiLine" />
            <br />
            <h2>Password:</h2>
            암호 :
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
            <hr />
            <asp:Button ID="btnOK" runat="server" OnClick="btnOK_Click"  Text="확인" />
FrmTextBox.aspx.cs
 protected void btnOK_Click(object sender, EventArgs e)
        {
            // 이름 받아 오기
            String strName = this.txtSingleLine.Text;
            // 소개 받아 오기
            String strIntro = this.txtMultiLine.Text;
            // 암호 받아 오기
            string strPassword = this.txtPassword.Text;
            //출력
            Response.Write(
                strName + "<br />"
                + strIntro + "<br/>"
                + strPassword + "<br/>") ;
        }
==============================================================

Button 컨트롤
==========================================================
멤버	이름		설명
-------------------------------------------------------------------------------------------------
클래스	Button		System.Web.UI.WebControls.Button 클래스
속성	Text		버튼 컨트롤에 쓰여질 문자열 지정
	PostBackUrl	현재 버튼에 대한 이벤트 처리기를 다른 웹 폼에서 처리하고자 할 때 웹 폼의 경로 지정
=========================================================================
=실습_ Button 컨트롤을 사용해 명령어 실행================================
FrmButton.aspx
<asp:TextBox ID="txtNum" runat="server" />
            <asp:Button ID="btnUp" runat="server" OnClick="btnUp_Click" Text="증가 "/>
            <asp:Button ID="btnDown" runat="server" OnClick="btnDown_Click" Text="감소 "/>
FrmButton.aspx.cs
protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                txtNum.Text = "0";// 처음 로드할 때만 0으로 초기화
            }
        }

        protected void btnUp_Click(object sender, EventArgs e)
        {
            txtNum.Text = Convert.ToString(Convert.ToInt32(txtNum.Text) + 1);
        }

        protected void btnDown_Click(object sender, EventArgs e)
        {
            txtNum.Text = Convert.ToString(int.Parse(txtNum.Text) - 1);
        }
================================================================

LinkButton 컨트롤
=실습_ LinkButton 컨트롤을 사용해 링크 모양의 버튼 만들기===============================
FrmLinkButton.aspx
asp:LinkButton ID="InkDotNetKorea" runat="server" OnClick="InkDotNetKorea_Click">닷넷코리아로 이동</asp:LinkButton>
FrmLinkButton.aspx.cs
protected void InkDotNetKorea_Click(object sender, EventArgs e)
        {
            // 닷넷코리아 이동
            Response.Redirect("http://www.dotnetkorea.com/");
        }
==========================================================

ImageButton 컨트롤
=실습_ ImageButton 컨트롤을 사용해 명령어 실행===============================
FrmImageButton.aspx
 	<asp:ImageButton ID="imgWrite" runat="server" AlternateText="글쓰기"
                OnClick="imgWrite_Click" ToolTip="글쓰기" />
            <asp:ImageButton ID="imgList" runat="server" AlternateText="리스트"
                OnClick="imgWrite_Click" ToolTip="리스트" />
FrmImageButton.aspx.cs
 	protected void Page_Load(object sender, EventArgs e)
        {
            this.imgWrite.ImageUrl = "/images/btn_post.gif";
            this.imgList.ImageUrl = "./images/btn_list.gif";
        }

        protected void imgWrite_Click(object sender, ImageClickEventArgs e)
        {
            Response.Write("글쓰기 버튼 클릭됨.<br />");
        }

        protected void imgList_Click(object sender, ImageClickEventArgs e)
        {
            Response.Write("리스트  버튼 클릭됨.<br />");
        }
===================================================
=실습_ 세 가지 버튼 컨트롤을 사용해 명령어 실행===============================
FrmCommandControl.aspx
FrmCommandControl.aspx.cs
=============================================================================
HTML 대체 컨트롤
 HyperLink 컨트롤
NavigateUrl	링크를 클릭했을 때 이동할 경로
ImageUrl		일반 텍스트 대신 이미지를 링크로 만들고자 할 때 사용
=실습_ HyperLink 컨트롤을 사용해 링크 만들기=====================
FrmHyperLink.aspx
FrmHyperLink.aspx.cs
====================================================

Image 컨트롤
=실습_ Image 컨트롤을 사용해 이미지 표시=====================
FrmImage.aspx
FrmImage.aspx.cs
====================================

ImageMap 컨트롤
이미지맵 컨트롤을 사용하면 특정 이미지를 읽어 와 이미지에 좌표를 사용해 영역을 구분한 뒤 서로 다른 URL로 이동할 수 있다. 
=실습_ ImageMap 컨트롤을 사용해 이미지맵 구현=====================
RectangleHotSpot 컨트롤을 사용해 좌표 (0, 0)에서 (20, 120)까지 클릭하면 앞서 미리 작성한 FrmButton.aspx 페이지로 이동한다. 
(20, 0)에서 (40, 120)까지 클릭하면 FrmLable.aspx 페이지로 이동하도록 설정한다. 
이렇게 사각형 영역에 대한 좌표를 설정한다.

Table 컨트롤
=실습_ table 컨트롤을 사용해 표 만들기=========
FrmTable.aspx
====================================

BulletedList 컨트롤
불릿리스트 컨트롤은 HTML의 리스트를 출력하는 컨트롤
BulletStyle 속성에 따라서 순서 있는 목록과 순서 없는 목록을 구분해서 출력할 수 있다
=실습_ BulletedList 컨트롤을 사용해 목록 만들기=========
FrmBulletedList.aspx
FrmBulletedList.aspx.cs
=========================================
=실습_ HTML 대체 컨트롤을 사용해 HTML 주요 요소 표현=============
FrmHtml.aspx
==============================================

DropDownList 컨트롤
드롭다운리스트 컨트롤은 HTML의 <select><option> 태그의 조합을 ASP.NET 서버 컨트롤로 구현한 컨트롤
=실습_ DropDownList 컨트롤을 사용해 콤보박스 만들기=============
FrmDropDowList.aspx
FrmDropDowList.aspx.cs
*동적으로 DropDownList 생성 및 선택된 값 가져오기
FrmDropDownListDynamicCreation.aspx
=============================================

ListBox 컨트롤
실습_ ListBox 컨트롤을 사용해 리스트박스 만들기================
FrmListBox.aspx
==========================

 CheckBox 컨트롤
AutoPostBack	체크박스가 선택되거나 해제되는 순간에 자동으로 서버 측으로 포스트백 (다시 게시)할 것인지 결정. 
		true로 설정하면 매번 포스트백시킨다.
실습_ CheckBox 컨트롤을 사용해 체크박스 만들기==========
FrmCheckBox.aspx
===============================

CheckBoxList 컨트롤
실습_ CheckBoxList 컨트롤을 사용해 여러 개의 체크박스 만들기===
FrmCheckBoxList.aspx
==================================

RadioButton 컨트롤
실습_ RadioButton 컨트롤을 사용해 라디오버튼 만들기===========
FrmRadioButton.aspx
===========================================

RadioButtonList 컨트롤
실습_ RadioButtonList 컨트롤을 사용해 여러 개의 라디오버튼 만들기==
FrmRadioButtonList.aspx
===============================================
실습_ 입력 컨트롤을 사용해 단일 또는 다중 항목 가져오기===============
FrmInputControl.aspx
================================================
컨트롤 이용방법모를때 확인:http://www.microsoft.com/korea/msdn/

HiddenField 컨트롤
실습_ HiddenField 컨트롤을 사용해 폼 로드 시간 저장========
FrmHiddenField.aspx
=======================================

Literal 컨트롤
실습_ Literal 컨트롤을 사용해 간단한 텍스트 출력====
 FrmLiteral.aspx
=================================================


리치 컨트롤이란
ASP.NET 표준 컨트롤 중에는 단순한 HTML 태그를 출력하는 대신 달력, 광고 등 복합적인 모양을 제공하는 컨트롤이 있는데 이러한 컨트롤을 리치(Rich) 컨트롤이라고 한다
Calendar 컨트롤
실습_ Calendar 컨트롤을 사용해 달력 출력하기==
FrmCalendar.aspx
FrmCalendarQueryString
============================

AdRotator 컨트롤--> javascript 라이브러리를 이용해 처리하는 경우가 더 많음
실습_ AdRotator 컨트롤을 사용해 광고 순환시키기=========
FrmAdRotator.aspx
FrmAdRotator.xml
• <ImageUrl>: 광고에 사용할 이미지 경로
• <NavigateUrl>: 광고 이미지를 클릭했을 때 이동할 경로
• <AlternateText>: 이미지가 표시되지 않을 때 보여주는 대체 텍스트
• <Keyword>: 광고 내용을 구분할 때 사용할 키워드
• <Impressions>: 광고를 보여줄 빈도수

FileUpload 컨트롤====================================
FrmFileUpload.aspx
새 폴더 추가	:	/files/
*폴더에 쓰기 권한 설정
① 파일 탐색기에서 업로드할 files 폴더에 마우스 오른쪽 버튼을 클릭한다. 상황 메뉴가 나타나면 속성을 선택한 후 보안 탭을 선택한다.
② 폴더 속성의 보안 탭에서 편집 버튼을 클릭한 후 추가 버튼을 클릭한다. 
선택할 개체 이름을 입력하십시오 입력란에 다음 그림과 같이 Everyone을 입력한 후 확인 버튼을 클릭해 추가한다
③ 추가된 Everyone 권한을 선택한 후 아래 Everyone의 사용 권한 리스트에서 수정(쓰기) 권한에 허용을 체크하거나 모든 권한에 허용을 체크한다.
④ 다음은 최종적으로 files 폴더가 Everyone의 사용 권한에 수정 권한이 추가로 설정된 상태를 보여준다.
=========================================

Wizard 컨트롤
위저드 컨트롤은 프로그램을 설치하는 절차처럼 순서가 있는 작업을 진행할 때 이를 손쉽게 구현하도록 만들어 놓은 컨트롤
실습_ Wizard 컨트롤을 사용해 단계별 페이지 실행하기=============
FrmWizard.aspx
==================

XML 컨트롤
실습_ XML 컨트롤을 사용해 회사 소개 페이지 구현하기===============
FrmXml.aspx
FrmXml.xml
FrmXml.xsl
==================================================
*닷넷에 XML을 많이 적용해 사용하지만, 어렵다. 최근에는 XML보다 더 작은 용량으로 같은 표현을 할 수 있는 JSON(JavaScript Object Notation )을 많이 사용한다.

MultiView 컨트롤과 View 컨트롤
 실습_ MultiView 컨트롤과 View 컨트롤로 로그인 모듈 구성하기=========
FrmMultiView.aspx

 Panel 컨트롤
실습_ Panel 컨트롤을 사용해 그룹으로 보이기 및 숨기기==========
FrmPanel.aspx
==============================

PlaceHolder 컨트롤
실습_ PlaceHolder 컨트롤에 동적으로 버튼 컨트롤 추가하기
FrmPlaceHolder.aspx
=====================================

 Substitution 컨트롤
(대체) 컨트롤은 나중에 배우게 될 캐싱(성능 향상) 기능과 연관된 컨트롤이다. 
전체 페이지가 캐싱되는 상황에서 특정 문자열 부분은 캐싱되지 않은 최신 자료를 출력하고자 할 때 이 컨트롤을 사용한다.
 실습_ Substitution 컨트롤을 사용해 매번 최신 정보로 출력==============
FrmSubstitution.aspx
==============================

Localize 컨트롤
로컬라이즈 컨트롤은 리터럴 컨트롤과 마찬가지로 정적인 텍스트를 웹 페이지에 표시하기 위한 컨트롤이다.
리터럴 컨트롤과 기능이 거의 비슷하나 Mode 속성을 통해서 특정 태그를 인코드(Encode )해서 보여주는 기능이 가능하다.
실습_ Localize 컨트롤을 사용해 텍스트 출력하기==================================================
FrmLocalize.aspx
================================




