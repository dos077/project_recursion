def fib(n)
    return 1 if n ==0
    fib = []
    n.times do
        if fib.length < 2
            fib << 1 
        else
            fib << ( fib[-1] + fib[-2] )
        end
    end
    fib
end

def fib_rec(n, results=[1,1])
    return results.first(n) if n < 3
    fib_rec(n-1, results)
    results << (results[-1] + results[-2]) if n > 2
    results
end
