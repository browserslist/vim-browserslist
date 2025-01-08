if exists("b:current_syntax")
    finish
endif

" syntax case match
syntax case ignore
syntax sync fromstart

syntax match   browserslistComment     /^\s*#.*\n/

syntax case match
syntax match   browserslistCountry     /AD\|AE\|AF\|AG\|AI\|AL\|AM\|AN\|AO\|AR\|AS\|AT\|AU\|AW\|AX\|AZ\|BA\|BB\|BD\|BE\|BF\|BG\|BH\|BI\|BJ\|BM\|BN\|BO\|BR\|BS\|BT\|BW\|BY\|BZ\|CA\|CD\|CF\|CG\|CH\|CI\|CK\|CL\|CM\|CN\|CO\|CR\|CU\|CV\|CX\|CY\|CZ\|DE\|DJ\|DK\|DM\|DO\|DZ\|EC\|EE\|EG\|ER\|ES\|ET\|FI\|FJ\|FK\|FM\|FO\|FR\|GA\|GB\|GD\|GE\|GF\|GG\|GH\|GI\|GL\|GM\|GN\|GP\|GQ\|GR\|GT\|GU\|GW\|GY\|HK\|HN\|HR\|HT\|HU\|ID\|IE\|IL\|IM\|IN\|IQ\|IR\|IS\|IT\|JE\|JM\|JO\|JP\|KE\|KG\|KH\|KI\|KM\|KN\|KP\|KR\|KW\|KY\|KZ\|LA\|LB\|LC\|LI\|LK\|LR\|LS\|LT\|LU\|LV\|LY\|MA\|MC\|MD\|ME\|MG\|MH\|MK\|ML\|MM\|MN\|MO\|MP\|MQ\|MR\|MS\|MT\|MU\|MV\|MW\|MX\|MY\|MZ\|NA\|NC\|NE\|NF\|NG\|NI\|NL\|NO\|NP\|NR\|NU\|NZ\|OM\|PA\|PE\|PF\|PG\|PH\|PK\|PL\|PM\|PN\|PR\|PS\|PT\|PW\|PY\|QA\|RE\|RO\|RS\|RU\|RW\|SA\|SB\|SC\|SD\|SE\|SG\|SH\|SI\|SK\|SL\|SM\|SN\|SO\|SR\|ST\|SV\|SY\|SZ\|TC\|TD\|TG\|TH\|TJ\|TK\|TL\|TM\|TN\|TO\|TR\|TT\|TV\|TW\|TZ\|UA\|UG\|US\|UY\|UZ\|VA\|VC\|VE\|VG\|VI\|VN\|VU\|WF\|WS\|YE\|YT\|ZA\|ZM\|ZW\|alt-af\|alt-an\|alt-as\|alt-eu\|alt-na\|alt-oc\|alt-sa\|alt-ww/
syntax case ignore

syntax match   browserslistKeyword     /\(not\|and\|or\|extends\|in\|last\|since\|cover\|supports\|<=\?\|>=\?\|,\)/
syntax match   browserslistConfig      /\sbrowserslist-config-.*/
syntax match   browserslistSection     /\(defaults\|\[.*\]\)/

syntax match   browserslistVersion     /\(maintained\|current\|\d\+\(\.\d\+\)\{0,2\}\|esr\|tp\|all\|dead\|unreleased\|major\|versions\?\)/
syntax match   browserslistMarketshare /\(\d*\.\)\?\d\+%/
syntax match   browserslistDate        /\(\d\{4}\(-\d\{1,2}\)\{0,2}\|years\?\)/

" for reference see
" https://github.com/browserslist/browserslist#browsers
syntax match   browserslistTarget       /\(Android\|Baidu\|BlackBerry\|bb\|Chrome\|ChromeAndroid\|and_chr\|Edge\|Electron\|Explorer\|ie\|ExplorerMobile\|ie_mob\|Firefox\|and_ff\|ff\|FirefoxAndroid\|ios_saf\|iOS\|Node\|Opera\|OperaMini\|op_mini\|OperaMobile\|op_mob\|QQAndroid\|and_qq\|Safari\|Samsung\|UCAndroid\|and_uc\|kaios\)/

hi! link browserslistComment           Comment
hi! link browserslistKeyword           Keyword
hi! link browserslistVersion           Number
hi! link browserslistMarketshare       Number
hi! link browserslistDate              Number
hi! link browserslistConfig            Include
hi! link browserslistSection           Title
hi! link browserslistTarget            Identifier
hi! link browserslistCountry           Identifier

let b:current_syntax = "browserslist"
