# ME Particle Physics Beamer Template

A custom LaTeX beamer class designed specifically for particle physics presentations, featuring specialized commands for particle notation, decay chains, and statistical representations commonly used in high-energy physics.


## Installation

### Local Installation

1. Clone this repository:
```bash
git clone https://github.com/MohamedElashri/me_beamer
```

2. Copy `me_beamer.cls` to your TeX project directory or install it in your local texmf tree:
```bash
mkdir -p ~/texmf/tex/latex/me_beamer
cp me_beamer.cls ~/texmf/tex/latex/me_beamer/
```

### Overleaf Installation

1. Create a new project in Overleaf
2. Upload `me_beamer.cls` to your project
3. Use `\documentclass{me_beamer}` in your main `.tex` file

## Usage

### Basic Structure

```latex
\documentclass{me_beamer}

\title{Your Title}
\subtitle{Optional Subtitle}
\author{Your Name}
\institute{Your Institution}
\date{\today}

% Optional: Setup logos (supports up to 3 logos)
\logosetup{figures/logo1}{figures/logo2}{figures/logo3}

\begin{document}

\begin{frame}[plain]
    \titlepage
\end{frame}

% Your content here

\end{document}
```

### Particle Physics Commands

#### Charge States
```latex
\p   % Positive charge: ^+
\m   % Negative charge: ^-
\z   % Neutral: ^0
```

#### Common Particles
```latex
\ep    % e^+
\mup   % μ^+
\mum   % μ^-
\piz   % π^0
\pip   % π^+
\pim   % π^-
\Kp    % K^+
\Km    % K^-
\Kz    % K^0
\Ks    % K^0_S
\Kl    % K^0_L
```

#### B and D Mesons
```latex
\Bz    % B^0
\Bp    % B^+
\Bm    % B^-
\Bs    % B_s
\Bc    % B_c
\Dz    % D^0
\Dp    % D^+
\Dm    % D^-
\Ds    % D_s
```

#### Resonances
```latex
\jpsi           % J/ψ
\psip           % ψ(2S)
\ups{1}         % Υ(1S)
\chic{1}        % χ_c1
```

#### Decay Chains
```latex
\To             % →
\TOm{BR}        % ⟶ with text above
\TOu{BR}        % ⟶ with text below
\TOmu{top}{bot} % ⟶ with text above and below
```

#### Kinematic Variables
```latex
\pT     % Transverse momentum
\ET     % Transverse energy
\HT     % Scalar sum of transverse momenta
\MET    % Missing transverse energy
\drap   % Rapidity difference
\dphi   % Phi difference
\dR     % ΔR separation
```

#### Statistical Terms
```latex
\stat    % (stat)
\syst    % (syst)
\lumierr % (lumi)
\chidof  % χ²/d.o.f.
```

#### Cross Sections and Luminosity
```latex
\xsec    % σ
\intlumi % Integrated luminosity
\ipb     % pb^-1
\ifb     % fb^-1
\iab     % ab^-1
```

#### LHC-specific Terms
```latex
\RunOne   % Run 1
\RunTwo   % Run 2
\RunThree % Run 3
\HLLHC    % HL-LHC
```

### Code Highlighting

The template includes predefined styling for code blocks:

```latex
\begin{frame}[fragile]
    \begin{lstlisting}[language=Python]
    your_code_here()
    \end{lstlisting}
\end{frame}
```

### Backup Slides

To add backup slides that won't count in the main slide numbering:

```latex
\backupbegin
\begin{frame}
    % Your backup content
\end{frame}
\backupend
```

## Example

See `main.tex` for a complete example presentation. Note that the example uses logo files (`figures/cincinnati-logo.png`, `figures/lhcb-logo.png`, `figures/cern-logo.png`) which are copyrighted to their respective organizations and not included in this repository. Please replace them with your own institution's logos and place them in the `figures/` directory.

All figures used in your presentation should be placed in the `figures/` directory. The template is configured to look for images in this location by default, so you can reference them in your LaTeX code without the `figures/` prefix:

```latex
\includegraphics{your-image}  % Will look for figures/your-image.png
```

## License

This template is licensed under the GNU General Public License v3.0 - see the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

