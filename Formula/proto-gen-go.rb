class ProtoGenGo < Formula
  desc "proto-gen-go v1.0.0"
  homepage "https://github.com/starccck/proto"
  url "https://github.com/golang/protobuf/archive/refs/tags/v1.0.0.tar.gz"
  version "1.0.0"
  sha256 "378eb25acba0056bdf1011f20e3df7a139d3372306df09949011e5642b739cb1"
  license "MIT"

  #depends_on "cmake" => :build
  depends_on "go" => :build
  depends_on "protobuf" => :build

  def install
    gopath = ENV["GOPATH"]
    Dir.chdir("#{gopath}") do
      system "go get github.com/golang/protobuf/protoc-gen-go@v1.0.0"
    end

    bin.install File.join("#{gopath}", "/bin/protoc-gen-go") => "protoc-gen-go"
  end

end
