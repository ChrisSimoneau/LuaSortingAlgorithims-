-- create a table filled with random numbers
local array = {}
for i = 1, 10 do
    array[i] = math.random(1, 100)
end

--helper function
function swap(a, b, table)

    if table[a] == nil or table[b] == nil then
        return false
    end

    if table[a] > table[b] then
        table[a], table[b] = table[b], table[a]
        return true
    end

    return false

end


function bubblesort(array)

    for i=1,table.maxn(array) do

        local j = i
        ::swap::
        if swap(j, j+1, array) then
            j = j - 1
            goto swap
        end
    end
end

bubblesort(array)

--print the sorted table
for i, j in pairs(array) do
    print(i, " ", j)
end