{ pkgs, ...}:

pkgs.python311Packages.buildPythonPackage {
  pname = "whisper-timestamped";
  version = "master";
  src = pkgs.fetchgit {
    url = "https://github.com/linto-ai/whisper-timestamped";
    rev = "a82e4d884a504625e8d6a98265272e2cb14c0901";
    sha256 = "C6DjXgLrTQTZoLeGokFXLzI+gopzf+U7qW6R2QFDgIA=";
  };
  doCheck = false;
  buildInputs = [
    pkgs.python311Packages.openai-whisper
    pkgs.python311Packages.dtw-python
  ];
  nativeBuildInputs = [
    pkgs.python311Packages.openai-whisper
    pkgs.python311Packages.dtw-python
  ];
  propagatedBuildInputs = [
    pkgs.python311Packages.openai-whisper
    pkgs.python311Packages.dtw-python
  ];
}
# https://github.com/linto-ai/whisper-timestamped/commit/a82e4d884a504625e8d6a98265272e2cb14c0901
