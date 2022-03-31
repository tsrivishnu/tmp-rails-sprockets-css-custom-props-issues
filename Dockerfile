FROM rubylang/ruby:2.7.4-bionic-arm64


RUN apt-get update -qq;\
    apt-get install -y build-essential \
                       pkg-config \
                       libglib2.0-dev \
                       libgtk2.0-dev \
                       libpq-dev \
                       tzdata \
                       apt-utils \
                       neovim \
                       sudo \
                       sqlite3 \
                       libsqlite3-dev \
                       lsb-release \
                       libffi-dev \
                       wget \
# added libffi-dev so we have libffi.so availablle in next step. Otherwise we get error
#  /zavvy/.bundle/ruby/2.7.0/gems/bootsnap-1.4.5/lib/bootsnap/load_path_cache/core_ext/kernel_require.rb:22:in
# `require': libffi.so.6: cannot open shared object file: No such file or directory -
# /zavvy/.bundle/ruby/2.7.0/gems/ffi-1.15.4/lib/ffi_c.so (LoadError)
                       locales; \
    rm -rf /var/lib/apt/lists/*;

