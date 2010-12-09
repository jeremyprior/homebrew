require 'formula'

class Cvs2cl <Formula
  url 'http://www.red-bean.com/cvs2cl/cvs2cl.pl'
  homepage 'http://www.red-bean.com/cvs2cl/'
  md5 'aee08b00c456501f3ed5750029b3a967'
  version "2.72"
  
  def install
    system 'pod2man', 'cvs2cl.pl', 'cvs2cl.1'
    bin.install 'cvs2cl.pl' => 'cvs2cl'
    man1.install gzip('cvs2cl.1')
  end
end
