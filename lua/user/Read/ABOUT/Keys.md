====================================================================================
General Info:
====================================================================================

The Keymappings for General use
The Leader (default) : Space Bar or Space Key 
The Leader (secondary) : Check out Basics/options.lua

====================================================================================
NOTES : 
====================================================================================
NOTE: (!) Means Do not try to use randomly
NOTE: ( ) No Markings mean Safe to Use
NOTE: (F!) Safe to use but need Fix 
NOTE: (?) Safe to use but need Fix 
NOTE: (!!) Safe to use and is excillent
NOTE: [x s] After x seconds/automated
NOTE: (x) Depreceated or Not for work or Deleted or Under Maintainance. 

====================================================================================
The Default Leader ones :
====================================================================================


==============
# B Mappings
==============
bs ==> Save/Write current buffer ()
bi ==> Toggle Indent Blank Lines -- Ideal for focused people & for big projects () 

ba ==> Delete Other Buffers except Current one (!)
bc + Space/Esc/Char-Key ==> Does random Deletion (x)
bc + Buffer Token  ==> Delets the chosen buffer (!)
bo ==> Close Other inactive buffers (!)(x) -- Works well but need to use :wqall or :q! :qall depending on desire !
bd ==> Delete current buffer -- Best for Nvim Docs but Sometimes may need to force save & quit all or force quit all (!)

bn ==> Move to next buffer -- Ideal for 2-5 Buffers ()
bp ==> Move to previous buffer -- Ideal for 2-5 Buffers ()
bh ==> Move BufferLine active buffer a step back -- Ideal for Management ()
bl ==> Move to the newest opened buffer ()
bL ==> Delete all buffers to the Left most --Works only when you are at the Rightmost buffer of the buffer line + Needs to do Force Save or Force quit for all  (!)

bR ==> Same as bL but totally oposite of bR (!)
bw ==> Same as bd (!)
bx ==> Same as bd (!)

==============
# C Mappings
==============
ca ==> For CODE ACTIONS -- Idk the use ()
cr ==> For RELOADING OPENED BUFFERS -- Can temprarily ruin ui colors ()
cR ==> For LSP RESTART -- works well ()
cu ==> For PLUGIN UPDATING ()
cU ==> For PLUGIN UPDATIBG BUT WAIT ()
cP ==> For Loading Lazy.nvim Profile ()
cp ==> For Loading Lazy.nvim ()
ck ==> For Keymappings search -- Depreceated Instead do :map  (x)
cw ==> For :pwd :!pwd or To Know Current Dir of Active Buffer ()

==============
# D Mappings
==============

D ==> Delete words at the From the cursor position on Current line Rightmost of Current Line (!)
d + space ==> Move by one character
dD ==> Delete the character undercursor & everyting after it on same line (!)
dt ==> Toggle Trouble.nvim or see Diagonastic Report given by LSP ()
dn ==> Jump Between Diagonastic Lines in the Editor -- Best for Coders ()
dp ==> Jump to Previous Diagonastic -- Best for Coders ()
dr ==> Opens Trouble.nvim for Diagonastic Report but need dt or q to close ()

Tip : While using Trouble.nvim and cursor is inside Trouble do Esc to focus on Editor.

dc ==> For Dap configuration or Soemthing (x)
de ==> IDK (x)
di ==> IDk (x)
du ==> IDK and It does crashes Keymappings (x)
db ==> For Buffer Diagonastic -- Instead use dt (x)
dw ==> Better use dt or dr (x)

==============
# E Mappings
==============

e ==> Nvim Tree ()

TIP : Keep e be Reserved for :NvimTreeToggle 
USE : :h nvim-tree or Read from Below !
CREDIT : nvim-tree Plugins & Makers !
NOTE : These will only work inside nvim-tree !!!!!
  ==============================================================================
   2.2 QUICKSTART: HELP                              nvim-tree-quickstart-help

  Open the tree:  :NvimTreeOpen

  Show the mappings:  g?

  <C-]>           CD                         
  <C-e>           Open: In Place             
  <C-k>           Info                  
  <C-r>           Rename: Omit Filename     
  <C-t>           Open: New Tab             
  <C-v>           Open: Vertical Split       
  <C-x>           Open: Horizontal Split       
  <BS>            Close Directory              
  <CR>            Open                         
  <Tab>           Open Preview               
  >               Next Sibling                 
  <               Previous Sibling             
  .               Run Command                  
  -               Up
  a               Create File Or Directo
  bd              Delete Bookmarked          
  bt              Trash Bookmarked             
  bmv             Move Bookmarked
  B               Toggle Filter: No Buffer
  c               Copy                         
  C               Toggle Filter: Git Clean
  [c              Prev Git                     
  ]c              Next Git                     
  d               Delete                    
  D               Trash                     
  E               Expand All
  e               Rename: Basename           
  ]e              Next Diagnostic
  [e              Prev Diagnostic
  F               Live Filter: Clear
  f               Live Filter: Start           
  g?              Help                         
  gy              Copy Absolute Path           
  ge              Copy Basename                
  H               Toggle Filter: Dotfiles
  I               Toggle Filter: Git Ignore
  J               Last Sibling                 
  K               First Sibling                
  L               Toggle Group Empty           
  M               Toggle Filter: No Bookmark
  m               Toggle Bookmark              
  o               Open     
  O               Open: No Window Picker   tree-ap
  p               Paste
  P               Parent Directory
  q               Close 
  r               Rename 
  R               Refresh                      
  s               Run System                   
  S               Search                      
  u               Rename: Full Path           
  U               Toggle Filter: Hidden      
  W               Collapse All               
  x               Cut                
  y               Copy Name                  
  Y               Copy Relative Path         
  <2-LeftMouse>   Open                       
  <2-RightMouse>  CD                         

==============
# F Mappings
==============
fa ==> Find autocommands ()
fb ==> Find buffer ()
fe ==> File Browser ()
ff ==> Show files ()
fk ==> Find Keymappings ()
fm ==> Maximise current divide ()
fr ==> Show Recent opened Files for all active/inactive buffers ()
ft ==> Show available Themes/Also use :SGT or :colorscheme to set thene ()
fhc ==> Show Command History (!!)
fhs ==> Show Search History (!!)
fg ==> Better Grep but too powerful (!!)
fG ==> Grep all (!!)


==============
# G Mappings
==============
gB ==> Snipe Show Buffer List (!!)
gD ==> Deletes buffer interactovely (x)
gg ==> Lazy Git (!!)

==============
# H mappings
==============
hc ==> Show Commands (x)
hk ==> Show Keymappings (x)
hh ==> Show Help Tag (!!)
hm ==> Show Man Pages (?)

==============
# L mappings
==============
la ==> (x) 
lc ==> (x)
lf ==> Lazy Plugins ()
lg ==> Lazy Grep ()
li ==> LspInfo ()

==============
# M mappings
==============
mm ==> Open Message Box ()
mc ==> Clear Message Box ()
me ==> Show noice based Error History ()
my ==> Yank Whoke File (!!)
mpa ==> Paste after cursor ()
mpb ==> Paste Before cursor ()

==============
# N mappings
==============
ne ==> Show Where is the current buffer in Nvim Tree -- Use only in Editor nit insude Nvim Tree (!!)
nf ==> Create a new file ready to be Renamed (!!)
nh ==> Noice message History ()
nt ==> Open noice histiry in telescope.nvim ()

==============
# O Mappings
==============

==============
# P Mappings
==============

==============
# Q Mappings
==============

qa ==> Quit + all (!!)
qf ==> Quit + Force (!!)
qF ==> Quit + Force All (!!)
qq ==> Quit (!!)
qw ==> Quit + Save (!!)
qW ==> Quit + Save + all (!!)

==============
# R Mappings
==============
// These may leave temporarily marks can be removed via qw + reload or do use uh leader

rn (x)
re (x)
ra ==> Replaace a Word in while File to Some words interctively (!!)
rr ==> Replace a word to some words in a given line number range interctively (!!)
rm ==> Match a word ranking on multiple lines & add your desired word to replace & add desired word and see magic (!!)

==============
# S Mappings
==============

ss ==> Save current Project/Session () [60 s]
sf ==> Pick saved Project/Sessions ()
si ==> Shows Info of Active Session ()
sl ==> Just reload the last saved & the last active session ()
sd ==> Delete Session (!)
sr ==> Show Recent active files / Instead use fr -- Fine but ui is Old (x)
sk ==> Show The Keys I am Pressing in a popup () 
sn ==> Show Messages () -- Works well but will show only Important ones!

==============
# T Mappings
==============

==============
# U Mappings
==============
uc ==> Toggle Cursor Line ()
un ==> Toggle Line Number ()
ur ==> Toggle Relative Line Number ()
uh ==> Toggles Highlighing ()
us ==> Toggles Spell Check ()
uw ==> Toggle Word Wrap ()

==============
# W Mappings
==============
wh ==> Find Yourself (x)
wj ==> Find Yourself (x)
wk ==> Find Yourself (x)
wl ==> Find Yourself (x)

wo ==> Close other window ()
wq ==> Close current window ()
ws ==> Splits window down (x)
ws ==> Splits window right (x)
w= ==> Equalise Window (x)

==============
# X Mappings
==============

==============
# Y Mappings
==============
ya ==> Yank all ()
yp ==> Yank file path ()
yf ==> Yank File name ()

==============
# Z Mappings
==============

=================================
To Be Deleted (Default Leader) : 
=================================
bP (x)
bk (x)
Sv (x)
Sr (x)
Ss (x)
cf (x)
cg (x)
dl (x)
fu (x)
fw (x)
fz (x)
f. (x)
gS1 (x)
gS2 (x)
gS3 (x)
gS4 (x)
la (x)
lc (x)
ld (x)
lr (x)
lw (x)
mn (x)
nd (x)
nl (x)
pr (x)
ps (x)
tt (x)
td (x)
ts (x)
tq (x)
tl (x)
ul (x)
f_ ==> Useless Format the File (x)
fc ==> Find Commands (x)
fB ==> Same as fb (x)
fF ==> (x)


=================================
To Be Found (Default Leader) : 
=================================
dB

===================================
Are Free to Use (Default Leader) :
===================================

Note : Don't go for e x X q Q i I o O P " ' * @ 0-9 like Important series !
READ : {} Means can be used but do use which key for refrence
READ : {✓} Means full series

A-Z - Most Series are {✓}
a-z - Most series are {} and soem are better bot to be used !
