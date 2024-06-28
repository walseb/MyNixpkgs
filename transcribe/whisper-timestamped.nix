{ pkg-s, ...}:
{
  home.packages = with pkg-s; [
    openai-whisper
    (python311Packages.buildPythonPackage rec {
      pname = "whisper-timestamped";
      version = "master";
      src = fetchGit {
        url = "https://github.com/linto-ai/whisper-timestamped";
        rev = "a82e4d884a504625e8d6a98265272e2cb14c0901";
        # rev = "a0b86f283336256156f552842d5a99c5101a157a";
      };
      doCheck = false;
      buildInputs = [
        pkg-s.python3Packages.openai-whisper 
        pkg-s.python311Packages.dtw-python
      ];
      nativeBuildInputs = [
        pkg-s.python3Packages.openai-whisper 
        pkg-s.python311Packages.dtw-python
      ];
      propagatedBuildInputs = [
        pkg-s.python3Packages.openai-whisper 
        pkg-s.python311Packages.dtw-python
      ];
    })
  ];
}
  # https://github.com/linto-ai/whisper-timestamped/commit/a82e4d884a504625e8d6a98265272e2cb14c0901
