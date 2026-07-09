# ==============================================================================
# FHTW LATEX TEMPLATE KONFIGURATION
# ==============================================================================
use Cwd;
my $pwd = getcwd();

# 1. Compiler-Setup
$pdf_mode = 4;                 # LuaLaTeX
$interaction = 'nonstopmode';  # Weiterbauen bei Fehlern
$out_dir = 'build';            # Output-Ordner

# 2. Asset-Pfade (rekursive Suche mit '//')
ensure_path('TEXINPUTS', 
    "$pwd/assets/theme//",     # Globales Theme
    "$pwd/assets//"            # Lokale Assets
);

# 3. Standard-Targets (Build mit `latexmk`)
@default_files = (
    'cheatsheet',
    'document',
    'exam',
    'exercise',
    'letter',
    'poster',
    'presentation',
    'report',
    'thesis',
);