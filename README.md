# SDML Bundle for TextMate

This [TextMate](https://macromates.com/) bundle contains a language grammar and settings for editing Simple Domain Modeling Languagre (SDML) files. 

## Installation

TextMate, and most editors that support TextMate bundles, allow the installation of bundles simply by extracting an archive or cloning the repository into the application's bundle directory. This bundle is no different. Below is a list of common bundle directories.

| Editor | Bundle Directory |
|--------+------------------|
| TextMate | `~/Library/Application Support/TextMate/Bundles` |
| Sublime Text | `~/Library/Application Support/Sublime Text/Packages/User` |

Other editors support using TextMate but not natively; for example, Intellij tools such as IDEA have instructions https://www.jetbrains.com/help/idea/textmate.html. 

## TODO

- The grammar is rudimentary at this point and does get confused with enum/union variants.
- Currently no interaction with the `sdml` command-line tool.