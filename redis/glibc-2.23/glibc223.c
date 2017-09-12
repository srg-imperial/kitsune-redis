unsigned int __builtin_bswap32 (unsigned int i) {
    // This hack is needed because CIL does not know about function __builtin_bswap32
    // This function is built-in GCC and treated specially, compiled to an intrinsic (bswap instruction)
    // This function tells CIL how to implement it
    // Luckily, GCC replaces the body by the intrinsic and this does not result in an infinite loop
    return __builtin_bswap32(i);
}
