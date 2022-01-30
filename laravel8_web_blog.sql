-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2022 at 12:33 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel8_web_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2022-01-29 23:21:44', '2022-01-29 23:21:44'),
(2, 'Web Design', 'web-design', '2022-01-29 23:21:45', '2022-01-29 23:21:45'),
(3, 'Personal', 'personal', '2022-01-29 23:21:45', '2022-01-29 23:21:45');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_20_103629_create_posts_table', 1),
(6, '2021_12_20_122413_create_categories_table', 1),
(7, '2022_01_30_111200_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Voluptatibus incidunt odio mollitia.', 'quod-est-qui-aut-quas-ipsam', NULL, 'Ex est animi minus voluptas impedit nihil. Consequuntur soluta qui ea tempora. Vel voluptate porro vitae voluptatem dolor et.', '<p>Omnis voluptas facere voluptate debitis ipsum ad natus. Hic nulla autem aut ut omnis et in. Cumque tempore iste sit et. Nihil veritatis nesciunt velit.</p><p>Quis odit alias odio sit at occaecati dignissimos. Sed omnis aperiam ratione quis assumenda sed est. Excepturi quaerat dolor omnis est occaecati.</p><p>Cum voluptatem cum ex dolorem placeat fugiat. Ratione suscipit enim eos velit rerum.</p><p>Blanditiis aliquid laborum dolorem provident consectetur rem a. Corporis aut voluptates illo quo beatae debitis laborum facilis. Inventore aliquid aut aut sit qui aut est. Laboriosam veritatis perferendis fugit quibusdam aut voluptas.</p><p>Commodi id quia error ratione nobis laboriosam. Praesentium quam est corrupti autem sit. Consequatur nisi iusto quis sapiente. Modi mollitia inventore est odio. Est temporibus et esse molestiae voluptas.</p><p>Fuga accusantium sint hic repellat. Voluptatem assumenda et inventore voluptas. Doloremque odio voluptas quo nemo nemo eaque atque quos. Et nesciunt porro et at praesentium et dicta.</p><p>Autem doloribus porro tenetur rerum error perspiciatis cumque. In minima aut laudantium dolor sunt. Et vitae eligendi non repudiandae. Debitis at omnis debitis commodi illo nihil.</p><p>Velit sunt itaque impedit labore. Quaerat aut optio nihil pariatur qui omnis. Dolor modi et aperiam totam aspernatur nihil suscipit. Aut laudantium error quod est voluptates eos incidunt.</p><p>Enim ut reprehenderit id quis rerum iste laudantium. Rerum officiis nobis itaque officiis eligendi at quam. Velit nobis excepturi facilis. Consectetur minus enim perspiciatis eum.</p><p>Aspernatur quisquam distinctio impedit. Blanditiis sapiente hic non rerum ipsum dolorum. Est odio quia expedita aliquid similique explicabo at esse. Aut sint possimus quia.</p><p>Qui quam numquam soluta assumenda numquam. Nam voluptatem consequatur aliquam aut enim quas eum.</p><p>Atque porro iure autem eligendi fugit modi illum. Illo reiciendis deleniti voluptas. Eaque delectus voluptatem corrupti nesciunt natus. Odio quis fugit voluptatibus eius aut.</p><p>Commodi ut assumenda sunt consequatur repudiandae sapiente sed saepe. Magnam molestiae fuga qui suscipit ullam dicta rerum veritatis. Et neque consectetur quas vel alias praesentium doloribus. Quia officiis atque deserunt asperiores similique repudiandae nam.</p><p>Tempore sit voluptas nulla vitae. Qui labore vitae ea autem.</p>', NULL, '2022-01-29 23:21:45', '2022-01-29 23:21:45'),
(2, 2, 3, 'Incidunt exercitationem dolore neque nostrum ullam quia iste.', 'non-beatae-nemo-magni', NULL, 'Omnis consequatur non rem voluptatem incidunt. Fugit consequatur enim in quas animi quam. Provident repellendus temporibus natus sapiente. Corrupti unde et cumque et.', '<p>Explicabo doloribus illo in dignissimos. Aut itaque dolor consequuntur dolorum qui. Et qui corrupti ratione sit magnam doloribus voluptatem vitae.</p><p>Repudiandae iure iste quia ratione accusantium tempore et. Voluptatem placeat sed ipsum.</p><p>Quaerat cumque aut aut sint. Repudiandae commodi voluptas sapiente voluptatibus sit perspiciatis. Autem nisi distinctio molestiae nostrum animi.</p><p>Molestias ullam aliquid illo dolores omnis. Eum quia repellendus et voluptatem. Praesentium delectus et commodi eum quam. Sunt molestiae in perferendis tenetur ut.</p><p>Quod fugiat iure aspernatur. Non nam assumenda voluptatem ab. Doloribus ut hic sit repellendus. Aut ex atque nostrum alias.</p><p>Repudiandae neque dignissimos magni similique voluptas ab. Laudantium dolorem inventore ab et exercitationem. Dolor suscipit itaque qui nisi.</p><p>Modi aspernatur eos sed quis quis quo et. Omnis esse enim occaecati quis. Aliquid sed voluptate perferendis doloribus laborum velit iste.</p><p>Ratione est consequatur est nostrum dolor amet. Facilis eius dolorem est fugit eligendi consequatur quod ut. Nihil exercitationem alias officiis error illo ab.</p><p>Ad sequi et qui nihil quia reiciendis ullam. Sit ut ut esse quo aut. Quidem laborum dolor ut sunt perferendis perferendis neque et. Ipsam id distinctio quo sequi.</p>', NULL, '2022-01-29 23:21:45', '2022-01-29 23:21:45'),
(3, 2, 3, 'Eligendi quia optio soluta.', 'ut-minima-quam-ullam-maxime-deserunt-quidem-minima', NULL, 'Dicta quis delectus tenetur ut. Quibusdam atque facere esse voluptatibus molestiae nostrum sed. Quo rerum fugiat earum distinctio ut.', '<p>Sit beatae quos eos accusamus voluptatibus dicta. Blanditiis possimus error odio adipisci doloremque. Sint ab rem itaque velit et quidem.</p><p>Quidem molestiae tempora sapiente error repellendus corporis facilis. Eligendi neque aut eveniet blanditiis. Ab possimus vero nisi iure voluptates et. Quia recusandae aspernatur reprehenderit facere odit nostrum ea.</p><p>Ad maiores amet qui placeat voluptatem quis. Ducimus perferendis consequatur vero unde autem et accusantium. Consequatur dolorum et accusantium vel. Nostrum dolores numquam assumenda aperiam.</p><p>Asperiores consequatur dolor repellendus molestiae. Voluptatem qui consequatur consectetur fuga voluptatum quia provident. Et vitae harum ex sit excepturi cupiditate doloribus temporibus. Sint voluptatem non fugiat inventore sit saepe id.</p><p>Consequatur qui ea exercitationem ducimus est non amet. Eligendi nemo rerum magni mollitia ad voluptates. Dolores itaque rerum quia eum aut voluptas recusandae.</p><p>Vitae veniam voluptatem aut. Quia nostrum quasi doloremque debitis quibusdam. Alias ipsum doloribus rerum earum.</p><p>Aut nemo velit et iste enim. Quod et omnis ut beatae iste vitae quisquam. Omnis velit molestias veritatis in explicabo.</p>', NULL, '2022-01-29 23:21:45', '2022-01-29 23:21:45'),
(4, 2, 2, 'Corrupti earum voluptatem expedita dignissimos beatae libero nobis aliquid.', 'non-iure-perferendis-qui', NULL, 'Est inventore in excepturi tenetur in. Non voluptates libero qui enim possimus numquam. Perspiciatis aperiam esse odio accusamus et delectus tenetur et. Sunt consequatur fugit animi quia.', '<p>Aut omnis voluptatum alias aut. Voluptas quasi hic molestias consequatur rem et sit numquam. Et quia pariatur voluptates et repellendus exercitationem velit.</p><p>Voluptas nulla omnis id in dolore. Facere ratione cumque cum neque tenetur repellat eum. Aspernatur est veniam aliquam tempore debitis. Blanditiis cumque possimus aliquid eius architecto.</p><p>Consequatur aspernatur ab reprehenderit et distinctio dicta quam. Beatae veritatis cum voluptatibus laborum. Adipisci corrupti quis sit voluptatem id rerum rerum.</p><p>Assumenda consequatur voluptas iusto sunt et et. Et architecto mollitia harum iusto in doloremque. Asperiores et esse amet. Harum qui modi molestiae rerum explicabo itaque vitae numquam.</p><p>Eveniet dolorem repellendus unde pariatur expedita necessitatibus. At harum cumque eum perspiciatis voluptate et. Eveniet repudiandae impedit consequuntur ratione et sint blanditiis sunt.</p><p>Et deserunt enim quod sunt esse mollitia et nobis. Velit exercitationem aut enim vero adipisci. Ad error ipsam enim molestiae atque eos repellat. Possimus qui sed explicabo consequatur expedita.</p><p>Laboriosam ea enim minus iure dolor rerum. Ut temporibus possimus quos eius sed minima esse. Dolorem eveniet maiores sed.</p><p>Doloribus minus aut nemo eligendi. Nihil nihil ipsum libero quo nihil delectus reiciendis. Illo blanditiis totam ullam et quos placeat quos. Delectus praesentium minima error.</p><p>Quia tempore animi esse nemo consequatur. Molestiae alias occaecati eos. Et quasi in veritatis doloremque sit aut.</p><p>Non in dolor accusamus recusandae repudiandae. Nisi velit aut esse praesentium. Amet quo consequuntur corrupti. Voluptatem dolor ipsam et accusamus expedita non.</p><p>Architecto fugiat quis debitis ex. Ut voluptatum dignissimos illum. Deleniti repellendus blanditiis est soluta ad vel. Quia quos qui magni.</p><p>Magni sit ducimus modi nesciunt voluptate voluptatem amet. Itaque molestiae ipsum molestiae sit quia rem. Similique deleniti ullam non.</p><p>Quibusdam velit nobis est velit ratione voluptas atque non. Quis aliquid laborum ut nobis. Voluptas fugiat velit ea voluptas velit.</p><p>Cum corporis est rerum earum quia similique vitae. Exercitationem dolorem ab quam in tempore id. Est aut dolores voluptates animi ipsa eum. Ut in officia est adipisci ratione ut dolorem fugiat.</p><p>Ab beatae natus esse et dolorem. Praesentium repellendus voluptates sint dolorum excepturi sit.</p>', NULL, '2022-01-29 23:21:45', '2022-01-29 23:21:45'),
(5, 2, 1, 'Nisi eligendi veritatis sit delectus recusandae molestiae dolorum.', 'quos-possimus-consequatur-est', NULL, 'Labore praesentium vitae eveniet voluptatem ex eum et. In in ipsum delectus aut impedit et ad fuga. A amet ut consequatur ex. Aut et nam culpa doloribus.', '<p>Eum enim eum qui quos molestiae amet dolore incidunt. Iure eum quas est possimus deserunt aliquid deserunt enim. In enim vitae est dolorem quasi et perspiciatis. Ut eaque error voluptas odio commodi quae.</p><p>Illum nesciunt voluptas quas qui voluptatibus voluptatum corporis. Natus vel dolores quis alias quae doloribus voluptates. Dicta quibusdam fugiat autem et molestias sit blanditiis. Esse modi non blanditiis atque.</p><p>Voluptatem deserunt et aut voluptatem eum. Unde eum a possimus aliquid libero illum. Reprehenderit possimus sint qui. Hic itaque cupiditate vel et asperiores molestiae.</p><p>Ex ut necessitatibus saepe omnis mollitia recusandae. Saepe est illo et nesciunt porro rerum. Debitis itaque neque expedita aliquam.</p><p>Sequi veritatis esse voluptas aspernatur maiores. Recusandae reiciendis assumenda in ullam consequuntur. Ipsa id quis tenetur sint odio ullam sint aut.</p><p>Quia velit ipsa quasi expedita alias et odit. Dignissimos culpa totam occaecati autem. Architecto tempore beatae facilis et harum et officiis. Ab velit ut ab quia et labore saepe.</p><p>Dicta mollitia quas at illo a consequuntur sit. Culpa tenetur quia numquam esse velit. Tenetur ut voluptas fuga sed. Amet quos quidem dolorum excepturi. Quia similique velit voluptatibus officia expedita.</p><p>Non placeat et optio quas. Harum molestiae distinctio sit id qui eligendi et. Necessitatibus sed est aspernatur officia explicabo quis.</p><p>Possimus voluptatem enim voluptas ut distinctio. Nam delectus sint ratione explicabo. Fugit autem consequatur recusandae. Architecto facere non dolor et inventore in.</p><p>Quae ex ea iste fugit optio quisquam. Blanditiis doloribus cum consequatur ut omnis ut quia. Consectetur dolore officiis facilis enim. Quibusdam sed culpa et.</p><p>Sunt sed est nemo dolores. Magni atque praesentium blanditiis et id. Nihil quia distinctio ut quasi veniam dolores aut tenetur.</p><p>Veniam laboriosam beatae voluptates sed dolorem voluptas. Et voluptatem quam blanditiis nihil quos aut. Illum iure ullam est.</p><p>Excepturi omnis voluptatem sed ad culpa distinctio ut. Laborum sed qui quia maxime debitis facilis voluptatem. Qui accusantium consequatur placeat cum ea facilis accusamus.</p><p>Saepe itaque aut minus cupiditate. Aut dolor vel non nulla laudantium sint. Alias dolor sit repellat id corporis molestias. Suscipit sunt illum aliquid quis.</p><p>Minus architecto ut sequi a et velit vitae. Praesentium ipsum accusamus corrupti nobis nemo itaque consequatur dolorem. Sint maiores corrupti magnam modi similique sunt.</p><p>Ad repellendus voluptate quia dolores qui voluptates iusto. Enim necessitatibus recusandae molestiae impedit possimus ullam pariatur. Eos et incidunt laudantium saepe aperiam.</p><p>Harum praesentium perspiciatis illum vitae sit itaque repellendus doloremque. Placeat nobis dolorum doloremque amet ea deleniti. Voluptates commodi libero non vero blanditiis nesciunt soluta.</p><p>Rerum corrupti illo similique. Unde praesentium corrupti ut eos. Minima quasi atque repellendus nam praesentium.</p>', NULL, '2022-01-29 23:21:45', '2022-01-29 23:21:45'),
(6, 2, 2, 'Molestiae provident magnam et est quaerat.', 'quaerat-ducimus-ipsa-dolorum-non-numquam', NULL, 'Atque illum eligendi magnam vel. Autem ut eius velit sunt eos omnis. Autem consequuntur vel facere ut. Vel eaque non nam enim.', '<p>Delectus voluptatem fugit culpa suscipit aut. Sunt totam modi quod ut quia earum. Architecto quas in ex.</p><p>Illum dolore cupiditate nobis voluptas impedit delectus aut. Sint facere sed ab dolor. Laborum quia nam debitis.</p><p>Iste recusandae facere consequatur nam esse voluptatem quasi. Alias fugiat et illo harum non ullam repudiandae. Minima tempore dolorem voluptatum ut rerum maiores ipsam et.</p><p>Suscipit veritatis vel atque autem qui quaerat. Error et explicabo vitae cupiditate provident. Eligendi amet vel voluptatum corporis quisquam iste est. Et doloremque eos voluptas tempora debitis non magnam. Quam ut consequatur nesciunt rem dolorem quis et.</p><p>Debitis ut culpa aut iusto nemo eos incidunt. Quibusdam excepturi non repudiandae ullam ratione mollitia eum molestias. Praesentium voluptates laborum exercitationem dolor. Praesentium earum vel odit voluptate.</p>', NULL, '2022-01-29 23:21:45', '2022-01-29 23:21:45'),
(7, 1, 2, 'Fugiat ut sint placeat possimus aut corporis molestias.', 'repellat-ratione-et-architecto-cum', NULL, 'Eum qui modi et aut explicabo rerum natus. Quaerat sit doloremque voluptates. Est dolor aspernatur explicabo quae cum dicta aut repellat.', '<p>Libero asperiores ut facere ut. Aut quam impedit in praesentium error ea consequatur. Molestiae adipisci ipsa consectetur eum sit sed.</p><p>Pariatur ut voluptas voluptates. Ad sapiente consectetur facilis quia ab et sint. Maxime sit tenetur tenetur sit minima voluptas. Nobis enim consequatur debitis non maxime.</p><p>Dolor eius et provident sed. Qui quasi recusandae enim aut et.</p><p>Provident laborum minima architecto qui. Harum aperiam quaerat quisquam ipsa non pariatur amet. Vel accusantium occaecati non ducimus illo. Illo sit ex ut ut harum dolore voluptas. Nemo id est ipsam odio molestias possimus dolores consequatur.</p><p>Sequi dolorem soluta consectetur nulla sed qui corrupti. Sed quo hic ex alias omnis fugiat velit. Iusto dolore voluptatem tenetur quas.</p><p>Laudantium debitis atque saepe. Fuga unde nulla nihil molestiae dolor ducimus itaque. Et quod quo ut occaecati. Vel dolor libero aut quos animi similique minima.</p><p>Ullam aspernatur voluptatem exercitationem consequatur sequi maiores. Officiis in officia assumenda dolor amet voluptatem. Quasi nesciunt sed illo vel quidem non. Doloremque ipsum est ex iste. Sit consectetur inventore et illum.</p><p>Est neque dolore sint corporis omnis. Saepe est earum qui est nisi enim. Dolorum autem et animi nulla nesciunt.</p><p>In et praesentium atque nam optio. Rerum expedita exercitationem dolorem optio ducimus laboriosam. Eveniet error numquam sit at accusantium distinctio aliquam.</p>', NULL, '2022-01-29 23:21:45', '2022-01-29 23:21:45'),
(8, 1, 3, 'Reiciendis autem repudiandae aut laboriosam eos reiciendis natus.', 'qui-voluptatibus-necessitatibus-qui-natus-earum', NULL, 'Assumenda aut aliquid sit harum. Sequi aliquam excepturi perferendis et.', '<p>Eius enim dignissimos voluptatum a aut qui quidem. Aliquam dolore sint perferendis aperiam minima nam tenetur. Quia rerum atque tenetur doloremque dolorem ut.</p><p>Corporis necessitatibus dignissimos excepturi exercitationem. Omnis est quam quis amet qui. Deserunt ut et cumque.</p><p>Rerum quis reiciendis nihil dolor exercitationem consequatur. Occaecati minima est ut. Doloremque vel est mollitia molestias.</p><p>Ut est sed est amet. Quibusdam eos eum quia. Aspernatur rerum laudantium quia nulla soluta nisi minima.</p><p>Esse tenetur consectetur dolores optio. Mollitia libero quo debitis est voluptatem. Non voluptas quod nam iure debitis. Qui odit atque saepe deleniti et.</p><p>Ea quasi eveniet ut pariatur. Suscipit doloremque ut aut debitis in. Iusto voluptatum modi corrupti reprehenderit odit. Aut labore ipsum alias sunt enim alias.</p><p>Ea repellat enim est. Saepe perferendis consectetur magni. Quae aut eveniet tempore ipsum exercitationem similique fugit dolore. Nemo nemo tenetur enim dolor a repudiandae aut vel.</p>', NULL, '2022-01-29 23:21:45', '2022-01-29 23:21:45'),
(9, 2, 3, 'Dolor numquam ea omnis voluptas.', 'vitae-tempora-magnam-non-ipsa-accusamus-laudantium', NULL, 'Quae quasi et sit. Dolor dolores sint neque molestias dolor voluptatum commodi.', '<p>Et fugiat et facilis vel et qui voluptatum. Nihil alias quibusdam ad rerum et fugiat magni. Et voluptatem qui velit voluptas.</p><p>Officiis modi velit hic voluptatum voluptas. Ab natus laboriosam in commodi. Sunt et provident eum amet praesentium explicabo nam voluptatem.</p><p>Culpa cupiditate qui rerum molestiae soluta rem. Accusamus est et nihil et. Vitae tempora sed quia nihil earum omnis.</p><p>Atque voluptatem omnis est. Numquam optio voluptates autem rerum dolorum reiciendis rerum. Quae in enim qui sunt.</p><p>Voluptatibus aliquam nobis officiis aut suscipit eaque voluptates. Rerum quibusdam cumque soluta quaerat facere fugiat. A exercitationem est adipisci nam.</p><p>Voluptatem minus qui ut eveniet aperiam iusto. Nesciunt repellat dolores saepe ea. Dolor cum ratione omnis totam.</p><p>Dolorem quia in aperiam odit distinctio eligendi ab. Et omnis animi quae quo quam cupiditate repellat adipisci.</p><p>Velit eum sed magni aspernatur. Et magni eos laudantium amet suscipit occaecati. Aut laboriosam iusto numquam voluptatum consequatur dolorem quaerat.</p><p>Quia porro sapiente asperiores totam. Consectetur ut et consequatur repellendus et et. Eius dolore nesciunt dignissimos modi rerum similique. Molestiae quos temporibus doloremque maiores dolorem est sit.</p><p>Impedit consequatur impedit reprehenderit ut cupiditate temporibus sed. Nesciunt tempora consequatur sint accusantium hic. Deleniti excepturi est a reiciendis et tempora perferendis.</p><p>Laboriosam voluptas deleniti dignissimos alias quia. Recusandae atque culpa necessitatibus et. Veritatis accusamus quos tempore suscipit. Nemo facilis libero id eius consequuntur.</p><p>Illo animi omnis dignissimos. Dolorem magni voluptatibus minus quis autem voluptatum eaque laborum.</p><p>Et autem porro sequi ipsa. Inventore nam aperiam ut totam. Repellat et sit enim aspernatur architecto.</p><p>Debitis ad velit optio unde. Totam earum deleniti harum repellendus non aut enim. Quia delectus adipisci quibusdam optio. Eius necessitatibus eum aut error.</p><p>Velit dolor quidem hic consequuntur quasi omnis. Quia qui nobis amet officiis voluptatem dolores animi magni. Qui voluptatem unde quam numquam sunt natus.</p><p>At eius repellat ex eius ut facere repellat. Reiciendis reprehenderit tempora dignissimos est. Tempora tempora consequatur veniam reprehenderit nihil.</p><p>Eligendi incidunt non aut dolore quisquam. Error est laborum dolorem eligendi voluptas saepe nihil. Ut quo hic facere non. A ut nihil occaecati dolor et et vero sapiente.</p><p>Minima assumenda atque aut totam. Eum velit excepturi quis beatae. Error aspernatur sunt deserunt accusamus odio possimus nam nobis. Accusamus in est sequi praesentium.</p>', NULL, '2022-01-29 23:21:45', '2022-01-29 23:21:45'),
(10, 2, 2, 'Asperiores assumenda omnis cumque consequuntur amet neque.', 'id-amet-qui-at-eius-consequatur-et', NULL, 'Laudantium atque tempora nam est eligendi quo quia. Animi non consectetur debitis non autem.', '<p>Occaecati voluptatem nam voluptas et et. Laborum et autem excepturi mollitia hic. Blanditiis omnis possimus ad accusantium suscipit dolore blanditiis voluptates. A culpa fuga distinctio unde quidem suscipit voluptas.</p><p>Corrupti illo dolor aut suscipit explicabo consequatur quisquam debitis. Maiores aut alias nam quas mollitia. Voluptatem aliquid saepe animi. Perspiciatis corrupti qui fugit autem doloribus illum.</p><p>Ipsa voluptas accusantium harum ipsa sit quia. Quis et ipsam facere iusto et deserunt. At eos ut dolores qui dolorum. Quis et et deserunt sed autem.</p><p>Sed ab nesciunt et. Deleniti magni ea quo modi et dolore. Laborum et odio ducimus numquam.</p><p>Incidunt magnam qui quas dicta iure voluptatibus natus. Cupiditate et reprehenderit expedita architecto.</p><p>Autem eligendi voluptatem aut distinctio. Aut ut deserunt dignissimos. Pariatur rerum laborum omnis qui et.</p><p>Dolores expedita et voluptas dolorem. Deserunt quis dolorem aut fugit earum. Fugiat voluptatem sint ab fugit omnis eius sapiente. Et eius voluptas odit laborum deserunt omnis officiis natus.</p><p>Pariatur ut sit iste impedit autem in. Error ipsam explicabo beatae asperiores enim consequatur. Autem accusantium optio omnis qui aperiam incidunt distinctio.</p><p>Ipsum est occaecati voluptas quos ut eum labore. Esse et asperiores ad tempore aut enim. At et inventore odit repellendus totam ipsam voluptatum deserunt. Tempora suscipit vitae eum amet sint.</p><p>Vero autem pariatur cumque placeat dolore nostrum. A veritatis non omnis voluptatibus dolores cupiditate fugit. Vitae necessitatibus eveniet autem facere dolor doloremque nulla. Sint reprehenderit facilis et unde non laudantium cupiditate.</p><p>Provident cumque magni alias non. Eos iste exercitationem molestiae consequuntur ut porro saepe voluptate. Harum dolor id pariatur rerum. Sunt aliquam magni enim quisquam officia quasi. Velit minima veniam ipsum et repellat reiciendis porro.</p><p>Nulla harum laborum aut est delectus modi ab. Aut facilis et aut laborum magnam consequatur. Praesentium nobis at qui aliquam. Quo laboriosam omnis expedita labore et.</p>', NULL, '2022-01-29 23:21:45', '2022-01-29 23:21:45'),
(11, 2, 3, 'Ut voluptates cumque dolores.', 'explicabo-officiis-voluptatem-pariatur-et-doloribus-illum-natus', NULL, 'Eum voluptatem magni error eaque a iste dolores. Fuga ut est omnis ut. Molestiae quasi amet impedit sint eos voluptas voluptatem excepturi. Voluptas aut ea magnam ut error sequi.', '<p>Repudiandae porro necessitatibus ipsa sapiente harum debitis voluptatem. Quidem repellendus culpa quisquam odit fugit aspernatur voluptatem. Est consequuntur temporibus molestiae. Illo voluptatum earum omnis beatae iste.</p><p>Provident alias magni et totam exercitationem optio aut. Voluptatum magnam nulla rem corrupti modi. Et vitae est officiis perspiciatis modi nam est. Quia cupiditate blanditiis officia voluptas perferendis vero incidunt inventore.</p><p>Eum fugit vel est velit. Facere consequatur incidunt rem cumque veniam blanditiis quia earum. Error cumque veritatis quia autem.</p><p>Repudiandae molestias dolorem aspernatur consequatur id adipisci optio. Consequatur provident natus illo quia ipsum aut minus. Quasi et magni nobis est veniam vitae. Cumque sint nulla odit rerum consectetur omnis.</p><p>Alias eos animi voluptatum occaecati. Voluptatem porro quidem ratione. Recusandae et dicta tempora ducimus est eaque voluptatem et. Vitae atque corrupti voluptas officiis est earum magni.</p><p>Possimus tempore vel in nam. Rerum nostrum nulla sit pariatur officiis natus nihil. Libero consequatur quam perferendis quia. Non quia amet sed vel.</p><p>Eligendi molestiae praesentium quia consequuntur id dolor. Ea corporis sapiente laudantium expedita. Aspernatur facere quidem eaque iure. Veniam distinctio vel maxime. Voluptatem sit consequuntur libero expedita.</p><p>Deserunt corrupti ut voluptatem neque magni omnis exercitationem. Similique officia magnam esse animi accusantium autem expedita. Inventore vitae fugit iusto sed quis amet quasi a.</p><p>Officiis sapiente cumque quam eos. Nobis mollitia et similique tempore nobis vel. Vitae qui cum impedit.</p><p>Aut nulla temporibus cum quo. Consequatur odit veniam rem quis at. Mollitia beatae fuga fugiat vero rerum.</p><p>Iste sunt nostrum iste eius dolorem consectetur ipsam voluptas. Delectus iusto possimus sit atque molestiae. Velit accusamus iste nihil explicabo. Dolores nobis et facilis et.</p><p>Accusamus occaecati rem expedita ut itaque. Est doloribus quaerat enim nulla omnis. Sequi voluptates iste hic quia sequi harum aut. Nisi sunt nostrum odit ipsam.</p><p>Officia architecto error dolore. Doloremque labore et labore. Neque inventore natus fuga praesentium.</p><p>Libero distinctio veniam maxime sit voluptatem non. Unde qui ea deserunt officiis. Dolorem repellat et veritatis aut aspernatur placeat. Vel commodi sed aut eligendi et.</p>', NULL, '2022-01-29 23:21:45', '2022-01-29 23:21:45'),
(12, 1, 1, 'Veniam consequuntur nisi qui.', 'maxime-est-sed-eos-voluptatibus-nihil-dolor-quas', NULL, 'Itaque magnam et assumenda. Architecto voluptas est enim asperiores minus saepe et. Vero nemo alias dolorem a et asperiores est. Numquam nisi in occaecati ipsam.', '<p>Enim eaque tempora placeat est modi laudantium. Nesciunt totam et sunt quo repellendus consequatur velit. Debitis est odio sit qui saepe aut eos.</p><p>Facere sit rerum aliquid ut autem. Exercitationem eum molestiae labore rerum omnis totam. Impedit earum vel doloribus nobis eum ut perspiciatis. Id atque sed et error ut placeat.</p><p>Repudiandae sed quo optio eligendi illum aut. Unde nulla praesentium ut occaecati et dolorum et labore. Nulla officiis molestiae est nisi.</p><p>Dolorum culpa excepturi culpa molestiae beatae quod. Aut consequatur sequi ea qui amet ab.</p><p>Voluptatem blanditiis odio autem amet vel ratione. Illum expedita atque placeat qui excepturi vel. Exercitationem est non molestiae officia. Similique qui dicta asperiores.</p><p>Ipsam iste delectus vel odio ut quibusdam. Nihil dolorum laborum officiis. Maxime deleniti tempore unde quas. Recusandae sed ad necessitatibus earum qui soluta.</p><p>Non maxime corrupti quibusdam sint cumque blanditiis. Molestiae veritatis blanditiis accusantium omnis rerum deserunt quis. Ratione excepturi doloribus mollitia perferendis. Et deserunt non aut iusto est voluptate.</p><p>Eveniet voluptates quasi est asperiores sunt quo. Deserunt quia sunt optio quia. Qui quis sint exercitationem veniam quaerat.</p><p>Quaerat aut suscipit nostrum quis sit. Minima ut veniam sit rem.</p><p>Fuga omnis beatae ea consequatur eos at. Sequi voluptas maxime est aut voluptatem maiores.</p><p>Vel et autem animi atque iusto itaque aut. Illum suscipit aut ea itaque dolor qui est. Odit molestiae accusamus voluptatem perferendis sunt voluptates. Et rem rerum et accusantium dolore sit excepturi assumenda.</p><p>Labore repudiandae est labore. Necessitatibus dolorem distinctio aut doloremque blanditiis perspiciatis aliquam nulla. Esse qui iste voluptatum id omnis. Accusantium provident quod vitae qui ut minus voluptatem.</p><p>Id ratione delectus eius atque recusandae non ullam. Aut voluptatem ratione officiis voluptatem et autem. At natus non est qui ipsa. Nobis placeat numquam doloribus.</p><p>Accusamus et atque veritatis molestias earum quisquam. Expedita est et vitae adipisci neque illo. Vero qui qui facilis.</p><p>Dolorum rem dignissimos accusantium dolor dolor et. Ut explicabo soluta aut aperiam cum. Incidunt quis expedita voluptates in doloribus beatae. Pariatur pariatur eaque voluptatem explicabo repudiandae laborum.</p><p>Modi recusandae dolores perferendis consequatur consectetur incidunt non. Itaque error officia rerum aliquam. Et esse quidem et ullam non voluptatem amet.</p>', NULL, '2022-01-29 23:21:45', '2022-01-29 23:21:45'),
(13, 1, 3, 'Ratione aliquam ut sit.', 'optio-ipsam-distinctio-est-voluptas-et-aut-eum', NULL, 'Molestias totam perspiciatis fugit totam eum voluptates explicabo. Qui sed quia et eum deleniti sequi tempora. Dolorem fugiat illum exercitationem voluptates. Nisi aut repudiandae ut qui atque quidem.', '<p>Eligendi eum dolorem non molestiae. Voluptate beatae vel enim.</p><p>Aut et a deleniti qui. Esse eum quasi illum ea debitis. Accusantium molestias dolor ab illum maxime quis aliquam debitis. Id voluptas doloribus ipsam qui vitae doloremque possimus.</p><p>Iure reiciendis molestias non iusto aperiam. Adipisci voluptates autem sit est et maxime. Officiis assumenda facere in non nihil et est.</p><p>Quibusdam quo cum ad et vitae quasi doloremque eaque. Quia molestias tempore veniam corrupti. Voluptas minima perspiciatis quaerat harum deleniti officia rerum.</p><p>Dolores eveniet iste nemo et beatae. Provident totam eum dolores quisquam laudantium ut sit. Temporibus omnis minus nesciunt velit sed quia sequi. Non deleniti beatae et ex.</p><p>Quae deserunt consequatur cupiditate. Ea quia quidem qui assumenda et qui. Eveniet sit dignissimos aut est ipsa iusto autem. Temporibus dolorem molestiae sequi dolor occaecati. Corrupti officiis exercitationem est repellendus.</p><p>Quisquam necessitatibus qui quidem deleniti ipsum. Molestias cum minus pariatur ut vel enim.</p><p>Laboriosam aperiam sequi et nam laudantium in ipsam. Vitae quam soluta nobis fugiat nulla aut aspernatur. Consectetur numquam ab laudantium. Ut dolorum id qui animi.</p><p>Quasi necessitatibus inventore voluptas suscipit soluta. Qui magnam aliquid corrupti consequatur. Rerum placeat vel aut illo esse error nihil.</p><p>Odio quibusdam debitis ipsam sit maxime quia. Ratione reprehenderit inventore quis reprehenderit ex. Esse et vel quis qui dolor eaque consequatur officiis.</p><p>Quod dignissimos cupiditate voluptates enim ut. Ab consequuntur cumque explicabo quidem voluptate autem iste. Dignissimos exercitationem deleniti sint.</p>', NULL, '2022-01-29 23:21:45', '2022-01-29 23:21:45'),
(14, 2, 1, 'Adipisci beatae.', 'est-neque-et-provident-ut-ab-animi-aut-quis', NULL, 'Eveniet quo eaque placeat non nesciunt velit fugiat. Sint consequatur qui dicta dolor error vel sequi. Voluptatem et dolor dolores.', '<p>Cum ut cumque rerum animi maiores quis nulla similique. Molestias rerum id ut enim eligendi. Ratione et animi aliquid recusandae odit sit veritatis repellendus.</p><p>Reiciendis cupiditate in dolores et aut. Praesentium aut voluptatem recusandae aut atque porro et. Non exercitationem iste ut laudantium porro nobis dolor. Aliquam quo eveniet iusto aperiam nihil.</p><p>Et cupiditate veritatis expedita et est officia. Deserunt eveniet quos vero quod sunt officiis. Et quo laboriosam qui. Minima et dolorum vero repudiandae animi atque.</p><p>Provident corporis laborum voluptatem quas sint repudiandae. Dolore id odio porro. Tempore nulla ipsa quas est id.</p><p>Repellendus sit omnis libero ex provident voluptatem. Excepturi enim aut sed facilis. Nesciunt sit distinctio perferendis dolorem dolores qui.</p>', NULL, '2022-01-29 23:21:45', '2022-01-29 23:21:45'),
(15, 2, 1, 'Sint qui incidunt et eum cumque et voluptatum temporibus.', 'dolorum-nesciunt-quae-facere-ullam', NULL, 'Doloremque labore vel dolorem. In temporibus libero corporis. Voluptatem vero nam natus a aspernatur dolores non aut.', '<p>Nam nesciunt odit hic qui voluptatibus. Facilis consequatur quia mollitia molestiae id quis. Enim perspiciatis excepturi voluptate fuga. Expedita sapiente quo repellendus qui et.</p><p>Cupiditate nihil maxime aut quia aperiam consectetur. Enim veniam velit soluta cupiditate ex. Aut reprehenderit enim placeat aut amet. Ipsam non ea esse aliquid ex.</p><p>Soluta saepe mollitia ut distinctio laboriosam. Aut exercitationem iure voluptatem ipsa. Minus consequatur esse nesciunt voluptatem et.</p><p>Provident est sit ipsa et. Qui qui ut magni ea doloremque fuga dignissimos. Cupiditate minus corrupti adipisci.</p><p>Mollitia non impedit veniam quo quia ex cupiditate et. Consequatur minus reiciendis laudantium ea. Perferendis adipisci quia qui ea.</p><p>Fugit inventore numquam maxime sint. Quia suscipit consequatur soluta in labore dolor fuga commodi. Voluptatem voluptas tempore molestiae ipsam provident.</p><p>Animi in voluptas provident impedit impedit. Sed id exercitationem magnam porro ratione. Quidem eligendi autem error eligendi voluptatum consequuntur. Assumenda repellendus dolore eius similique sequi quasi.</p><p>Voluptas odit adipisci aut eum unde. Soluta provident itaque inventore dolores voluptas voluptatem. Aspernatur voluptatem est quis non cumque sunt sit.</p><p>Saepe odit nam omnis. Cupiditate eos sapiente voluptates. Magnam non omnis quaerat blanditiis animi omnis. Aut facilis est quis dicta quo maxime quis.</p><p>Magni dolorum consequuntur consectetur officia in asperiores ea placeat. Assumenda ad voluptatem soluta debitis nobis dolor. Impedit dolores aliquam natus non.</p><p>Et fugiat necessitatibus dolorum provident. Non velit similique quis harum ipsam incidunt porro. Impedit quaerat hic est. Cumque sed blanditiis tempore ipsa expedita et eum.</p><p>Numquam autem fugit eligendi aperiam omnis. Nam ut molestias est aperiam molestiae. Culpa est libero nemo cupiditate quasi.</p><p>Debitis quia sed et quo rem. Ex quo facilis aspernatur sequi quod molestias. Quam sit saepe aut dolorem ea. Et sint omnis aut sequi quas perferendis quam quo.</p><p>Eum aut at quia praesentium. Repellat harum reiciendis delectus corporis. Aliquam ducimus odit qui dolor et quo. Delectus at et qui quia accusantium eaque qui.</p><p>Doloremque velit ea hic dolorum. Quae aut beatae laboriosam ex iusto iusto sit. Iste rem voluptatem amet in facere pariatur.</p><p>Rerum quasi dolor aut aut occaecati beatae. Quisquam quam amet suscipit qui. Provident harum enim officia perspiciatis. Et veniam nobis omnis quidem distinctio occaecati aut.</p><p>Aut et aut et. Molestiae consequuntur qui soluta quia rerum nulla impedit alias.</p><p>Asperiores veniam quo omnis eius. Qui incidunt est est illum optio quae. Omnis laborum assumenda soluta ut.</p><p>Amet quo in explicabo quidem sunt ipsa. Ducimus et similique consequatur. Ullam velit labore voluptate ut. Nam earum quo et vel doloremque.</p>', NULL, '2022-01-29 23:21:45', '2022-01-29 23:21:45'),
(16, 2, 3, 'Similique explicabo nulla ut accusamus minus ab est eius.', 'distinctio-repudiandae-fugiat-maiores-nulla', NULL, 'Illum aut accusamus earum. Laboriosam consequatur maxime voluptatem natus sed molestiae. Voluptates necessitatibus qui repellendus corporis eligendi ut perspiciatis.', '<p>Ipsum omnis consequatur earum molestias et consequatur. Voluptatem ut occaecati sunt vel necessitatibus blanditiis. Dicta aut odit voluptatum.</p><p>Autem cum velit cum autem quisquam. Deleniti voluptatem sit eaque enim. Eos molestiae dicta est totam.</p><p>Odio voluptatum provident id quidem tempora animi nesciunt. Id dolorum vel cumque voluptatibus impedit corrupti aut est. Molestiae architecto odio accusantium.</p><p>Amet magni dolorum et quis totam natus dolorem. Fugiat praesentium ipsum ab earum ut in omnis. Quam magni necessitatibus fugit nam rerum.</p><p>Molestiae illo officiis similique quia. Non molestiae perspiciatis qui beatae quas unde consequatur. Aut exercitationem expedita quam tempora illum quas ut.</p><p>Aliquid et libero ea sit ea dolores aut. Eos maxime voluptas et hic temporibus ab. Est ut rem nam enim occaecati. Unde in nihil qui sed earum. Et molestiae reiciendis totam sit similique harum aut aut.</p><p>Et voluptas amet quis iure rerum. Deserunt soluta totam consectetur odio dolorum illo sit. Corrupti eaque labore vitae facere.</p><p>Magni dolorum molestiae cum repellat culpa deleniti. Nostrum aut voluptatem aperiam quos eum. Et cupiditate optio quibusdam sed aut dolorem corporis aut.</p><p>Vel quia dolorem ea. Error consectetur tenetur ea nulla laudantium enim nesciunt sit.</p><p>Unde rerum cumque est error cum. Rerum repellendus recusandae est expedita expedita enim.</p><p>Tempora et non voluptates quis autem nam earum. Et voluptatem quo distinctio ut earum rerum vel. Aliquid soluta quasi ut. Ab labore aperiam quae ut.</p><p>Neque laudantium numquam id nisi eius ut libero. Qui incidunt sequi ut fuga quia qui error. Quibusdam porro quam vel sed.</p>', NULL, '2022-01-29 23:21:45', '2022-01-29 23:21:45'),
(17, 1, 1, 'Est ea impedit consequatur quod eos.', 'possimus-numquam-omnis-et-dolorum', NULL, 'Et a vitae quidem. Ratione doloremque qui non sed quo dolore aliquam. Consequatur rerum inventore ducimus voluptatum enim quam dolores.', '<p>Et sint quia id incidunt est sed. Maiores eos quisquam ut ullam et. Hic rerum qui accusantium vero sed hic. Explicabo sint neque consequuntur itaque inventore et.</p><p>Rerum tenetur porro nam deleniti. Dignissimos numquam ex dolorem non. Tempora odit exercitationem enim. Rerum in aperiam harum odio rerum ut dolorem.</p><p>Nemo accusantium modi deleniti nemo corrupti. Placeat voluptates eligendi id fuga ducimus natus aut est. Voluptatum voluptate suscipit at odit impedit.</p><p>Eos totam natus atque earum et ipsam adipisci. Ut quia aut fugiat et.</p><p>Labore et molestiae qui dolor consequatur consequatur. Recusandae totam nesciunt eius sit et. A non consequatur dolor neque fugit consequatur eligendi.</p><p>Provident et vitae corporis sint assumenda cumque. Cumque expedita ut accusantium velit deserunt recusandae exercitationem.</p><p>Qui omnis veniam accusantium ea qui ipsa voluptas dicta. Dolorum dicta cum nobis et. Voluptatem sed enim earum dolorem voluptatibus distinctio quidem delectus. Ex nemo et vel quidem aut ad optio iste.</p><p>Non quidem id pariatur aut. Iste nobis eligendi commodi quaerat sint nisi et. Tenetur dicta dolor labore odit ea perferendis. Consequatur mollitia optio voluptas.</p><p>Consequatur ducimus culpa temporibus dicta aperiam. Quidem natus atque beatae. Inventore aut sed non magnam. Voluptatum rerum aut cupiditate dolores aut sed.</p><p>Quis commodi expedita facilis voluptatum odit. Ut aut sit corporis et. Id consequatur enim temporibus fuga velit. Pariatur accusantium quasi reiciendis et explicabo in.</p><p>Explicabo illum similique repellat doloribus dolores quaerat non. Cum amet repellat asperiores eos atque. Voluptatem quia doloremque aut. Perferendis sunt est adipisci.</p><p>Consequatur ea harum ea deleniti est id repellendus. Sed et autem veniam rerum. Autem saepe vel numquam aperiam numquam ut labore mollitia. Placeat ullam tenetur molestiae magnam aut consequatur.</p><p>Qui harum excepturi minus et eum vel. Facere maxime ullam laboriosam.</p><p>Omnis culpa ut ducimus eveniet praesentium. Facilis ipsum rerum ea ut. Maiores et ut rem neque qui voluptas temporibus expedita.</p><p>Sint praesentium et ut est et assumenda perspiciatis. Sint nemo rerum sed ipsum. Id dolorum quis id cum atque reiciendis voluptatibus.</p><p>Eveniet aspernatur autem labore ipsum molestiae sint. Beatae culpa animi repudiandae omnis rerum nulla. Labore quas quia quia beatae eum odit.</p>', NULL, '2022-01-29 23:21:45', '2022-01-29 23:21:45'),
(18, 2, 3, 'Deserunt odio quas laborum dolorem itaque.', 'sint-officia-rem-quia-esse', NULL, 'Vitae laudantium velit delectus repellendus molestiae aperiam. Modi quam voluptate reprehenderit dolores.', '<p>Aliquam tempore sit maiores perferendis eos. Laudantium corrupti hic molestiae expedita et voluptatem. Praesentium assumenda nemo qui molestiae id. Earum necessitatibus veniam ab quis.</p><p>Nemo non voluptate ut quia voluptas quidem sed. Magnam eum deserunt debitis repudiandae unde voluptas. Quos excepturi adipisci magni velit laudantium quia neque. Adipisci et rerum consequatur minus praesentium nisi.</p><p>Animi dicta exercitationem tempora omnis ut eum iure sunt. Aut labore porro illo aut voluptate. Necessitatibus ut qui excepturi reprehenderit cumque rerum voluptates.</p><p>Velit ipsum repellendus deleniti. Deserunt vel voluptate et. Ducimus asperiores quo nobis. Ipsam quam aut dignissimos aut ut.</p><p>Et aliquid ipsa ducimus ipsa occaecati. Perspiciatis est qui voluptatibus rerum officiis dolor.</p><p>Et sed officia maxime repellendus asperiores porro voluptates. Vel voluptatem explicabo fugiat vero fugiat porro qui. Possimus magnam ut vero ab. Aut est hic nobis officiis labore et.</p><p>Ut quam nihil repellat eligendi harum reiciendis. Consectetur repellat aspernatur assumenda nisi. Nihil consectetur numquam quis nesciunt ad. Fugiat est vero dolorem omnis maiores possimus.</p><p>Quia qui est at alias eius sapiente. Odio rem voluptatem nulla ut ut ab. Cupiditate voluptates dolorem aut suscipit autem occaecati. Cumque autem maiores voluptatem illo voluptate consectetur.</p>', NULL, '2022-01-29 23:21:45', '2022-01-29 23:21:45'),
(19, 1, 3, 'Enim laudantium ad ab.', 'et-ea-et-sunt', NULL, 'Dolore deserunt consequatur atque sed omnis. Molestiae nulla mollitia animi molestiae rerum est. Et possimus tempora dolore nostrum. Sint ut voluptatem maiores odio et totam esse dolorem.', '<p>Et quia qui accusantium qui officiis. Incidunt dolorem aut sit soluta sed tempore. Dignissimos ut nesciunt odit harum. Dolores accusamus totam accusantium similique labore nam illum. Dolore velit voluptatem ut est.</p><p>Sequi voluptatem nulla a et. Ipsum tempore facilis explicabo non sit ut eligendi. Recusandae deleniti asperiores qui. Sunt doloremque temporibus dolorum blanditiis distinctio iure.</p><p>Sint et tenetur id eius enim doloremque. Adipisci soluta quaerat sit. Qui molestiae aliquid repellat. Iusto itaque et et qui quaerat repudiandae quos.</p><p>Dignissimos nulla beatae earum enim expedita non voluptatum. Voluptatem occaecati ipsa eos sit ea.</p><p>Dolorem voluptatem harum est aspernatur sunt est. Ut quia molestiae dolores molestias.</p><p>Est neque nisi provident ut iste et ut. Quo itaque nemo et quibusdam ut. Reiciendis perferendis quia quas officiis.</p>', NULL, '2022-01-29 23:21:45', '2022-01-29 23:21:45'),
(20, 1, 1, 'Et dolores sed.', 'cupiditate-ut-autem-iste-illo-aut-sit', NULL, 'Ad accusamus quia minima quae. Voluptatibus impedit nisi veritatis quis esse. Distinctio cumque iste voluptatem quis neque sint.', '<p>Non nulla nisi autem explicabo occaecati possimus neque. Neque natus ut accusamus ipsam esse tenetur. Aliquid quam dolores aperiam sed quis nemo et omnis. Sit voluptas error veritatis accusamus.</p><p>Aspernatur voluptas nesciunt tenetur cupiditate. Placeat ratione sint commodi et est ut sit soluta. Commodi velit est quia et ut nemo.</p><p>Officiis explicabo laudantium quis dolor corporis voluptatum aut. Sit eum mollitia sint in voluptatem facilis eligendi. Tempora repellat ab non ipsa.</p><p>Omnis voluptatibus quidem quod vero. Maxime aut in consequatur debitis. Cum recusandae fuga ea non non aperiam. Esse aut officiis sapiente sit ut sint excepturi.</p><p>Facere velit in voluptatem et ut id voluptatibus. Eveniet suscipit eligendi commodi nisi.</p><p>Ipsum odio voluptatem incidunt et dolorem voluptates facere. Adipisci illo sed qui. Voluptas nobis labore omnis ex vero iure ut. Impedit voluptatibus ratione ut omnis aut eaque numquam dicta.</p><p>Aut quas quo et illo sunt qui iste sit. Et minima delectus provident ea et sed quia. Doloribus recusandae eos odio sit enim consectetur. Aperiam est aut veritatis fugiat quis excepturi.</p><p>Ducimus ea non delectus cumque corrupti possimus velit. Aspernatur aut ut voluptate praesentium blanditiis iure ex. Possimus rerum non quae unde.</p><p>Non est praesentium qui id id odit dolorum. Excepturi autem nostrum quibusdam error perspiciatis aut. Hic consectetur consequatur est et et ut.</p><p>Consequatur ratione rem ut dolorum est consequatur nihil tenetur. Aut est ut culpa aut consequatur sunt voluptas dolor. Nihil omnis et odio optio ipsam laudantium. Alias repellendus dignissimos quas.</p><p>Dolor eos non voluptatibus et voluptatibus in. Sequi eius sint dolorem.</p><p>Consequatur dolores totam aut ex id corrupti. Perferendis commodi numquam harum repellat nam aperiam corporis. Eaque quisquam ea officiis nam vel.</p><p>Explicabo vitae fugit quod omnis sapiente quia. Perferendis optio reiciendis delectus possimus omnis est eos consequuntur. Vitae molestiae omnis voluptas.</p>', NULL, '2022-01-29 23:21:45', '2022-01-29 23:21:45'),
(21, 1, 1, 'Post Baru', 'post-baru', 'post-images/edktTWPB9TFYudkgEHS0WMph2AJ11DananJq3zrT.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distrib...', '<div><strong>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</strong><br><br>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</div>', NULL, '2022-01-30 02:02:20', '2022-01-30 02:43:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `is_admin`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Gian Nurwana', 'giannurwana19', 'gian@gmail.com', 1, NULL, '$2y$10$5Lv3LOgNXRhFpp7nrO90yeP3tHkCIlRLZx6jzEp4hQgBnbzKWMZQC', NULL, '2022-01-29 23:21:44', '2022-01-29 23:21:44'),
(2, 'Bahuraksa Darmaji Samosir S.Pd', 'hutagalung.maimunah', 'cinta85@example.org', 0, '2022-01-29 23:21:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Sz6ZH1eYavr0D56FssYCPg5qBgzqgQBPrCPQZanTG2DCfl8W1nl1hOmyCKDL', '2022-01-29 23:21:44', '2022-01-29 23:21:44'),
(3, 'Zahra Uyainah S.T.', 'ewahyuni', 'zahra@gmail.com', 0, '2022-01-29 23:21:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8rV3D7I8fCCZG7fwikYBRlJ1tCXReNefFraw6xGZWPB6F1F9Nkob1GarNL6K', '2022-01-29 23:21:44', '2022-01-29 23:21:44'),
(4, 'Nyoman Wahyudin', 'karsa97', 'prasasta.kemal@example.org', 0, '2022-01-29 23:21:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wt9aBRvd58TDxhD347KHd9WEN54COBtXzAqMYSIBzNWXhh2LHNixVgC9Rppz', '2022-01-29 23:21:44', '2022-01-29 23:21:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
