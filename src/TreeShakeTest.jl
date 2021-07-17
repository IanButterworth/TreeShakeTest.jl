module TreeShakeTest

using FileIO
using CSV # unused, should be detected

function foo()
    f, io = mktemp()
    FileIO.save("$(f).png", rand(UInt8, 100, 100))
end

end # module
