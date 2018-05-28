# Documentation: https://docs.brew.sh/Formula-Cookbook
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Tsdivider < Formula
  desc "Dividing TS files as tssplitter"
  homepage ""
  url "https://github.com/range3/tsdivider/archive/v0.3.1.tar.gz"
  sha256 "82aad9b55cc65bad2bb450b279a9cb698a8d95ed38b6a2c475ce96d13daa1db1"
  head "https://github.com/range3/tsdivider.git"
  depends_on "cmake" => :build
  depends_on "boost"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "cmake", ".", *std_cmake_args
    system "make", "install" # if this fails, try separate make/make install steps
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test tsdivider`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
