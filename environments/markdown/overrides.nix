final: prev: let
  addNativeBuildInputs = drvName: inputs: {
    "${drvName}" = prev.${drvName}.overridePythonAttrs (old: {
      nativeBuildInputs = (old.nativeBuildInputs or []) ++ inputs;
    });
  };
in
  {}
  // addNativeBuildInputs "mdformat-tables" [final.flit-core]
  // addNativeBuildInputs "mdformat-footnote" [final.flit-core]
  // addNativeBuildInputs "mdformat-frontmatter" [final.flit-core]
  // addNativeBuildInputs "mdformat-gfm" [final.poetry]
