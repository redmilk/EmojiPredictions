# Swift style highlights
- lowerCamelCase for vars/functions; UpperCamelCase for types.
- Use // MARK: - sections; keep files ≲300 lines.
- No force unwraps; prefer guard let / early returns.
- Prefer structs + immutable state in VMs; inject deps via init.
- Use Logger (OSLog) over print; wrap per feature.
