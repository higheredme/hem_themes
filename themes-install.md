Openbox

permet de modifier l'extérieur des fenêtres (cadres)

pendant une installation préliminaire du thème "lessr" par un fichier obt avec obconf,
le thème a été installé dans  ~/.themes

De la,
 les fichiers themerc qui définit le theme peut être récupérer dans  les sous-répertoires :
 Lessr-*/openbox-3, il y a un thème pour chaque couleur, 12 en tout.

Par déduction es thèmes openbox seront donc installés dans  ~/.themes/Nom-du-theme/openbox-3

Pour sélectionner un thème comme thème de l'OS il va falloir aller modifier le fichier  ~/config/openbox/lubuntu- rc.xml 

Possibilité d'utiliser  /etc/xdg/openbox/lubuntu-rc.xml dans ce cas là le thème sera installé pour tous les utilisateurs

Attention  modifier le fichier rc.xml ne fait rien sous lubuntu.

changer le nom  du noeud <theme><name>
 on reload openbox ---reconfigure

GTK 

configurateur d'interface ( intérieur des fenêtres)

Les thèmes gtk sont également installés dans .themes
souvent les themes custom contiennent à la fois des thèmes d'interface "GTK" et de cadres de fenêtres "openbox"
Pour adopter un thème GTK  on modifie le fichier de configuration de gtk3 ( ou 2) pour donner le nom de thème voulu
Pour l'instant on doit redémarrer / changer l'utilisateur pour reloader le thème gtk

Tint2 -> Lxpanel

générateur de barre de tâche

finalement compliqué car ne génère pas de bouton "démarrer" par défaut on devrait rester sur lxpanel

* Pour remplace la barre de tâches remplacer le fichier /home/user/.config/lxpanel/Lubuntu/panels/panel par le fichier panel du repo
* recharger lxpanel:  sudo /etc/init.d/lightdm.restart

Thèmes d'icones:

installer dans ~/.icons et, en mode graphique,  sélectionner dans lxappearance.
En mode console il faut éditer le fichier ~/.config/lxsession/Lubuntu
la ligne 91 sNet/IconThemeName=Super Flat Remix

Wallpaper:

ouvrir:  ~/.config/pcmanfm/lubuntu/desktop-items-0.conf
modifier la ligne 5 wallpaper par wallpaper=chemin/absolu/nomfichier.jpg
eventuellement modifier la ligne 2 wallpaper_mode=stretch par le mode voulu
