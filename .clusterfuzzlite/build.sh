make -j$(nproc) all    # Build the fuzz targets.

# Copy the fuzzer executables, zip-ed corpora, option and dictionary files to $OUT
find . -name '*_fuzzer' -exec cp -v '{}' $OUT ';'
find . -name '*_fuzzer.dict' -exec cp -v '{}' $OUT ';'     # If you have dictionaries.
find . -name '*_fuzzer.options' -exec cp -v '{}' $OUT ';'  # If you have custom options.