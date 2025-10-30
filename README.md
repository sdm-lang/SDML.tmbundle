# SDML Bundle for TextMate

![SDML Logo Text](https://raw.githubusercontent.com/sdm-lang/.github/main/profile/horizontal-text.svg)

This [TextMate](https://macromates.com/) bundle contains a language grammar and settings for editing [Simple Domain Modeling Language](sdml.io) (SDML) files.

A Github workflow attaches a downloadable `.tmbundle` zip file to each [release](https://github.com/sdm-lang/SDML.tmbundle/releases/).

## Features

1. Syntax highlighting based on a *tmlanguage* grammar.
2. Declarations added to the window's Symbol List.
3. Declaration and Annotation snippets.
4. (Experimental) command-line integration for diagram generation.

## Installation

TextMate, and most editors that support TextMate bundles, allow the installation of bundles simply by extracting an archive or cloning the repository into the application's bundle directory. This bundle is no different.

For TextMate, the easiest approach is the install shell script shown below. This will create a new folder in TextMate's bundle folder and clone the Github repository locally.

```bash
curl https://raw.githubusercontent.com/sdm-lang/SDML.tmbundle/main/install.sh | sh
```

Alternatively, you can download a release zip file from Github and unzip on the TextMate bundle directory.

### Intellij IDEA

JetBrains tools such as IntelliJ IDEA have instructions <https://www.jetbrains.com/help/idea/textmate.html>.

## Screenshots

The SDML bundle menu allows for the insertion of various language declarations, many of them with tab shortcuts. For example `dt` followed by the tab key will expand to a datatype declaration.

![Declaration Snippets](./images/tm-declarations.png)

Similarly a number of useful annotations can be inserted.

![Annotation Snippets](./images/tm-annotations.png)

Finally, note that the symbol list (bottom of the editor window) shows the structure of the module with types, members and variants.

![Symbol List](./images/tm-list.png)

## License(s)

The contents of this repository are made available under the following
licenses:

### Apache-2.0

> ```text
> Copyright 2023-2025 Simon Johnston <johnstonskj@gmail.com>
> 
> Licensed under the Apache License, Version 2.0 (the "License");
> you may not use this file except in compliance with the License.
> You may obtain a copy of the License at
> 
>     http://www.apache.org/licenses/LICENSE-2.0
> 
> Unless required by applicable law or agreed to in writing, software
> distributed under the License is distributed on an "AS IS" BASIS,
> WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
> See the License for the specific language governing permissions and
> limitations under the License.
> ```

See the enclosed file [LICENSE-Apache](https://github.com/sdm-lang/tree-sitter-sdml/blob/main/LICENSE-APACHE).

### MIT

> ```text
> Copyright 2023-2025 Simon Johnston <johnstonskj@gmail.com>
> 
> Permission is hereby granted, free of charge, to any person obtaining a copy
> of this software and associated documentation files (the “Software”), to deal
> in the Software without restriction, including without limitation the rights to
> use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
> the Software, and to permit persons to whom the Software is furnished to do so,
> subject to the following conditions:
> 
> The above copyright notice and this permission notice shall be included in all
> copies or substantial portions of the Software.
> 
> THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
> INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
> PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
> HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
> OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
> SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
> ```

See the enclosed file [LICENSE-MIT](https://github.com/sdm-lang/tree-sitter-sdml/blob/main/LICENSE-MIT).

### Contributions

Unless you explicitly state otherwise, any contribution intentionally submitted
for inclusion in the work by you, as defined in the Apache-2.0 license, shall
be dual licensed as above, without any additional terms or conditions.

## Changes

TBD

## TODO

- The grammar is relatively complete with the exception of formal constraints.
- Currently no interaction with the `sdml` command-line tool.
