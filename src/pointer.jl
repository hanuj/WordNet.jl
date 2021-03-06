struct Pointer
    sym::AbstractString
    offset::UInt32
    pos::Char
    source::AbstractString
    target::AbstractString
end

Pointer(sym, offset, pos, source) = Pointer(
    sym, offset, pos, source[1:2], source[3:4]
)

is_semantic(ptr::Pointer) = ptr.source == "00" && ptr.target == "00"
