#Rotate a matrix 90 degrees to the right and left.
#Only supports int matrices...

function r90right(matrix)
    n = size(matrix, 1)
    m = size(matrix, 2)
    rotated_matrix = zeros(Int64, m, n)

    for x in 1:n
        for y in 1:m
            rotated_matrix[y, n - x + 1] = matrix[x, y]
        end
    end

    return rotated_matrix
end

function r90left(matrix)
    n = size(matrix, 1)
    m = size(matrix, 2)
    rotated_matrix = zeros(Int64, m, n)

    for x in 1:n
        for y in 1:m
            rotated_matrix[m - y + 1, x] = matrix[x, y]
        end
    end

    return rotated_matrix
end

    
matrix = [1 2 3;4 5 6; 7 8 9]
println(r90right(matrix))
println(r90left(matrix))
    
