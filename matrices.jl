#Rotate a matrix 90 degrees to the right and left.
#Only supports int matrices...

function r90right(mat)
    n = size(mat, 1)
    m = size(mat, 2)
    newmat = zeros(Int64, m, n)

    for x in 1:n
        for y in 1:m
            newmat[y, n - x + 1] = mat[x, y]
        end
    end

    return newmat
end

function r90left(mat)
    n = size(mat, 1)
    m = size(mat, 2)
    newmat = zeros(Int64, m, n)

    for x in 1:n
        for y in 1:m
            newmat[m - y + 1, x] = mat[x, y]
        end
    end

    return newmat
end

    
matrix = [1 2 3;4 5 6; 7 8 9]
println(r90right(matrix))
println(r90left(matrix))
    
