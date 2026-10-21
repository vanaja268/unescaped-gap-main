# CD-9488 sf:UnescapedSource — Remaining Master Checklist QA

This package contains **focused, intentionally vulnerable test cases**, plus safe negative controls. **No scans or Apex compilation have been executed**; detection expectations are hypotheses to verify against your CodeScan rule and org configuration.

## How to run
1. Push this SFDX project to a test repository; enable `sf:UnescapedSource` in the project Quality Profile.
2. Scan and record issue count and location for each class in `QA_Matrix.csv`.
3. For flagged positive cases, generate AI fixes, inspect the actual diff, compile/deploy in a test org, and run representative inputs.
4. For U13, apply first fix then rescan/rebase and apply second fix. Finally rescan all fixed files for new issues.
5. Do not mark a case failed merely because the scanner did not flag an out-of-scope source/sink. Obtain rule scope confirmation first.

## Special notes
- U05 is an API/scope probe only: `ApexPages.currentPage().getHeaders()` reads request headers; writing to this map is **not a proven response-header setter**. Treat as scope research, not a valid CRLF response-header test until the developer supplies the supported response-header API.
- U10: JavaScript string escaping is not necessarily sufficient for content inside an HTML `<script>` element. Validate actual output context.
- U12: VF `escape="true"` is a page-level safeguard. The scanner may analyze Apex and Visualforce independently; do not assume it can infer safety across files.
- U18: An exception from an invalid value in original code is not an AI-introduced regression. Evaluate any *new* conversions introduced by AI separately.
- U19 duplicates the known CSN-188 defect for reference only; do not count as a new uncovered scenario.
- ESAPI, XML, URL query encoding, and strict conversion gap cases already exist in `CD9488_Final_Gap_Validation.zip` and are deliberately not duplicated here.
- `U11` references an illustrative ResultPage. Add a real VF page if doing end-to-end navigation testing.
- The project includes no Apex test classes, and source classes are not guaranteed to compile in every org without adjustment; perform org compilation as a separate QA check.

## Input ideas
- HTML: `<img src=x onerror=alert(1)>`, empty and null inputs
- JavaScript: `";alert(1);//`, `</script><script>alert(1)</script>` (do not execute in production)
- Redirect: `/lightning/page/home`, `//evil.example`, `https://evil.example`, `javascript:alert(1)`, `/\evil.example`
- Multi-param: `p1=<b>one</b>&p2=<i>two</i>`
- Nested transforms: `id=%3Cscript%3Ealert(1)%3C%2Fscript%3E`

## Completion
Capture scan detection, AI fix generation, Apex compilation, runtime behavior, clean rescan, and whether any issue is a detector limitation, out-of-scope source/sink, or an AI Fix defect. Track CSN-188 separately.
