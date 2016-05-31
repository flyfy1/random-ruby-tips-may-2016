def fail_after_level_10(lvl)
  if lvl >= 10
    fail "reached level: #{lvl}"
  else
    fail_after_level_10(lvl + 1)
  end
end
