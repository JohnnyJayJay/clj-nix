{ common
, leiningen
, jdk
, jq
}:

common.writeCljApplication {
  name = "deps-lock";
  runtimeInputs = [ jq leiningen ];
  clj-main = "cljnix.core";
  classpath = "${../src}:${common.internal-deps-classpath}";

  java-opts = [ ];
  preBuild = "";
  postBuild = "";
}
