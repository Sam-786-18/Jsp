<%@page isELIgnored="false"%>
uname req param value::${param.uname}<br>
addrs req param value::${paramValues.addrs[0]},
                       ${paramValues.addrs[1]}<br>
uname req param value::${param.addrs}<br>
<br><br><br>
user-agent request header value::${header['user-agent']}<br>
                                  ${headerValues.accept[0]},
                                  ${headerValues.accept[1]},
<br><br>
Cookie name::${cookie.JSESSIONID.name}<br>
Cookie value::${cookie.JSESSIONID.value}<br>
<br><br><br>
context param name value::${initParam.admin}