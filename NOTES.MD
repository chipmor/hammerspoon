1. How to load spoons
<!--
    - spoon = require('<spoonName>')

    -
        - hs.loadSpoon('<spoonName>')
        - spoon = spoon.<spoonName>
-->

2. Info
<!--
`hs` is a module (library)
    -has objects to interact with (hs.alert)

Print docs to console
print(hs.doc.help("hs.alert"))

print(hs.doc.hs.alert)

local doc = hs.doc
print(doc)
print(doc.lua)
print(doc.hs)
print(doc.spoon)
-->

3. hotkey binding
<!--
hs.hotkey.bind(superKey, "<key>",
    function()

    end
)
-->

4. Lua Syntax
<!-- 
Loops:

while( true )
do
print("This loop will run forever.")
end

for i = 96, 122 do
print(string.char(i))
end

for k,v in pairs(t) do body end
will iterate over all key–value pairs of table t.

Conditionals:

if( boolean_expression 1)
then
--[ Executes when the boolean expression 1 is true --]
if(boolean_expression 2)
then
--[ Executes when the boolean expression 2 is true --]
end
end

Functions:

function <function_name>( arg1, arg2)

    return

end
--> 5. Debugging

<!--
Print Stuff
hs.inspect(variable)
hs.inspect.inspect(variable[, options])
hs.inspect.inspect(variable, {
    depth={3},

})

 -->

6. Links

<!--
Docs:
-
- https://www.hammerspoon.org/docs/hs
- http://www.lua.org/manual/5.3/contents.html#index
-

URLS:
    - Lua Quickstart:
        - https://learnxinyminutes.com/docs/lua/
    - Example Repos:
        - https://github.com/peterklijn/hammerspoon-shiftit#step-3


 -->
