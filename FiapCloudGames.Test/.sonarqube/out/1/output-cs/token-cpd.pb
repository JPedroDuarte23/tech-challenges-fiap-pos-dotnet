◊
}C:\Users\jpedr\Workspace\Fiap\tech-challenges-fiap-pos-dotnet\FiapCloudGames.Application\DTOs\Authenticate\AuthenticateDto.cs
	namespace 	
FiapCloudGames
 
. 
Application $
.$ %
DTOs% )
.) *
Authenticate* 6
{ 
public		 

class		 
AuthenticateDto		  
{

 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
=* +
default, 3
!3 4
;4 5
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
default/ 6
!6 7
;7 8
} 
} î
C:\Users\jpedr\Workspace\Fiap\tech-challenges-fiap-pos-dotnet\FiapCloudGames.Application\DTOs\Authenticate\RegisterPlayerDto.cs
	namespace 	
FiapCloudGames
 
. 
Application $
.$ %
DTOs% )
.) *
Authenticate* 6
;6 7
public		 
class		 
RegisterPlayerDto		 
{

 
[ 
Required 
( 
ErrorMessage 
= 
$str 4
)4 5
]5 6
[ 
StringLength 
( 
$num 
, 
ErrorMessage #
=$ %
$str& Q
)Q R
]R S
public 

string 
Name 
{ 
get 
; 
set !
;! "
}# $
[ 
Required 
( 
ErrorMessage 
= 
$str ?
)? @
]@ A
[ 
StringLength 
( 
$num 
, 
ErrorMessage "
=# $
$str% Z
)Z [
][ \
public 

string 
Username 
{ 
get  
;  !
set" %
;% &
}' (
[ 
Required 
( 
ErrorMessage 
= 
$str 6
)6 7
]7 8
[ 
EmailAddress 
( 
ErrorMessage 
=  
$str! O
)O P
]P Q
[ 
StringLength 
( 
$num 
, 
ErrorMessage #
=$ %
$str& S
)S T
]T U
public 

string 
Email 
{ 
get 
; 
set "
;" #
}$ %
[ 
Required 
( 
ErrorMessage 
= 
$str 5
)5 6
]6 7
[ 
	MinLength 
( 
$num 
, 
ErrorMessage 
=  
$str! L
)L M
]M N
[ 
RegularExpression 
( 
$str ?
,? @
ErrorMessage 
= 
$str c
)c d
]d e
public 

string 
Password 
{ 
get  
;  !
set" %
;% &
}' (
[ 
Required 
( 
ErrorMessage 
= 
$str B
)B C
]C D
[ 
DataType 
( 
DataType 
. 
Date 
, 
ErrorMessage )
=* +
$str, J
)J K
]K L
public   

DateTime   
BornDate   
{   
get   "
;  " #
set  $ '
;  ' (
}  ) *
["" 
Required"" 
("" 
ErrorMessage"" 
="" 
$str"" 3
)""3 4
]""4 5
[## 
RegularExpression## 
(## 
$str## "
,##" #
ErrorMessage##$ 0
=##1 2
$str##3 \
)##\ ]
]##] ^
public$$ 

string$$ 
Cpf$$ 
{$$ 
get$$ 
;$$ 
set$$  
;$$  !
}$$" #
}%% ⁄#
ÇC:\Users\jpedr\Workspace\Fiap\tech-challenges-fiap-pos-dotnet\FiapCloudGames.Application\DTOs\Authenticate\RegisterPublisherDto.cs
	namespace 	
FiapCloudGames
 
. 
Application $
.$ %
DTOs% )
.) *
Authenticate* 6
;6 7
public		 
class		  
RegisterPublisherDto		 !
{

 
[ 
Required 
( 
ErrorMessage 
= 
$str 4
)4 5
]5 6
[ 
StringLength 
( 
$num 
, 
ErrorMessage #
=$ %
$str& Q
)Q R
]R S
public 

string 
Name 
{ 
get 
; 
set !
;! "
}# $
[ 
Required 
( 
ErrorMessage 
= 
$str C
)C D
]D E
[ 
StringLength 
( 
$num 
, 
ErrorMessage #
=$ %
$str& `
)` a
]a b
public 

string 
PublisherName 
{  !
get" %
;% &
set' *
;* +
}, -
[ 
Required 
( 
ErrorMessage 
= 
$str ?
)? @
]@ A
[ 
StringLength 
( 
$num 
, 
ErrorMessage #
=$ %
$str& \
)\ ]
]] ^
public 

string 
CompanyName 
{ 
get  #
;# $
set% (
;( )
}* +
[ 
Required 
( 
ErrorMessage 
= 
$str ?
)? @
]@ A
[ 
StringLength 
( 
$num 
, 
ErrorMessage "
=# $
$str% Z
)Z [
][ \
public 

string 
Username 
{ 
get  
;  !
set" %
;% &
}' (
[ 
Required 
( 
ErrorMessage 
= 
$str 6
)6 7
]7 8
[ 
EmailAddress 
( 
ErrorMessage 
=  
$str! O
)O P
]P Q
[ 
StringLength 
( 
$num 
, 
ErrorMessage #
=$ %
$str& S
)S T
]T U
public 

string 
Email 
{ 
get 
; 
set "
;" #
}$ %
[   
Required   
(   
ErrorMessage   
=   
$str   5
)  5 6
]  6 7
[!! 
	MinLength!! 
(!! 
$num!! 
,!! 
ErrorMessage!! 
=!!  
$str!!! L
)!!L M
]!!M N
["" 
RegularExpression"" 
("" 
$str"" ?
,""? @
ErrorMessage## 
=## 
$str## c
)##c d
]##d e
public$$ 

string$$ 
Password$$ 
{$$ 
get$$  
;$$  !
set$$" %
;$$% &
}$$' (
[&& 
Required&& 
(&& 
ErrorMessage&& 
=&& 
$str&& B
)&&B C
]&&C D
['' 
DataType'' 
('' 
DataType'' 
.'' 
Date'' 
,'' 
ErrorMessage'' )
=''* +
$str'', J
)''J K
]''K L
public(( 

DateTime(( 
BornDate(( 
{(( 
get(( "
;((" #
set(($ '
;((' (
}(() *
[** 
Required** 
(** 
ErrorMessage** 
=** 
$str** 4
)**4 5
]**5 6
[++ 
RegularExpression++ 
(++ 
$str++ "
,++" #
ErrorMessage++$ 0
=++1 2
$str++3 h
)++h i
]++i j
public,, 

string,, 
Cnpj,, 
{,, 
get,, 
;,, 
set,, !
;,,! "
},,# $
}-- È
vC:\Users\jpedr\Workspace\Fiap\tech-challenges-fiap-pos-dotnet\FiapCloudGames.Application\DTOs\Authenticate\TokenDto.cs
	namespace 	
FiapCloudGames
 
. 
Application $
.$ %
DTOs% )
.) *
Authenticate* 6
;6 7
public		 
class		 
TokenDto		 
{

 
public 

string 
Token 
{ 
get 
; 
set "
;" #
}$ %
public 

TokenDto 
( 
string 
token  
)  !
{ 
Token 
= 
token 
; 
} 
} ⁄
sC:\Users\jpedr\Workspace\Fiap\tech-challenges-fiap-pos-dotnet\FiapCloudGames.Application\DTOs\Game\CreateGameDto.cs
	namespace 	
FiapCloudGames
 
. 
Application $
.$ %
DTOs% )
.) *
Game* .
{		 
public

 

class

 
CreateGameDto

 
{ 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! :
): ;
]; <
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage '
=( )
$str* W
)W X
]X Y
public 
string 
Title 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
( 
ErrorMessage 
=  
$str! =
)= >
]> ?
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage '
=( )
$str* Z
)Z [
][ \
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 9
)9 :
]: ;
[ 	
Range	 
( 
$num 
, 
double 
. 
MaxValue $
,$ %
ErrorMessage& 2
=3 4
$str5 W
)W X
]X Y
public 
double 
Price 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
( 
ErrorMessage 
=  
$str! F
)F G
]G H
[ 	
DataType	 
( 
DataType 
. 
Date 
,  
ErrorMessage! -
=. /
$str0 N
)N O
]O P
public 
DateTime 
ReleaseDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} °

mC:\Users\jpedr\Workspace\Fiap\tech-challenges-fiap-pos-dotnet\FiapCloudGames.Application\DTOs\Game\GameDto.cs
	namespace 	
FiapCloudGames
 
. 
Application $
.$ %
DTOs% )
.) *
Game* .
{ 
public		 

class		 
GameDto		 
{

 
public 
Guid 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
Title 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
	Publisher 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
double 
Price 
{ 
get !
;! "
set# &
;& '
}( )
public 
DateTime 
ReleaseDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} ⁄
sC:\Users\jpedr\Workspace\Fiap\tech-challenges-fiap-pos-dotnet\FiapCloudGames.Application\DTOs\Game\UpdateGameDto.cs
	namespace 	
FiapCloudGames
 
. 
Application $
.$ %
DTOs% )
.) *
Game* .
{		 
public

 

class

 
UpdateGameDto

 
{ 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! :
): ;
]; <
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage '
=( )
$str* W
)W X
]X Y
public 
string 
Title 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
( 
ErrorMessage 
=  
$str! =
)= >
]> ?
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage '
=( )
$str* Z
)Z [
][ \
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 9
)9 :
]: ;
[ 	
Range	 
( 
$num 
, 
double 
. 
MaxValue $
,$ %
ErrorMessage& 2
=3 4
$str5 W
)W X
]X Y
public 
double 
Price 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
( 
ErrorMessage 
=  
$str! F
)F G
]G H
[ 	
DataType	 
( 
DataType 
. 
Date 
,  
ErrorMessage! -
=. /
$str0 N
)N O
]O P
public 
DateTime 
ReleaseDate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} ç
oC:\Users\jpedr\Workspace\Fiap\tech-challenges-fiap-pos-dotnet\FiapCloudGames.Application\DTOs\User\PlayerDto.cs
	namespace		 	
FiapCloudGames		
 
.		 
Application		 $
.		$ %
DTOs		% )
.		) *
User		* .
;		. /
public 
class 
	PlayerDto 
{ 
public 

Guid 
Id 
{ 
get 
; 
set 
; 
}  
public 

string 
Name 
{ 
get 
; 
set !
;! "
}# $
public 

string 
Username 
{ 
get  
;  !
set" %
;% &
}' (
public 

string 
Email 
{ 
get 
; 
set "
;" #
}$ %
public 

DateTime 
BornDate 
{ 
get "
;" #
set$ '
;' (
}) *
public 

DateTime 
	CreatedAt 
{ 
get  #
;# $
set% (
;( )
}* +
public 

UserRole 
Role 
{ 
get 
; 
set  #
;# $
}% &
public 

string 
Cpf 
{ 
get 
; 
set  
;  !
}" #
public 

	PlayerDto 
( 
Player 
player #
)# $
{ 
Id 

= 
player 
. 
Id 
; 
Name 
= 
player 
. 
Name 
; 
Username 
= 
player 
. 
Username "
;" #
Email 
= 
player 
. 
Email 
; 
BornDate 
= 
player 
. 
BornDate "
;" #
	CreatedAt 
= 
player 
. 
	CreatedAt $
;$ %
Role 
= 
player 
. 
Role 
; 
Cpf 
= 
player 
. 
Cpf 
; 
}   
}!! Ï
rC:\Users\jpedr\Workspace\Fiap\tech-challenges-fiap-pos-dotnet\FiapCloudGames.Application\DTOs\User\PublisherDto.cs
	namespace		 	
FiapCloudGames		
 
.		 
Application		 $
.		$ %
DTOs		% )
.		) *
User		* .
;		. /
public 
class 
PublisherDto 
{ 
public 

Guid 
Id 
{ 
get 
; 
set 
; 
}  
public 

string 
Name 
{ 
get 
; 
set !
;! "
}# $
public 

string 
Username 
{ 
get  
;  !
set" %
;% &
}' (
public 

string 
Email 
{ 
get 
; 
set "
;" #
}$ %
public 

DateTime 
BornDate 
{ 
get "
;" #
set$ '
;' (
}) *
public 

DateTime 
	CreatedAt 
{ 
get  #
;# $
set% (
;( )
}* +
public 

UserRole 
Role 
{ 
get 
; 
set  #
;# $
}% &
public 

string 
PublisherName 
{  !
get" %
;% &
set' *
;* +
}, -
public 

string 
Cnpj 
{ 
get 
; 
set !
;! "
}# $
public 

string 
CompanyName 
{ 
get  #
;# $
set% (
;( )
}* +
public 

PublisherDto 
( 
	Publisher !
	publisher" +
)+ ,
{ 
Id 

= 
	publisher 
. 
Id 
; 
Name 
= 
	publisher 
. 
Name 
; 
Username 
= 
	publisher 
. 
PublisherName *
;* +
Email 
= 
	publisher 
. 
Email 
;  
BornDate 
= 
	publisher 
. 
BornDate %
;% &
	CreatedAt 
= 
	publisher 
. 
	CreatedAt '
;' (
Role   
=   
	publisher   
.   
Role   
;   
PublisherName!! 
=!! 
	publisher!! !
.!!! "
PublisherName!!" /
;!!/ 0
Cnpj"" 
="" 
	publisher"" 
."" 
Cnpj"" 
;"" 
CompanyName## 
=## 
	publisher## 
.##  
CompanyName##  +
;##+ ,
}$$ 
}%% º

sC:\Users\jpedr\Workspace\Fiap\tech-challenges-fiap-pos-dotnet\FiapCloudGames.Application\DTOs\User\UpdateUserDto.cs
	namespace 	
FiapCloudGames
 
. 
Application $
.$ %
DTOs% )
.) *
User* .
{		 
public

 

class

 
UpdateUserDto

 
{ 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! C
)C D
]D E
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage &
=' (
$str) ^
)^ _
]_ `
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 8
)8 9
]9 :
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage '
=( )
$str* U
)U V
]V W
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ’
mC:\Users\jpedr\Workspace\Fiap\tech-challenges-fiap-pos-dotnet\FiapCloudGames.Application\DTOs\User\UserDto.cs
	namespace		 	
FiapCloudGames		
 
.		 
Application		 $
.		$ %
DTOs		% )
.		) *
User		* .
{

 
public 

class 
UserDto 
{ 
public 
Guid 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
DateTime 
BornDate  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
DateTime 
	CreatedAt !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
UserRole 
Role 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
PublisherName #
{$ %
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
Document 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 

Afiliation  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
UserDto 
( 
Player 
player $
)$ %
{ 	
Id 
= 
player 
. 
Id 
; 
Name 
= 
player 
. 
Name 
; 
Email 
= 
player 
. 
Email  
;  !
BornDate 
= 
player 
. 
BornDate &
;& '
	CreatedAt 
= 
player 
. 
	CreatedAt (
;( )
Role 
= 
player 
. 
Role 
; 
UserName   
=   
player   
.   
Username   &
;  & '
Document!! 
=!! 
player!! 
.!! 
Cpf!! !
;!!! "
}"" 	
public## 
UserDto## 
(## 
	Publisher##  
	publisher##! *
)##* +
{$$ 	
Id%% 
=%% 
	publisher%% 
.%% 
Id%% 
;%% 
Name&& 
=&& 
	publisher&& 
.&& 
Name&& !
;&&! "
BornDate'' 
='' 
	publisher''  
.''  !
BornDate''! )
;'') *
	CreatedAt(( 
=(( 
	publisher(( !
.((! "
	CreatedAt((" +
;((+ ,
Role)) 
=)) 
	publisher)) 
.)) 
Role)) !
;))! "
UserName** 
=** 
	publisher**  
.**  !
Username**! )
;**) *
PublisherName++ 
=++ 
	publisher++ %
.++% &
PublisherName++& 3
;++3 4
Document,, 
=,, 
	publisher,,  
.,,  !
Cnpj,,! %
;,,% &

Afiliation-- 
=-- 
	publisher-- "
.--" #
CompanyName--# .
;--. /
}.. 	
}00 
}11 ø
xC:\Users\jpedr\Workspace\Fiap\tech-challenges-fiap-pos-dotnet\FiapCloudGames.Application\Exceptions\ConflictException.cs
	namespace 	
FiapCloudGames
 
. 
Application $
.$ %

Exceptions% /
;/ 0
public		 
class		 
ConflictException		 
:		  
HttpException		! .
{

 
public 

ConflictException 
( 
string #
message$ +
)+ ,
: 
base 
( 
$num 
, 
$str 
, 
message $
)$ %
{& '
}( )
} ·
tC:\Users\jpedr\Workspace\Fiap\tech-challenges-fiap-pos-dotnet\FiapCloudGames.Application\Exceptions\HttpException.cs
	namespace 	
FiapCloudGames
 
. 
Application $
.$ %

Exceptions% /
;/ 0
public		 
class		 
HttpException		 
:		 
	Exception		 &
{

 
public 

int 

StatusCode 
{ 
get 
;  
}! "
public 

string 
Error 
{ 
get 
; 
}  
public 

HttpException 
( 
int 

statusCode '
,' (
string) /
error0 5
,5 6
string7 =
message> E
)E F
: 	
base
 
( 
message 
) 
{ 

StatusCode 
= 

statusCode 
;  
Error 
= 
error 
; 
} 
} —
~C:\Users\jpedr\Workspace\Fiap\tech-challenges-fiap-pos-dotnet\FiapCloudGames.Application\Exceptions\ModifyDatabaseException.cs
	namespace 	
FiapCloudGames
 
. 
Application $
.$ %

Exceptions% /
;/ 0
public		 
class		 #
ModifyDatabaseException		 $
:		% &
HttpException		' 4
{

 
public 
#
ModifyDatabaseException "
(" #
string# )
message* 1
)1 2
: 
base 

(
 
$num 
, 
$str '
,' (
message) 0
)0 1
{2 3
}4 5
} «
xC:\Users\jpedr\Workspace\Fiap\tech-challenges-fiap-pos-dotnet\FiapCloudGames.Application\Exceptions\NotFoundException.cs
	namespace 	
FiapCloudGames
 
. 
Application $
.$ %

Exceptions% /
;/ 0
public		 
class		 !
UnauthorizedException		 "
:		# $
HttpException		% 2
{

 
public 
!
UnauthorizedException  
(  !
string! '
message( /
)/ 0
: 	
base
 
( 
$num 
, 
$str "
," #
message$ +
)+ ,
{- .
}/ 0
} √
|C:\Users\jpedr\Workspace\Fiap\tech-challenges-fiap-pos-dotnet\FiapCloudGames.Application\Exceptions\UnauthorizedException.cs
	namespace 	
FiapCloudGames
 
. 
Application $
.$ %

Exceptions% /
;/ 0
public		 
class		 
NotFoundException		 
:		  
HttpException		! .
{

 
public 

NotFoundException 
( 
string #
message$ +
)+ ,
: 	
base
 
( 
$num 
, 
$str 
,  
message! (
)( )
{* +
}, -
} ≤
rC:\Users\jpedr\Workspace\Fiap\tech-challenges-fiap-pos-dotnet\FiapCloudGames.Application\Interface\IAuthService.cs
	namespace 	
FiapCloudGames
 
. 
Application $
.$ %
	Interface% .
;. /
public 
	interface 
IAuthService 
{ 
Task 
< 	
TokenDto	 
> 
AuthenticateAsync $
($ %
AuthenticateDto% 4
dto5 8
)8 9
;9 :
Task

 
<

 	
	PlayerDto

	 
>

 
RegisterPlayerAsync

 '
(

' (
RegisterPlayerDto

( 9
dto

: =
)

= >
;

> ?
Task 
< 	
PublisherDto	 
> "
RegisterPublisherAsync -
(- . 
RegisterPublisherDto. B
dtoC F
)F G
;G H
} ∏
rC:\Users\jpedr\Workspace\Fiap\tech-challenges-fiap-pos-dotnet\FiapCloudGames.Application\Interface\ICartService.cs
	namespace 	
FiapCloudGames
 
. 
Application $
.$ %
	Interface% .
{ 
public 

	interface 
ICartService !
{ 
Task 
< 
IEnumerable 
< 
Game 
> 
> 
GetCart  '
(' (
Guid( ,
userId- 3
)3 4
;4 5
Task 
	AddToCart 
( 
Guid 
gameId "
," #
Guid$ (
userId) /
)/ 0
;0 1
Task		 
DeleteFromCart		 
(		 
Guid		  
gameId		! '
,		' (
Guid		) -
userId		. 4
)		4 5
;		5 6
} 
} ◊
uC:\Users\jpedr\Workspace\Fiap\tech-challenges-fiap-pos-dotnet\FiapCloudGames.Application\Interface\IGameRepository.cs
	namespace 	
FiapCloudGames
 
. 
Application $
.$ %
	Interface% .
;. /
public 
	interface 
IGameRepository  
{ 
Task 
CreateAsync	 
( 
Game 
game 
) 
;  
Task 
< 	
IEnumerable	 
< 
Game 
> 
> 
GetAllAsync '
(' (
)( )
;) *
Task		 
<		 	
IEnumerable			 
<		 
Game		 
>		 
>		 "
GetAllByPublisherAsync		 2
(		2 3
Guid		3 7
publisherId		8 C
)		C D
;		D E
Task

 
<

 	
Game

	 
>

 
GetByIdAsync

 
(

 
Guid

  
id

! #
)

# $
;

$ %
Task 
< 	
IEnumerable	 
< 
Game 
> 
> 
GetByIdsAsync )
() *
IEnumerable* 5
<5 6
Guid6 :
>: ;
ids< ?
)? @
;@ A
Task 
UpdateAsync	 
( 
Game 
game 
) 
;  
} ¬

rC:\Users\jpedr\Workspace\Fiap\tech-challenges-fiap-pos-dotnet\FiapCloudGames.Application\Interface\IGameService.cs
	namespace 	
FiapCloudGames
 
. 
Application $
.$ %
	Interface% .
{ 
public 

	interface 
IGameService !
{ 
Task 
< 
IEnumerable 
< 
Game 
> 
> 
GetAllAsync  +
(+ ,
), -
;- .
Task		 
<		 
IEnumerable		 
<		 
Game		 
>		 
>		 "
GetAllByPublisherAsync		  6
(		6 7
Guid		7 ;
publisherId		< G
)		G H
;		H I
Task

 
<

 
Game

 
>

 
GetByIdAsync

 
(

  
Guid

  $
id

% '
)

' (
;

( )
Task 
CreateAsync 
( 
Guid 
publisherID )
,) *
CreateGameDto+ 8
dto9 <
)< =
;= >
Task 
UpdateAsync 
( 
Guid 
id  
,  !
UpdateGameDto" /
dto0 3
)3 4
;4 5
} 
} â
uC:\Users\jpedr\Workspace\Fiap\tech-challenges-fiap-pos-dotnet\FiapCloudGames.Application\Interface\ILibraryService.cs
	namespace		 	
FiapCloudGames		
 
.		 
Application		 $
.		$ %
	Interface		% .
{

 
public 

	interface 
ILibraryService $
{ 
Task 
< 
IEnumerable 
< 
Game 
> 
> 
GetPlayerGamesAsync  3
(3 4
Guid4 8
userId9 ?
)? @
;@ A
Task 
AddToLibraryAsync 
( 
Guid #
userId$ *
,* +
List, 0
<0 1
Guid1 5
>5 6
games7 <
)< =
;= >
Task "
RemoveFromLibraryAsync #
(# $
Guid$ (
userId) /
,/ 0
Guid1 5
gameId6 <
)< =
;= >
} 
} ß
rC:\Users\jpedr\Workspace\Fiap\tech-challenges-fiap-pos-dotnet\FiapCloudGames.Application\Interface\IUserService.cs
	namespace		 	
FiapCloudGames		
 
.		 
Application		 $
.		$ %
	Interface		% .
{

 
public 

	interface 
IUserService !
{ 
Task 
< 
UserDto 
> 
GetByIdAsync "
(" #
Guid# '
id( *
)* +
;+ ,
Task 
< 
IEnumerable 
< 
UserDto  
>  !
>! "
GetAllAsync# .
(. /
)/ 0
;0 1
Task 
UpdateAsync 
( 
Guid 
id  
,  !
UpdateUserDto" /
user0 4
)4 5
;5 6
Task 
DeleteAsync 
( 
Guid 
id  
)  !
;! "
Task 
< 
IEnumerable 
< 
	PlayerDto "
>" #
># $
GetPlayersAsync% 4
(4 5
)5 6
;6 7
Task 
< 
IEnumerable 
< 
PublisherDto %
>% &
>& '
GetPlublishersAsync( ;
(; <
)< =
;= >
} 
} “
ÇC:\Users\jpedr\Workspace\Fiap\tech-challenges-fiap-pos-dotnet\FiapCloudGames.Application\Interface\Repositories\IUserRepository.cs
	namespace 	
FiapCloudGames
 
. 
Application $
.$ %
	Interface% .
.. /
Repositories/ ;
;; <
public

 
	interface

 
IUserRepository

  
{ 
Task 
CreateAsync	 
( 
User 
user 
) 
;  
Task 
< 	
User	 
? 
> 
GetByEmailAsync 
(  
string  &
email' ,
), -
;- .
Task 
< 	
User	 
? 
> 
GetByIdAsync 
( 
Guid !
id" $
)$ %
;% &
Task 
< 	
IEnumerable	 
< 
User 
> 
> 
GetAllAsync '
(' (
)( )
;) *
Task 
AddAsync	 
( 
User 
user 
) 
; 
Task 
UpdateAsync	 
( 
User 
user 
) 
;  
Task 
DeleteAsync	 
( 
Guid 
id 
) 
; 
Task 
< 	
IEnumerable	 
< 
Player 
> 
> 
GetPlayersAsync -
(- .
). /
;/ 0
Task 
< 	
IEnumerable	 
< 
	Publisher 
> 
>  
GetPublishersAsync! 3
(3 4
)4 5
;5 6
} “l
pC:\Users\jpedr\Workspace\Fiap\tech-challenges-fiap-pos-dotnet\FiapCloudGames.Application\Services\AuthService.cs
	namespace 	
FiapCloudGames
 
. 
Application $
.$ %
Services% -
;- .
public 
class 
AuthService 
: 
IAuthService '
{ 
private 
readonly 
IUserRepository $
_repository% 0
;0 1
private 
readonly 
IConfiguration #
_config$ +
;+ ,
private 
readonly 
ILogger 
< 
GameService (
>( )
_logger* 1
;1 2
public 

AuthService 
( 
IUserRepository &

repository' 1
,1 2
IConfiguration3 A
configB H
,H I
ILoggerJ Q
<Q R
GameServiceR ]
>] ^
logger_ e
)e f
{ 
_repository 
= 

repository  
;  !
_config 
= 
config 
; 
_logger 
= 
logger 
; 
} 
public!! 

async!! 
Task!! 
<!! 
TokenDto!! 
>!! 
AuthenticateAsync!!  1
(!!1 2
AuthenticateDto!!2 A
dto!!B E
)!!E F
{"" 
_logger## 
.## 
LogInformation## 
(## 
$str## O
,##O P
dto##Q T
.##T U
Email##U Z
)##Z [
;##[ \
var%% 
user%% 
=%% 
await%% 
_repository%% $
.%%$ %
GetByEmailAsync%%% 4
(%%4 5
dto%%5 8
.%%8 9
Email%%9 >
)%%> ?
;%%? @
if'' 

('' 
user'' 
=='' 
null'' 
||'' 
!'' 
BCrypt'' #
.''# $
Net''$ '
.''' (
BCrypt''( .
.''. /
Verify''/ 5
(''5 6
dto''6 9
.''9 :
Password'': B
,''B C
user''D H
.''H I
PasswordHash''I U
)''U V
)''V W
{(( 	
_logger)) 
.)) 

LogWarning)) 
()) 
$str)) X
,))X Y
dto))Z ]
.))] ^
Email))^ c
)))c d
;))d e
throw** 
new** !
UnauthorizedException** +
(**+ ,
$str**, G
)**G H
;**H I
}++ 	
_logger-- 
.-- 
LogInformation-- 
(-- 
$str-- H
,--H I
dto--J M
.--M N
Email--N S
)--S T
;--T U
return.. 
new.. 
TokenDto.. 
(.. 
GenerateJwt.. '
(..' (
user..( ,
).., -
)..- .
;... /
}// 
public11 

async11 
Task11 
<11 
	PlayerDto11 
>11  
RegisterPlayerAsync11! 4
(114 5
RegisterPlayerDto115 F
dto11G J
)11J K
{22 
_logger33 
.33 
LogInformation33 
(33 
$str33 V
,33V W
dto33X [
.33[ \
Email33\ a
)33a b
;33b c
var44 
usuarioExiste44 
=44 
await44 !
_repository44" -
.44- .
GetByEmailAsync44. =
(44= >
dto44> A
.44A B
Email44B G
)44G H
;44H I
if66 

(66 
usuarioExiste66 
!=66 
null66 !
)66! "
{77 	
_logger88 
.88 

LogWarning88 
(88 
$str88 W
,88W X
dto88Y \
.88\ ]
Email88] b
)88b c
;88c d
throw99 
new99 
ConflictException99 '
(99' (
$str99( ?
)99? @
;99@ A
}:: 	
var<< 
player<< 
=<< 
new<< 
Player<< 
{== 	
Id>> 
=>> 
Guid>> 
.>> 
NewGuid>> 
(>> 
)>> 
,>>  
Name?? 
=?? 
dto?? 
.?? 
Name?? 
,?? 
Username@@ 
=@@ 
dto@@ 
.@@ 
Username@@ #
,@@# $
EmailAA 
=AA 
dtoAA 
.AA 
EmailAA 
,AA 
PasswordHashBB 
=BB 
BCryptBB !
.BB! "
NetBB" %
.BB% &
BCryptBB& ,
.BB, -
HashPasswordBB- 9
(BB9 :
dtoBB: =
.BB= >
PasswordBB> F
)BBF G
,BBG H
BornDateCC 
=CC 
dtoCC 
.CC 
BornDateCC #
,CC# $
CpfDD 
=DD 
dtoDD 
.DD 
CpfDD 
,DD 
LibraryEE 
=EE 
newEE 
ListEE 
<EE 
GuidEE #
>EE# $
(EE$ %
)EE% &
,EE& '
CartFF 
=FF 
newFF 
ListFF 
<FF 
GuidFF  
>FF  !
(FF! "
)FF" #
,FF# $
WishlistGG 
=GG 
newGG 
ListGG 
<GG  
GuidGG  $
>GG$ %
(GG% &
)GG& '
,GG' (
RoleHH 
=HH 
UserRoleHH 
.HH 
PlayerHH "
,HH" #
	CreatedAtII 
=II 
DateTimeII  
.II  !
UtcNowII! '
}JJ 	
;JJ	 

tryKK 
{LL 	
awaitMM 
_repositoryMM 
.MM 
CreateAsyncMM )
(MM) *
playerMM* 0
)MM0 1
;MM1 2
_loggerOO 
.OO 
LogInformationOO "
(OO" #
$strOO# K
,OOK L
dtoOOM P
.OOP Q
EmailOOQ V
)OOV W
;OOW X
returnQQ 
newQQ 
	PlayerDtoQQ  
(QQ  !
playerQQ! '
)QQ' (
;QQ( )
}RR 	
catchSS 
(SS 
	ExceptionSS 
exSS 
)SS 
{TT 	
_loggerUU 
.UU 
LogErrorUU 
(UU 
exUU 
,UU  
$strUU! O
,UUO P
dtoUUQ T
.UUT U
EmailUUU Z
)UUZ [
;UU[ \
throwVV 
newVV #
ModifyDatabaseExceptionVV -
(VV- .
exVV. 0
.VV0 1
MessageVV1 8
)VV8 9
;VV9 :
}WW 	
}ZZ 
public\\ 

async\\ 
Task\\ 
<\\ 
PublisherDto\\ "
>\\" #"
RegisterPublisherAsync\\$ :
(\\: ; 
RegisterPublisherDto\\; O
dto\\P S
)\\S T
{]] 
_logger^^ 
.^^ 
LogInformation^^ 
(^^ 
$str^^ X
,^^X Y
dto^^Z ]
.^^] ^
Email^^^ c
)^^c d
;^^d e
var`` 
usuarioExiste`` 
=`` 
await`` !
_repository``" -
.``- .
GetByEmailAsync``. =
(``= >
dto``> A
.``A B
Email``B G
)``G H
;``H I
ifbb 

(bb 
usuarioExistebb 
!=bb 
nullbb !
)bb! "
{cc 	
_loggerdd 
.dd 

LogWarningdd 
(dd 
$strdd d
,ddd e
dtoddf i
.ddi j
Emailddj o
)ddo p
;ddp q
throwee 
newee 
ConflictExceptionee '
(ee' (
$stree( ?
)ee? @
;ee@ A
}ff 	
varhh 
	publisherhh 
=hh 
newhh 
	Publisherhh %
{ii 	
Idjj 
=jj 
Guidjj 
.jj 
NewGuidjj 
(jj 
)jj 
,jj  
Namekk 
=kk 
dtokk 
.kk 
Namekk 
,kk 
Usernamell 
=ll 
dtoll 
.ll 
Usernamell #
,ll# $
PublisherNamemm 
=mm 
dtomm 
.mm  
PublisherNamemm  -
,mm- .
CompanyNamenn 
=nn 
dtonn 
.nn 
CompanyNamenn )
,nn) *
Emailoo 
=oo 
dtooo 
.oo 
Emailoo 
,oo 
PasswordHashpp 
=pp 
BCryptpp !
.pp! "
Netpp" %
.pp% &
BCryptpp& ,
.pp, -
HashPasswordpp- 9
(pp9 :
dtopp: =
.pp= >
Passwordpp> F
)ppF G
,ppG H
BornDateqq 
=qq 
dtoqq 
.qq 
BornDateqq #
,qq# $
Cnpjrr 
=rr 
dtorr 
.rr 
Cnpjrr 
,rr 
GamesPublishedss 
=ss 
newss  
Listss! %
<ss% &
Guidss& *
>ss* +
(ss+ ,
)ss, -
,ss- .
TeamMemberstt 
=tt 
newtt 
Listtt "
<tt" #
Guidtt# '
>tt' (
(tt( )
)tt) *
,tt* +
Roleuu 
=uu 
UserRoleuu 
.uu 
	Publisheruu %
,uu% &
	CreatedAtvv 
=vv 
DateTimevv  
.vv  !
UtcNowvv! '
}ww 	
;ww	 

tryyy 
{zz 	
await{{ 
_repository{{ 
.{{ 
CreateAsync{{ )
({{) *
	publisher{{* 3
){{3 4
;{{4 5
_logger}} 
.}} 
LogInformation}} "
(}}" #
$str}}# M
,}}M N
dto}}O R
.}}R S
Email}}S X
)}}X Y
;}}Y Z
return 
new 
PublisherDto #
(# $
	publisher$ -
)- .
;. /
}
ÄÄ 	
catch
ÅÅ 
(
ÅÅ 
	Exception
ÅÅ 
ex
ÅÅ 
)
ÅÅ 
{
ÇÇ 	
_logger
ÉÉ 
.
ÉÉ 
LogError
ÉÉ 
(
ÉÉ 
ex
ÉÉ 
,
ÉÉ  
$str
ÉÉ! Q
,
ÉÉQ R
dto
ÉÉS V
.
ÉÉV W
Email
ÉÉW \
)
ÉÉ\ ]
;
ÉÉ] ^
throw
ÑÑ 
new
ÑÑ %
ModifyDatabaseException
ÑÑ -
(
ÑÑ- .
ex
ÑÑ. 0
.
ÑÑ0 1
Message
ÑÑ1 8
)
ÑÑ8 9
;
ÑÑ9 :
}
ÖÖ 	
}
ÜÜ 
private
àà 
string
àà 
GenerateJwt
àà 
(
àà 
User
àà #
user
àà$ (
)
àà( )
{
ââ 
var
ää 
key
ää 
=
ää 
Encoding
ää 
.
ää 
UTF8
ää 
.
ää  
GetBytes
ää  (
(
ää( )
_config
ää) 0
[
ää0 1
$str
ää1 :
]
ää: ;
!
ää; <
)
ää< =
;
ää= >
var
åå 
tokenDescriptor
åå 
=
åå 
new
åå !%
SecurityTokenDescriptor
åå" 9
{
çç 	
Subject
éé 
=
éé 
new
éé 
ClaimsIdentity
éé (
(
éé( )
new
éé) ,
[
éé, -
]
éé- .
{
èè 
new
êê 
Claim
êê 
(
êê 

ClaimTypes
êê  
.
êê  !
Name
êê! %
,
êê% &
user
êê' +
.
êê+ ,
Id
êê, .
.
êê. /
ToString
êê/ 7
(
êê7 8
)
êê8 9
)
êê9 :
,
êê: ;
new
ëë 
Claim
ëë 
(
ëë 

ClaimTypes
ëë  
.
ëë  !
Role
ëë! %
,
ëë% &
user
ëë' +
.
ëë+ ,
Role
ëë, 0
.
ëë0 1
ToString
ëë1 9
(
ëë9 :
)
ëë: ;
)
ëë; <
}
íí 	
)
íí	 

,
íí
 
Expires
ìì 
=
ìì 
DateTime
ìì 
.
ìì 
UtcNow
ìì %
.
ìì% &
AddHours
ìì& .
(
ìì. /
$num
ìì/ 0
)
ìì0 1
,
ìì1 2 
SigningCredentials
îî 
=
îî  
new
îî! $ 
SigningCredentials
îî% 7
(
îî7 8
new
ïï "
SymmetricSecurityKey
ïï (
(
ïï( )
key
ïï) ,
)
ïï, -
,
ïï- . 
SecurityAlgorithms
ññ "
.
ññ" #!
HmacSha256Signature
ññ# 6
)
óó 
,
óó 
Issuer
òò 
=
òò 
_config
òò 
[
òò 
$str
òò )
]
òò) *
,
òò* +
Audience
ôô 
=
ôô 
_config
ôô 
[
ôô 
$str
ôô +
]
ôô+ ,
}
öö 	
;
öö	 

var
úú 
handler
úú 
=
úú 
new
úú %
JwtSecurityTokenHandler
úú 1
(
úú1 2
)
úú2 3
;
úú3 4
var
ùù 
token
ùù 
=
ùù 
handler
ùù 
.
ùù 
CreateToken
ùù '
(
ùù' (
tokenDescriptor
ùù( 7
)
ùù7 8
;
ùù8 9
return
ûû 
handler
ûû 
.
ûû 

WriteToken
ûû !
(
ûû! "
token
ûû" '
)
ûû' (
;
ûû( )
}
üü 
}†† ı=
pC:\Users\jpedr\Workspace\Fiap\tech-challenges-fiap-pos-dotnet\FiapCloudGames.Application\Services\CartService.cs
	namespace 	
FiapCloudGames
 
. 
Application $
.$ %
Services% -
;- .
public		 
class		 
CartService		 
:		 
ICartService		 '
{

 
private 
readonly 
IUserRepository $
_userRepository% 4
;4 5
private 
readonly 
IGameRepository $
_gameRepository% 4
;4 5
private 
readonly 
ILogger 
< 
CartService (
>( )
_logger* 1
;1 2
public 

CartService 
( 
IUserRepository &
userRepository' 5
,5 6
IGameRepository7 F
gameRepositoryG U
,U V
ILoggerW ^
<^ _
CartService_ j
>j k
loggerl r
)r s
{ 
_userRepository 
= 
userRepository (
;( )
_gameRepository 
= 
gameRepository (
;( )
_logger 
= 
logger 
; 
} 
public 

async 
Task 
	AddToCart 
(  
Guid  $
gameId% +
,+ ,
Guid- 1
userId2 8
)8 9
{ 
_logger 
. 
LogInformation 
( 
$str b
,b c
gameIdd j
,j k
userIdl r
)r s
;s t
var 
user 
= 
( 
Player 
) 
await !
_userRepository" 1
.1 2
GetByIdAsync2 >
(> ?
userId? E
)E F
;F G
if 

( 
user 
== 
null 
) 
{ 	
_logger 
. 

LogWarning 
( 
$str n
,n o
userIdp v
,v w
gameIdx ~
)~ 
;	 Ä
throw 
new 
NotFoundException '
(' (
$str( @
)@ A
;A B
} 	
user!! 
.!! 
Cart!! 
.!! 
Add!! 
(!! 
gameId!! 
)!! 
;!! 
try## 
{$$ 	
await%% 
_userRepository%% !
.%%! "
UpdateAsync%%" -
(%%- .
user%%. 2
)%%2 3
;%%3 4
_logger&& 
.&& 
LogInformation&& "
(&&" #
$str&&# i
,&&i j
gameId&&k q
,&&q r
userId&&s y
)&&y z
;&&z {
}'' 	
catch(( 
((( 
	Exception(( 
ex(( 
)(( 
{)) 	
_logger** 
.** 
LogError** 
(** 
ex** 
,**  
$str**! b
,**b c
gameId**d j
,**j k
userId**l r
)**r s
;**s t
throw++ 
new++ #
ModifyDatabaseException++ -
(++- .
ex++. 0
.++0 1
Message++1 8
)++8 9
;++9 :
},, 	
}.. 
public00 

async00 
Task00 
DeleteFromCart00 $
(00$ %
Guid00% )
gameId00* 0
,000 1
Guid002 6
userId007 =
)00= >
{11 
_logger22 
.22 
LogInformation22 
(22 
$str22 c
,22c d
gameId22e k
,22k l
userId22m s
)22s t
;22t u
var44 
user44 
=44 
await44 
_userRepository44 (
.44( )
GetByIdAsync44) 5
(445 6
userId446 <
)44< =
as44> @
Player44A G
;44G H
if66 

(66 
user66 
==66 
null66 
)66 
{77 	
_logger88 
.88 

LogWarning88 
(88 
$str88 l
,88l m
userId88n t
,88t u
gameId88v |
)88| }
;88} ~
throw99 
new99 
NotFoundException99 '
(99' (
$str99( @
)99@ A
;99A B
}:: 	
if== 

(== 
!== 
user== 
.== 
Cart== 
.== 
Contains== 
(==  
gameId==  &
)==& '
)==' (
{>> 	
_logger?? 
.?? 

LogWarning?? 
(?? 
$str?? W
,??W X
gameId??Y _
,??_ `
userId??a g
)??g h
;??h i
throw@@ 
new@@ 
NotFoundException@@ '
(@@' (
$str@@( F
)@@F G
;@@G H
}BB 	
userDD 
.DD 
CartDD 
.DD 
RemoveDD 
(DD 
gameIdDD 
)DD  
;DD  !
tryFF 
{GG 	
awaitHH 
_userRepositoryHH !
.HH! "
UpdateAsyncHH" -
(HH- .
userHH. 2
)HH2 3
;HH3 4
_loggerII 
.II 
LogInformationII "
(II" #
$strII# g
,IIg h
gameIdIIi o
,IIo p
userIdIIq w
)IIw x
;IIx y
}JJ 	
catchKK 
(KK 
	ExceptionKK 
exKK 
)KK 
{LL 	
_loggerMM 
.MM 
LogErrorMM 
(MM 
exMM 
,MM  
$strMM! `
,MM` a
gameIdMMb h
,MMh i
userIdMMj p
)MMp q
;MMq r
throwNN 
newNN #
ModifyDatabaseExceptionNN -
(NN- .
exNN. 0
.NN0 1
MessageNN1 8
)NN8 9
;NN9 :
}OO 	
}PP 
publicQQ 

asyncQQ 
TaskQQ 
<QQ 
IEnumerableQQ !
<QQ! "
GameQQ" &
>QQ& '
>QQ' (
GetCartQQ) 0
(QQ0 1
GuidQQ1 5
userIdQQ6 <
)QQ< =
{RR 
_loggerSS 
.SS 
LogInformationSS 
(SS 
$strSS F
,SSF G
userIdSSH N
)SSN O
;SSO P
varUU 
userUU 
=UU 
awaitUU 
_userRepositoryUU (
.UU( )
GetByIdAsyncUU) 5
(UU5 6
userIdUU6 <
)UU< =
asUU> @
PlayerUUA G
;UUG H
ifVV 

(VV 
userVV 
==VV 
nullVV 
)VV 
{WW 	
_loggerXX 
.XX 

LogWarningXX 
(XX 
$strXX S
,XXS T
userIdXXU [
)XX[ \
;XX\ ]
throwYY 
newYY 
NotFoundExceptionYY '
(YY' (
$strYY( @
)YY@ A
;YYA B
}ZZ 	
var\\ 
cart\\ 
=\\ 
await\\ 
_gameRepository\\ (
.\\( )
GetByIdsAsync\\) 6
(\\6 7
user\\7 ;
.\\; <
Cart\\< @
)\\@ A
;\\A B
_logger^^ 
.^^ 
LogInformation^^ 
(^^ 
$str^^ Y
,^^Y Z
cart^^[ _
.^^_ `
Count^^` e
(^^e f
)^^f g
,^^g h
userId^^i o
)^^o p
;^^p q
return__ 
cart__ 
;__ 
}`` 
}aa ƒO
pC:\Users\jpedr\Workspace\Fiap\tech-challenges-fiap-pos-dotnet\FiapCloudGames.Application\Services\GameService.cs
	namespace 	
FiapCloudGames
 
. 
Application $
.$ %
Services% -
;- .
public 
class 
GameService 
: 
IGameService '
{ 
private 
readonly 
IGameRepository $
_gameRepository% 4
;4 5
private 
readonly 
IUserRepository $
_userRepository% 4
;4 5
private 
readonly 
ILogger 
< 
GameService (
>( )
_logger* 1
;1 2
public 

GameService 
( 
IGameRepository &
gameRepository' 5
,5 6
IUserRepository7 F
userRepositoryG U
,U V
ILoggerW ^
<^ _
GameService_ j
>j k
loggerl r
)r s
{ 
_gameRepository 
= 
gameRepository (
;( )
_userRepository 
= 
userRepository (
;( )
_logger 
= 
logger 
; 
} 
public 

async 
Task 
CreateAsync !
(! "
Guid" &
publisherId' 2
,2 3
CreateGameDto4 A
dtoB E
)E F
{ 
_logger 
. 
LogInformation 
( 
$str W
,W X
publisherIdY d
)d e
;e f
var 
user 
= 
await 
_userRepository (
.( )
GetByIdAsync) 5
(5 6
publisherId6 A
)A B
;B C
if   

(  
 
user   
==   
null   
)   
{!! 	
_logger"" 
."" 

LogWarning"" 
("" 
$str"" \
,""\ ]
publisherId""^ i
)""i j
;""j k
throw## 
new## 
NotFoundException## '
(##' (
$str##( B
)##B C
;##C D
}$$ 	
var&& 
game&& 
=&& 
new&& 
Game&& 
{'' 	
Id(( 
=(( 
Guid(( 
.(( 
NewGuid(( 
((( 
)(( 
,((  
Title)) 
=)) 
dto)) 
.)) 
Title)) 
,)) 
	Publisher** 
=** 
publisherId** #
,**# $
Description++ 
=++ 
dto++ 
.++ 
Description++ )
,++) *
Price,, 
=,, 
dto,, 
.,, 
Price,, 
,,, 
ReleaseDate-- 
=-- 
dto-- 
.-- 
ReleaseDate-- )
}.. 	
;..	 

try00 
{11 	
await22 
_gameRepository22 !
.22! "
CreateAsync22" -
(22- .
game22. 2
)222 3
;223 4
_logger33 
.33 
LogInformation33 "
(33" #
$str33# b
,33b c
game33d h
.33h i
Id33i k
,33k l
publisherId33m x
)33x y
;33y z
}44 	
catch55 
(55 
	Exception55 
ex55 
)55 
{66 	
_logger77 
.77 
LogError77 
(77 
ex77 
,77  
$str77! R
,77R S
publisherId77T _
)77_ `
;77` a
throw88 
new88 #
ModifyDatabaseException88 -
(88- .
ex88. 0
.880 1
Message881 8
)888 9
;889 :
}99 	
};; 
public== 

async== 
Task== 
<== 
IEnumerable== !
<==! "
Game==" &
>==& '
>==' (
GetAllAsync==) 4
(==4 5
)==5 6
{>> 
_logger?? 
.?? 
LogInformation?? 
(?? 
$str?? 8
)??8 9
;??9 :
varAA 
gamesAA 
=AA 
awaitAA 
_gameRepositoryAA )
.AA) *
GetAllAsyncAA* 5
(AA5 6
)AA6 7
;AA7 8
_loggerCC 
.CC 
LogInformationCC 
(CC 
$strCC 9
,CC9 :
gamesCC; @
.CC@ A
CountCCA F
(CCF G
)CCG H
)CCH I
;CCI J
returnEE 
gamesEE 
;EE 
}FF 
publicHH 

asyncHH 
TaskHH 
<HH 
IEnumerableHH !
<HH! "
GameHH" &
>HH& '
>HH' ("
GetAllByPublisherAsyncHH) ?
(HH? @
GuidHH@ D
publisherIdHHE P
)HHP Q
{II 
_loggerJJ 
.JJ 
LogInformationJJ 
(JJ 
$strJJ J
,JJJ K
publisherIdJJL W
)JJW X
;JJX Y
varLL 
userLL 
=LL 
awaitLL 
_userRepositoryLL (
.LL( )
GetByIdAsyncLL) 5
(LL5 6
publisherIdLL6 A
)LLA B
;LLB C
ifMM 

(MM 
userMM 
==MM 
nullMM 
)MM 
{NN 	
_loggerOO 
.OO 

LogWarningOO 
(OO 
$strOO W
,OOW X
publisherIdOOY d
)OOd e
;OOe f
throwPP 
newPP 
NotFoundExceptionPP '
(PP' (
$strPP( B
)PPB C
;PPC D
}QQ 	
varTT 
gamesTT 
=TT 
awaitTT 
_gameRepositoryTT )
.TT) *"
GetAllByPublisherAsyncTT* @
(TT@ A
publisherIdTTA L
)TTL M
;TTM N
_loggerVV 
.VV 
LogInformationVV 
(VV 
$strVV V
,VVV W
gamesVVX ]
.VV] ^
CountVV^ c
(VVc d
)VVd e
,VVe f
publisherIdVVg r
)VVr s
;VVs t
returnXX 
gamesXX 
;XX 
}YY 
publicZZ 

asyncZZ 
TaskZZ 
<ZZ 
GameZZ 
>ZZ 
GetByIdAsyncZZ (
(ZZ( )
GuidZZ) -
idZZ. 0
)ZZ0 1
{[[ 
_logger\\ 
.\\ 
LogInformation\\ 
(\\ 
$str\\ 7
,\\7 8
id\\9 ;
)\\; <
;\\< =
var^^ 
game^^ 
=^^ 
await^^ 
_gameRepository^^ (
.^^( )
GetByIdAsync^^) 5
(^^5 6
id^^6 8
)^^8 9
;^^9 :
if`` 

(`` 
game`` 
==`` 
null`` 
)`` 
{aa 	
_loggerbb 
.bb 

LogWarningbb 
(bb 
$strbb =
,bb= >
idbb? A
)bbA B
;bbB C
throwcc 
newcc 
NotFoundExceptioncc '
(cc' (
$strcc( =
)cc= >
;cc> ?
}dd 	
_loggerff 
.ff 
LogInformationff 
(ff 
$strff 9
,ff9 :
idff; =
)ff= >
;ff> ?
returnhh 
gamehh 
;hh 
}ii 
publicjj 

asyncjj 
Taskjj 
UpdateAsyncjj !
(jj! "
Guidjj" &
idjj' )
,jj) *
UpdateGameDtojj+ 8
dtojj9 <
)jj< =
{kk 
_loggerll 
.ll 
LogInformationll 
(ll 
$strll G
,llG H
idllI K
)llK L
;llL M
varnn 
gamenn 
=nn 
awaitnn 
_gameRepositorynn (
.nn( )
GetByIdAsyncnn) 5
(nn5 6
idnn6 8
)nn8 9
;nn9 :
ifpp 

(pp 
gamepp 
==pp 
nullpp 
)pp 
{qq 	
_loggerrr 
.rr 

LogWarningrr 
(rr 
$strrr N
,rrN O
idrrP R
)rrR S
;rrS T
throwss 
newss 
NotFoundExceptionss '
(ss' (
$strss( =
)ss= >
;ss> ?
}tt 	
gamevv 
.vv 
Titlevv 
=vv 
dtovv 
.vv 
Titlevv 
;vv 
gameww 
.ww 
Priceww 
=ww 
dtoww 
.ww 
Priceww 
;ww 
gamexx 
.xx 
Descriptionxx 
=xx 
dtoxx 
.xx 
Descriptionxx *
;xx* +
gameyy 
.yy 
ReleaseDateyy 
=yy 
dtoyy 
.yy 
ReleaseDateyy *
;yy* +
try{{ 
{|| 	
await}} 
_gameRepository}} !
.}}! "
UpdateAsync}}" -
(}}- .
game}}. 2
)}}2 3
;}}3 4
_logger~~ 
.~~ 
LogInformation~~ "
(~~" #
$str~~# I
,~~I J
id~~K M
)~~M N
;~~N O
} 	
catch
ÄÄ 
(
ÄÄ 
	Exception
ÄÄ 
ex
ÄÄ 
)
ÄÄ 
{
ÅÅ 	
_logger
ÇÇ 
.
ÇÇ 
LogError
ÇÇ 
(
ÇÇ 
ex
ÇÇ 
,
ÇÇ  
$str
ÇÇ! B
,
ÇÇB C
id
ÇÇD F
)
ÇÇF G
;
ÇÇG H
throw
ÉÉ 
new
ÉÉ %
ModifyDatabaseException
ÉÉ -
(
ÉÉ- .
ex
ÉÉ. 0
.
ÉÉ0 1
Message
ÉÉ1 8
)
ÉÉ8 9
;
ÉÉ9 :
}
ÑÑ 	
}
ÖÖ 
}ÜÜ öB
sC:\Users\jpedr\Workspace\Fiap\tech-challenges-fiap-pos-dotnet\FiapCloudGames.Application\Services\LibraryService.cs
	namespace 	
FiapCloudGames
 
. 
Application $
.$ %
Services% -
;- .
public		 
class		 
LibraryService		 
:		 
ILibraryService		 -
{

 
private 
readonly 
IUserRepository $
_userRepository% 4
;4 5
private 
readonly 
IGameRepository $
_gameRepository% 4
;4 5
private 
readonly 
ILogger 
< 
LibraryService +
>+ ,
_logger- 4
;4 5
public 

LibraryService 
( 
IUserRepository )
userRepository* 8
,8 9
IGameRepository: I
gameRepositoryJ X
,X Y
ILoggerZ a
<a b
LibraryServiceb p
>p q
loggerr x
)x y
{ 
_userRepository 
= 
userRepository (
;( )
_gameRepository 
= 
gameRepository (
;( )
_logger 
= 
logger 
; 
} 
public 

async 
Task 
< 
IEnumerable !
<! "
Game" &
>& '
>' (
GetPlayerGamesAsync) <
(< =
Guid= A
userIdB H
)H I
{ 
_logger 
. 
LogInformation 
( 
$str Q
,Q R
userIdS Y
)Y Z
;Z [
var 
user 
= 
( 
Player 
) 
await  
_userRepository! 0
.0 1
GetByIdAsync1 =
(= >
userId> D
)D E
;E F
if 

( 
user 
== 
null 
) 
{ 	
_logger 
. 

LogWarning 
( 
$str ^
,^ _
userId` f
)f g
;g h
throw 
new 
NotFoundException '
(' (
$str( @
)@ A
;A B
} 	
if 

( 
! 
user 
. 
Library 
. 
Any 
( 
) 
)  
{   	
_logger!! 
.!! 
LogInformation!! "
(!!" #
$str!!# T
,!!T U
userId!!V \
)!!\ ]
;!!] ^
return"" 
new"" 
List"" 
<"" 
Game""  
>""  !
(""! "
)""" #
;""# $
}## 	
var%% 
games%% 
=%% 
await%% 
_gameRepository%% )
.%%) *
GetByIdsAsync%%* 7
(%%7 8
user%%8 <
.%%< =
Library%%= D
)%%D E
;%%E F
_logger'' 
.'' 
LogInformation'' 
('' 
$str'' [
,''[ \
games''] b
.''b c
Count''c h
(''h i
)''i j
,''j k
userId''l r
)''r s
;''s t
return(( 
games(( 
;(( 
})) 
public++ 

async++ 
Task++ 
AddToLibraryAsync++ '
(++' (
Guid++( ,
userId++- 3
,++3 4
List++5 9
<++9 :
Guid++: >
>++> ?
games++@ E
)++E F
{,, 
_logger-- 
.-- 
LogInformation-- 
(-- 
$str-- [
,--[ \
games--] b
.--b c
Count--c h
,--h i
userId--j p
)--p q
;--q r
var// 
user// 
=// 
(// 
Player// 
)// 
await//  
_userRepository//! 0
.//0 1
GetByIdAsync//1 =
(//= >
userId//> D
)//D E
;//E F
if00 

(00 
user00 
==00 
null00 
)00 
{11 	
_logger22 
.22 

LogWarning22 
(22 
$str22 g
,22g h
userId22i o
)22o p
;22p q
throw33 
new33 
NotFoundException33 '
(33' (
$str33( @
)33@ A
;33A B
}44 	
user66 
.66 
Library66 
.66 
AddRange66 
(66 
games66 #
)66# $
;66$ %
try88 
{99 	
await:: 
_userRepository:: !
.::! "
UpdateAsync::" -
(::- .
user::. 2
)::2 3
;::3 4
_logger;; 
.;; 
LogInformation;; "
(;;" #
$str;;# c
,;;c d
userId;;e k
);;k l
;;;l m
}<< 	
catch== 
(== 
	Exception== 
ex== 
)== 
{>> 	
_logger?? 
.?? 
LogError?? 
(?? 
ex?? 
,??  
$str??! [
,??[ \
userId??] c
)??c d
;??d e
throw@@ 
new@@ #
ModifyDatabaseException@@ -
(@@- .
ex@@. 0
.@@0 1
Message@@1 8
)@@8 9
;@@9 :
}AA 	
}BB 
publicDD 

asyncDD 
TaskDD "
RemoveFromLibraryAsyncDD ,
(DD, -
GuidDD- 1
userIdDD2 8
,DD8 9
GuidDD: >
gameIdDD? E
)DDE F
{EE 
_loggerFF 
.FF 
LogInformationFF 
(FF 
$strFF Z
,FFZ [
gameIdFF\ b
,FFb c
userIdFFd j
)FFj k
;FFk l
varHH 
userHH 
=HH 
(HH 
PlayerHH 
)HH 
awaitHH  
_userRepositoryHH! 0
.HH0 1
GetByIdAsyncHH1 =
(HH= >
userIdHH> D
)HHD E
;HHE F
ifII 

(II 
userII 
==II 
nullII 
)II 
{JJ 	
_loggerKK 
.KK 

LogWarningKK 
(KK 
$strKK e
,KKe f
userIdKKg m
)KKm n
;KKn o
throwLL 
newLL 
NotFoundExceptionLL '
(LL' (
$strLL( @
)LL@ A
;LLA B
}MM 	
ifOO 

(OO 
!OO 
userOO 
.OO 
LibraryOO 
.OO 
ContainsOO "
(OO" #
gameIdOO# )
)OO) *
)OO* +
{PP 	
_loggerQQ 
.QQ 

LogWarningQQ 
(QQ 
$strQQ Y
,QQY Z
gameIdQQ[ a
,QQa b
userIdQQc i
)QQi j
;QQj k
throwRR 
newRR 
NotFoundExceptionRR '
(RR' (
$strRR( F
)RRF G
;RRG H
}SS 	
userUU 
.UU 
LibraryUU 
.UU 
RemoveUU 
(UU 
gameIdUU "
)UU" #
;UU# $
tryWW 
{XX 	
awaitYY 
_userRepositoryYY !
.YY! "
UpdateAsyncYY" -
(YY- .
userYY. 2
)YY2 3
;YY3 4
_loggerZZ 
.ZZ 
LogInformationZZ "
(ZZ" #
$strZZ# i
,ZZi j
gameIdZZk q
,ZZq r
userIdZZs y
)ZZy z
;ZZz {
}[[ 	
catch\\ 
(\\ 
	Exception\\ 
ex\\ 
)\\ 
{]] 	
_logger^^ 
.^^ 
LogError^^ 
(^^ 
ex^^ 
,^^  
$str^^! b
,^^b c
gameId^^d j
,^^j k
userId^^l r
)^^r s
;^^s t
throw__ 
new__ #
ModifyDatabaseException__ -
(__- .
ex__. 0
.__0 1
Message__1 8
)__8 9
;__9 :
}`` 	
}aa 
}bb çY
pC:\Users\jpedr\Workspace\Fiap\tech-challenges-fiap-pos-dotnet\FiapCloudGames.Application\Services\UserService.cs
	namespace 	
FiapCloudGames
 
. 
Application $
.$ %
Services% -
{		 
public

 

class

 
UserService

 
:

 
IUserService

 +
{ 
private 
readonly 
IUserRepository (
_repo) .
;. /
private 
readonly 
ILogger  
<  !
UserService! ,
>, -
_logger. 5
;5 6
public 
UserService 
( 
IUserRepository *
repo+ /
,/ 0
ILogger1 8
<8 9
UserService9 D
>D E
loggerF L
)L M
{ 	
_repo 
= 
repo 
; 
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
< 
UserDto !
>! "
GetByIdAsync# /
(/ 0
Guid0 4
id5 7
)7 8
{ 	
_logger 
. 
LogInformation "
(" #
$str# E
,E F
idG I
)I J
;J K
var 
existingUser 
= 
await $
_repo% *
.* +
GetByIdAsync+ 7
(7 8
id8 :
): ;
;; <
if 
( 
existingUser 
== 
null  $
)$ %
{ 
_logger 
. 

LogWarning "
(" #
$str# K
,K L
idM O
)O P
;P Q
throw 
new 
NotFoundException +
(+ ,
$str, D
)D E
;E F
} 
UserDto   
dto   
=   
null   
;   
if"" 
("" 
existingUser"" 
is"" 
Player""  &
player""' -
)""- .
{## 
dto$$ 
=$$ 
new$$ 
UserDto$$ !
($$! "
player$$" (
)$$( )
;$$) *
}%% 
else&& 
if&& 
(&& 
existingUser&& !
is&&" $
	Publisher&&% .
	publisher&&/ 8
)&&8 9
{'' 
dto(( 
=(( 
new(( 
UserDto(( !
(((! "
	publisher((" +
)((+ ,
;((, -
})) 
_logger++ 
.++ 
LogInformation++ "
(++" #
$str++# R
,++R S
id++T V
)++V W
;++W X
return-- 
dto-- 
;-- 
}.. 	
public00 
async00 
Task00 
UpdateAsync00 %
(00% &
Guid00& *
id00+ -
,00- .
UpdateUserDto00/ <
dto00= @
)00@ A
{11 	
_logger22 
.22 
LogInformation22 "
(22" #
$str22# N
,22N O
id22P R
)22R S
;22S T
var44 
existingUser44 
=44 
await44 $
_repo44% *
.44* +
GetByIdAsync44+ 7
(447 8
id448 :
)44: ;
;44; <
if55 
(55 
existingUser55 
==55 
null55  $
)55$ %
{66 
_logger77 
.77 

LogWarning77 "
(77" #
$str77# U
,77U V
id77W Y
)77Y Z
;77Z [
throw88 
new88 
NotFoundException88 +
(88+ ,
$str88, D
)88D E
;88E F
}99 
existingUser;; 
.;; 
Name;; 
=;; 
dto;;  #
.;;# $
Name;;$ (
;;;( )
existingUser<< 
.<< 
Username<< !
=<<" #
dto<<$ '
.<<' (
UserName<<( 0
;<<0 1
try>> 
{?? 
await@@ 
_repo@@ 
.@@ 
UpdateAsync@@ '
(@@' (
existingUser@@( 4
)@@4 5
;@@5 6
_loggerAA 
.AA 
LogInformationAA &
(AA& '
$strAA' P
,AAP Q
idAAR T
)AAT U
;AAU V
}BB 
catchCC 
(CC 
	ExceptionCC 
exCC 
)CC  
{DD 
_loggerEE 
.EE 
LogErrorEE  
(EE  !
exEE! #
,EE# $
$strEE% I
,EEI J
idEEK M
)EEM N
;EEN O
throwFF 
newFF #
ModifyDatabaseExceptionFF 1
(FF1 2
exFF2 4
.FF4 5
MessageFF5 <
)FF< =
;FF= >
}GG 
}HH 	
publicJJ 
asyncJJ 
TaskJJ 
DeleteAsyncJJ %
(JJ% &
GuidJJ& *
idJJ+ -
)JJ- .
{KK 	
_loggerLL 
.LL 
LogInformationLL "
(LL" #
$strLL# K
,LLK L
idLLM O
)LLO P
;LLP Q
varNN 
existingUserNN 
=NN 
awaitNN $
_repoNN% *
.NN* +
GetByIdAsyncNN+ 7
(NN7 8
idNN8 :
)NN: ;
;NN; <
ifOO 
(OO 
existingUserOO 
==OO 
nullOO  $
)OO$ %
{PP 
_loggerQQ 
.QQ 

LogWarningQQ "
(QQ" #
$strQQ# R
,QQR S
idQQT V
)QQV W
;QQW X
throwRR 
newRR 
NotFoundExceptionRR +
(RR+ ,
$strRR, D
)RRD E
;RRE F
}SS 
tryUU 
{VV 
awaitWW 
_repoWW 
.WW 
DeleteAsyncWW '
(WW' (
idWW( *
)WW* +
;WW+ ,
_loggerXX 
.XX 
LogInformationXX &
(XX& '
$strXX' N
,XXN O
idXXP R
)XXR S
;XXS T
}YY 
catchZZ 
(ZZ 
	ExceptionZZ 
exZZ 
)ZZ  
{[[ 
_logger\\ 
.\\ 
LogError\\  
(\\  !
ex\\! #
,\\# $
$str\\% G
,\\G H
id\\I K
)\\K L
;\\L M
throw]] 
new]] #
ModifyDatabaseException]] 1
(]]1 2
ex]]2 4
.]]4 5
Message]]5 <
)]]< =
;]]= >
}^^ 
}__ 	
publicaa 
asyncaa 
Taskaa 
<aa 
IEnumerableaa %
<aa% &
	PlayerDtoaa& /
>aa/ 0
>aa0 1
GetPlayersAsyncaa2 A
(aaA B
)aaB C
{bb 	
_loggercc 
.cc 
LogInformationcc "
(cc" #
$strcc# @
)cc@ A
;ccA B
varee 
auxListee 
=ee 
(ee 
awaitee  
_repoee! &
.ee& '
GetPlayersAsyncee' 6
(ee6 7
)ee7 8
)ee8 9
.ee9 :
ToListee: @
(ee@ A
)eeA B
;eeB C
varff 
playersListff 
=ff 
auxListff %
.ff% &
Selectff& ,
(ff, -
pff- .
=>ff/ 1
newff2 5
	PlayerDtoff6 ?
(ff? @
pff@ A
)ffA B
)ffB C
.ffC D
ToListffD J
(ffJ K
)ffK L
;ffL M
_loggerhh 
.hh 
LogInformationhh "
(hh" #
$strhh# B
,hhB C
playersListhhD O
.hhO P
CounthhP U
)hhU V
;hhV W
returnjj 
playersListjj 
;jj 
}kk 	
publicmm 
asyncmm 
Taskmm 
<mm 
IEnumerablemm %
<mm% &
PublisherDtomm& 2
>mm2 3
>mm3 4
GetPlublishersAsyncmm5 H
(mmH I
)mmI J
{nn 	
_loggeroo 
.oo 
LogInformationoo "
(oo" #
$stroo# C
)ooC D
;ooD E
varqq 
auxListqq 
=qq 
(qq 
awaitqq  
_repoqq! &
.qq& '
GetPublishersAsyncqq' 9
(qq9 :
)qq: ;
)qq; <
.qq< =
ToListqq= C
(qqC D
)qqD E
;qqE F
varrr 
publishersListrr 
=rr  
auxListrr! (
.rr( )
Selectrr) /
(rr/ 0
prr0 1
=>rr2 4
newrr5 8
PublisherDtorr9 E
(rrE F
prrF G
)rrG H
)rrH I
.rrI J
ToListrrJ P
(rrP Q
)rrQ R
;rrR S
_loggertt 
.tt 
LogInformationtt "
(tt" #
$strtt# E
,ttE F
publishersListttG U
.ttU V
CountttV [
)tt[ \
;tt\ ]
returnvv 
publishersListvv !
;vv! "
}ww 	
publicyy 
asyncyy 
Taskyy 
<yy 
IEnumerableyy %
<yy% &
UserDtoyy& -
>yy- .
>yy. /
GetAllAsyncyy0 ;
(yy; <
)yy< =
{zz 	
_logger{{ 
.{{ 
LogInformation{{ "
({{" #
$str{{# ?
){{? @
;{{@ A
var}} 
auxList}} 
=}} 
(}} 
await}}  
_repo}}! &
.}}& '
GetAllAsync}}' 2
(}}2 3
)}}3 4
)}}4 5
.}}5 6
ToList}}6 <
(}}< =
)}}= >
;}}> ?
var~~ 
userList~~ 
=~~ 
new~~ 
List~~ #
<~~# $
UserDto~~$ +
>~~+ ,
(~~, -
)~~- .
;~~. /
foreach
ÄÄ 
(
ÄÄ 
var
ÄÄ 
user
ÄÄ 
in
ÄÄ  
auxList
ÄÄ! (
)
ÄÄ( )
{
ÅÅ 
if
ÇÇ 
(
ÇÇ 
user
ÇÇ 
is
ÇÇ 
Player
ÇÇ "
player
ÇÇ# )
)
ÇÇ) *
userList
ÉÉ 
.
ÉÉ 
Add
ÉÉ  
(
ÉÉ  !
new
ÉÉ! $
UserDto
ÉÉ% ,
(
ÉÉ, -
player
ÉÉ- 3
)
ÉÉ3 4
)
ÉÉ4 5
;
ÉÉ5 6
else
ÑÑ 
if
ÑÑ 
(
ÑÑ 
user
ÑÑ 
is
ÑÑ  
	Publisher
ÑÑ! *
	publisher
ÑÑ+ 4
)
ÑÑ4 5
userList
ÖÖ 
.
ÖÖ 
Add
ÖÖ  
(
ÖÖ  !
new
ÖÖ! $
UserDto
ÖÖ% ,
(
ÖÖ, -
	publisher
ÖÖ- 6
)
ÖÖ6 7
)
ÖÖ7 8
;
ÖÖ8 9
}
ÜÜ 
_logger
àà 
.
àà 
LogInformation
àà "
(
àà" #
$str
àà# A
,
ààA B
userList
ààC K
.
ààK L
Count
ààL Q
)
ààQ R
;
ààR S
return
ää 
userList
ää 
;
ää 
}
ãã 	
}
åå 
}çç 