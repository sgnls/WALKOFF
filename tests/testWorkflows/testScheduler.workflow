<?xml version="1.0"?>
<workflow name="helloWorldWorkflow">
    <options>
        <enabled>true</enabled>
        <scheduler type="cron" autorun="true">
            <month>1-2</month>
            <day>*</day>
            <hour>*</hour>
            <second>*/3</second>
        </scheduler>
    </options>
    <steps>
        <step id="start">
            <action>repeatBackToMe</action>
            <app>HelloWorld</app>
            <device>hwTest</device>
            <input>
                <call format="string">Hello World</call>
            </input>
            <next step="1">
                <flag action="regMatch">
                    <args>
                        <regex format="regex">(.*)</regex>
                    </args>
                    <filters>
                        <filter action="length">
                            <args></args>
                        </filter>
                    </filters>
                </flag>
            </next>
            <error step="1"></error>
        </step>
    </steps>
</workflow>
