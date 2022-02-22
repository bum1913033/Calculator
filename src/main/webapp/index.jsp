<%@ page isELIgnored="false" %>
<%@include file="fragment/header.jsp"%>

<div class="container">
    <form name="calc" action="calculate" method="post">
        <div id="container">
            <div id="calculator">
                <div id="result">
                    <div id="output">
                        <input class="output" id="output-value" readonly name="screen" value="${result}">
                    </div>
                </div>
                <div id="keyboard">
                    <button class="operator" type="button" onclick="calc.screen.value=''" id="clear">C</button>
                    <button class="operator" type="button" onclick="calc.screen.value=''" id="backspace">CE</button>
                    <button class="operator" type="button" id="%">%</button>
                    <button class="operator" type="button" onclick="calc.screen.value+='/'" id="/">&#247;</button>
                    <button class="number" type="button" onclick="calc.screen.value+='7'" id="7">7</button>
                    <button class="number" type="button" onclick="calc.screen.value+='8'" id="8">8</button>
                    <button class="number" type="button" onclick="calc.screen.value+='9'" id="9">9</button>
                    <button class="operator" type="button" onclick="calc.screen.value+='*'" id="*">&times;</button>
                    <button class="number" type="button" onclick="calc.screen.value+='4'" id="4">4</button>
                    <button class="number" type="button" onclick="calc.screen.value+='5'" id="5">5</button>
                    <button class="number" type="button" onclick="calc.screen.value+='6'" id="6">6</button>
                    <button class="operator" type="button" onclick="calc.screen.value+='-'" id="-">-</button>
                    <button class="number" type="button" onclick="calc.screen.value+='1'" id="1">1</button>
                    <button class="number" type="button" onclick="calc.screen.value+='2'" id="2">2</button>
                    <button class="number" type="button" onclick="calc.screen.value+='3'" id="3">3</button>
                    <button class="operator" type="button" onclick="calc.screen.value+='+'" id="+">+</button>
                    <button class="number" type="button" onclick="calc.screen.value+='00'" id="00">00</button>
                    <button class="number" type="button" onclick="calc.screen.value+='0'" id="0">0</button>
                    <button class="number" type="button" onclick="calc.screen.value+='.'" id=".">.</button>
                    <button class="operator" type="submit" id="=">=</button>
                </div>
            </div>
        </div>
    </form>
</div>

<%@include file="fragment/footer.jsp"%>