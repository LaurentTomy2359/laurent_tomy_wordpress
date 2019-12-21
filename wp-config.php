<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier contient les réglages de configuration suivants : réglages MySQL,
 * préfixe de table, clés secrètes, langue utilisée, et ABSPATH.
 * Vous pouvez en savoir plus à leur sujet en allant sur
 * {@link http://codex.wordpress.org/fr:Modifier_wp-config.php Modifier
 * wp-config.php}. C’est votre hébergeur qui doit vous donner vos
 * codes MySQL.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en "wp-config.php" et remplir les
 * valeurs.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define( 'DB_NAME', 'wordpress' );

/** Utilisateur de la base de données MySQL. */
define( 'DB_USER', 'root' );

/** Mot de passe de la base de données MySQL. */
define( 'DB_PASSWORD', '' );

/** Adresse de l’hébergement MySQL. */
define( 'DB_HOST', 'localhost' );

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Type de collation de la base de données.
  * N’y touchez que si vous savez ce que vous faites.
  */
define('DB_COLLATE', '');

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clefs secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'h/a3H+tykQg^xOFAod~@m;d6N0_1Vd}a-rYKP_/1S:{I]}2?|Yx5<1WWYZv]UTmG' );
define( 'SECURE_AUTH_KEY',  'cgu1:,zGs44 Eaz#.e!}XS=NdMQ;E,7(qjgsqv(nWfXT0l7U|M_WYC^iS]d+;]Rv' );
define( 'LOGGED_IN_KEY',    'TclQ{Ijd9B50:t(elkOuu7C&Ekk=BBJ0R>bgZSbWinm5 kX= vv}`kC.9:6N|eZ^' );
define( 'NONCE_KEY',        '}BBPK1AXtgtR!exg#.wPduEX`n_X1FYb@>UfL1K5nRhr2=I)R7h>?yXE}9~+@U|,' );
define( 'AUTH_SALT',        '4+FelrPEV4>gn=tL@8x+/BuBqJ/aTY*AIfKFK&zx7$L[n3a$5>9EVMCcBg6I{8qf' );
define( 'SECURE_AUTH_SALT', '0vt&R@DQO/@;0ywvJtXd=8{:|V8NfEF8zZ5.r&R>-<5>waT->zj]8a,}XR^yBafv' );
define( 'LOGGED_IN_SALT',   'wVjuN]KC]?Z81{JV55Mo,du0=CV4pYNaJZ4.Gs-5-^OpcmXg|Ow6{}{&l17nhy)T' );
define( 'NONCE_SALT',       '@-te^uccU(H+@%]]]Mt2wji-^Jp7{+Z@pg)+|pEgb&cDwvxb9mzrkjcZx0IM$yd^' );
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix = 'wp_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortemment recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* C’est tout, ne touchez pas à ce qui suit ! Bonne publication. */

/** Chemin absolu vers le dossier de WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once(ABSPATH . 'wp-settings.php');
