<#import "parts/common.ftl" as c>
<#include "parts/security.ftl">

<@c.page>
    <h5>Hello, ${name}!</h5>
    <div>This is a simple clone of Twitter.</div>
    <div>
        Stack in this app:
    </div>
    <div>
        MVC,
        JPA Hibernate,
        Mail,
        Security,
        FlyWay,
        Freemarker,
        Bootstrap
    </div>
    <div>
        Server:
    </div>
    <div>
        Ubuntu 16, Java 8, Postgresql 11, Nginx
    </div>

</@c.page>
