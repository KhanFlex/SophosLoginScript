var searchParams = new URLSearchParams();
searchParams.append('mode', '191');
searchParams.append('username', 'your-username');
searchParams.append('password', 'your-password');
searchParams.append('a', new Date().getTime());
searchParams.append('producttype', '0');

fetch("https://172.16.200.3:8090/login.xml",
{
        body: searchParams,
        method: "post",
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded'
        },
}).then(res => console.log(res))

curl \
--insecure \
--data-urlencode "mode=191" \
--data-urlencode "username=<your-username-here>" \
--data-urlencode "password=<your-password-here>" \
--data-urlencode "a=1594097133103" \
--data-urlencode "producttype=0" \
https://172.16.200.3:8090/login.xml
