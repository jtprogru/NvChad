return {
  diagnostics_postprocess = function(diagnostic)
    diagnostic.code = diagnostic.message_id
  end,
}

