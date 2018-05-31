-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 31, 2018 at 09:42 PM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bodyweight-workouts`
--

-- --------------------------------------------------------

--
-- Table structure for table `exercises`
--

DROP TABLE IF EXISTS `exercises`;
CREATE TABLE IF NOT EXISTS `exercises` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `muscle_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exercises_muscle_id_foreign` (`muscle_id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exercises`
--

INSERT INTO `exercises` (`id`, `title`, `description`, `video`, `muscle_id`, `created_at`, `updated_at`) VALUES
(1, 'Archer Pull Ups', 'Primarily targets the lats and to a lesser degree also targets the biceps, forearms, middle back, shoulders and traps. The archer pull-up is a exercise for those with a expert level of physical fitness and exercise experience.', 'PSjeeKy6I2g', 2, '2018-05-23 19:04:40', NULL),
(2, 'Box Jumps', 'Primarily targets the glutes and to a lesser degree also targets the calves, hamstrings, hip flexors, outer thighs and quads.\r\nThe only box jump equipment that you really need is the following: box. There are however many different box jump variations that you can try out that may require different types of box jump equipment or may even require no equipment at all.', 'hxldG9FX4j4', 6, '2018-05-23 19:04:46', NULL),
(3, 'Bulgarian Split Squats (Each leg)', 'Primarily targets the quads and to a lesser degree also targets the calves, glutes, hamstrings and groin. This is the single-leg squat variation. The only difference from a split squat is that the rear foot is elevated. This small change ramps up the difficulty of the movement considerably by testing your balance, which engages the core all the more, and placing a greater load on the front leg.', '2C-uNgKwPLE', 6, '2018-05-23 19:23:15', NULL),
(4, 'Burpees', 'The burpee is a calisthenics, cardiovascular, martial arts, plyometrics, and total body exercise that primarily targets the quads and to a lesser degree also targets the abs, calves, chest, forearms, glutes, hamstrings, hip flexors, lower back, middle back, quads, shoulders and triceps.', 'wS4OsJ4yzx4', 6, '2018-05-23 19:23:18', NULL),
(5, 'Calf Raises (Each leg)', 'Primarily targets the calves. This exercise may seem a little tricky so you may need a couple of sessions to get used to this exercise. Use your free hand to hold onto something while you complete this exercise (it will help with your balance).', 'ORT4oJ_R8Qs', 6, '2018-05-24 17:13:48', NULL),
(6, 'Chair Dips', 'Primarily targets the triceps and to a lesser degree also targets the chest and shoulders. Chair dips are a convenient alternative strength exercise to regular dips. Regular dips are an advanced exercise; chair dips are an easier, but still challenging, alternative.', 'c3ZGl4pAwZ4', 3, '2018-05-24 17:13:48', NULL),
(7, 'Chin Ups', 'Primarily targets the lats and to a lesser degree also targets the forearms, middle back and biceps.', '_71FpEaq-fQ', 3, '2018-05-24 17:13:52', NULL),
(9, 'Clap Push Ups', 'Primarily targets the chest and to a lesser degree also targets the abs, triceps and lower back. Improves the explosive power of your upper body. It targets fast-twitch muscles, which are responsible for producing short bursts of power. ', 'EYwWCgM198U', 1, '2018-05-25 13:21:42', NULL),
(8, 'Clap Pull Ups', 'The clap pull up is the thing to do if you want to improve your sporting performance, endurance and upper body strength. Although it is very similar to the standard exercise, the speed of movement needed to rise high above the bar, remove your hands, clap and then place your hands back to their original position develops amazing explosive power that is well worth obtaining.', 'mYO2YYHzSzA', 2, '2018-05-24 17:13:52', NULL),
(10, 'Close Grip Chin Ups', 'Primarily targets the middle back and to a lesser degree also targets the biceps, forearms, lats, lower back and shoulders. Narrow Grip Chin Ups are highly effective for building muscle.  ', '6bTcFTRoqcw', 3, '2018-05-25 13:44:47', NULL),
(11, 'Close Grip Pull Ups', 'Primarily targets the lats and to a lesser degree also targets the biceps, forearms and shoulders. ', '0zJgeKvPv5E', 2, '2018-05-25 13:59:48', NULL),
(12, 'Contralateral Limb Raises (Each leg)', 'This exercise helps strengthen core muscles and stabilize the spine, particularly the lumbar region that supports most of the body. It also improves posture control, aligns the spine, reduces lower back pain, and strengthens the shoulder muscles.', 'ZLcavwNQ-zo', 2, '2018-05-25 14:15:06', NULL),
(13, 'Crunches', 'One of the most popular abdominal exercises. It primarily works the rectus abdominis muscle and also works the obliques.', 'Xyd_fa5zoEU', 5, '2018-05-25 14:19:31', NULL),
(14, 'Decline Pike Push Ups', 'Decline Pike push ups emphasizes the shoulder and chest muscles as well as the triceps as one performs push ups in this position. The routine requires the back to be rounded and entire weight to be borne on the hands with feet placed on an elevated platform. The abs should be tucked in throughout.\r\n', '_hlC8fs6xGY', 4, '2018-05-25 14:26:13', NULL),
(15, 'Decline Push Ups', 'Exercise that primarily targets the chest and to a lesser degree also targets the abs, triceps, middle back and lower back. A decline Push Up is a variation of the basic push up that increases the difficulty significantly by placing your feet higher than your hands. Adjusting the bench height allows you to customize the intensity of your workout using just your body weight.', 'SKPab2YC8BE', 1, '2018-05-25 17:00:56', NULL),
(16, 'Diamond Push Ups', 'Primarily targets the chest and to a lesser degree also targets the abs, triceps, lower back and shoulders. A diamond pushup requires more work from the triceps than a classic pushup. Diamond push up is one of the safest and most effective triceps exercise to incorporate in an upper-body training program.', 'J0DnG1_S92I', 3, '2018-05-25 14:37:43', NULL),
(17, 'Dips', 'A dip is a compound, push-type exercise which works a large number of muscles in your triceps, chest, and shoulders, at the same time.', 'T1L4smOP0L8', 3, '2018-05-25 14:57:40', NULL),
(18, 'Duck Walk', 'Primarily targets the quads and to a lesser degree also targets the calves, glutes, groin, hamstrings, hip flexors and outer thighs. It strengthens your ankle muscles, increases stamina and flexibility of your body.  ', 'A_xEJwwuX6Y', 6, '2018-05-25 15:05:37', NULL),
(19, 'Explosive Pull Ups', 'Explosive pull up is simply a pull up variation in which you need to touch the bar to your chest. The cool thing about this kind of pull up is that it will teach and strengthen the groove that will eventually lead to muscle-up mastery. A vital exercise to master for improving your power, strength, technique and conditioning.', 'oBPxrohFV9M', 2, '2018-05-25 17:01:06', NULL),
(20, 'Flutter Crunches', 'Flutter crunches are one of the principal exercises used by military special operators. This comes as no surprise when you consider that they\'re a killer abs and hip flexor exercise. Avoid this exercise if you have lower back problems!', 'Vo7j7gf5Di4', 5, '2018-05-25 15:24:55', NULL),
(21, 'Front Lever', 'Front lever is a skill that involves each and every muscle of your upper body, including some parts of the lower body such as the glutes. It\'s definitely one of the most effective exercises you can do.', 'qg6fu2MRpbg', 2, '2018-05-25 15:52:58', NULL),
(22, 'Handstand Wall Push Ups', 'Primarily targets the shoulders. They build incredible shoulder and upper body strength, they’re awesome for balance, they help strengthen your core and glutes.', 'ZQd9R9Dqvts', 4, '2018-05-25 16:04:48', NULL),
(23, 'Hanging Knee Raises', 'Primarily targets the abs and to a lesser degree also targets the forearms, hip flexors and quads.', 'hdng3Nm1x_E', 5, '2018-05-25 16:08:49', NULL),
(24, 'Hanging Leg Raises', 'Primarily targets the abs. The hanging leg raise is without doubt one of the best abdominal exercises you can do and if the six pack look is one of your goals you cannot go wrong by taking the time needed to nail this bodyweight exercise.', 'Ji5oz1TmIRI', 5, '2018-05-25 16:24:40', NULL),
(25, 'Hanging Side Raises (Each leg)', 'Hanging side raises target the entire core area, as the primary muscles working in this exercise are the obliques. The lower abs are worked very well and the muscles in the forearms and shoulders also build strength due to hanging from a bar in a stationary position. Secondary muscles include the quadriceps, hip flexors and the lower back.', 'wQkDkFQPpbQ', 5, '2018-05-25 16:30:26', NULL),
(26, 'High Knees', 'High knees is an awesome cardio exercise that works your legs and core while giving you a great cardiovascular move that gets your heart rate up anytime, anywhere. Don’t let the simplicity of this move fool you: high knees can be a high-intensity cardiovascular exercise. ', 'oDdkytliOqE', 6, '2018-05-25 16:35:50', NULL),
(27, 'Hindu Push Ups', 'Hindu push ups is a great upper body exercise that works well on your Pectoral (Chest muscles), Deltoids, Triceps, Serratus anterior, subscapularis, hip and spine flexor, erector spine, etc. Due to its compound movements, it’s a complete package with better muscle strength and endurance.\r\n', 'vQsQAiE0NQo', 1, '2018-05-25 16:47:42', NULL),
(28, 'Incline Push Ups', 'Primarily targets the chest and to a lesser degree also targets the calves, triceps, glutes and hamstrings.', 'Z0bRiVhnO8Q', 1, '2018-05-25 16:56:27', NULL),
(29, 'Inclined Chin Ups', 'The inclined chin up is a great exercise because it works the biceps and allows you to easily adjust it to your fitness level, by lifting or lowering the bar level or the height at which you position your feet. In addition to this, it puts no stress on your lower back so it\'s a great alternative to some of the other exercises out there (just make sure you keep proper form throughout the movement!).', 'BFU6QSTis44', 3, '2018-05-25 17:11:37', NULL),
(30, 'Inclined Pull Ups', 'An inclined pull up, also known as an inverted row or Australian pull up, is an exercise that targets the upper body. It simultaneously works multiple muscle groups, providing a comprehensive workout that quickly builds strength and burns calories. ', 'nVRMiT88mvI', 2, '2018-05-25 17:16:36', NULL),
(31, 'Jumping Jacks', 'Jumping jacks are a great full body exercise that enhances aerobic fitness, strengthens the body and promotes relaxation. This exercise also improves muscle endurance, increases the body\'s metabolic rate and helps with weight loss. ', 'iSSAk4XCsRA', 6, '2018-05-25 17:30:32', NULL),
(32, 'Korean Dips', 'Korean Dips are a powerful dip variation that will really test your shoulder mobility.', 'kU3O9MwsZe0', 4, '2018-05-25 17:40:35', NULL),
(33, 'L-Sit Chin Ups', 'Advanced chin ups variation to train back, arms and core at the same time!', '2FuWfA7ur7w', 3, '2018-05-25 17:46:51', NULL),
(34, 'L-Sit Pull Ups', 'The l-sit pull up is a calisthenics, martial arts, and total body exercise that primarily targets the lats and to a lesser degree also targets the abs, biceps, forearms and shoulders.', 'QH0dDfyF7QM', 2, '2018-05-25 17:49:45', NULL),
(35, 'Lunges (Each leg)', 'Primarily targets the quads and to a lesser degree also targets the calves, glutes, groin and hamstrings.', 'COKYKgQ8KR0', 6, '2018-05-25 17:54:23', NULL),
(36, 'Lying Leg Raises', 'The lying leg raise is a pilates and calisthenics exercise that primarily targets the abs.', '2OGEw-xykFA', 5, '2018-05-25 18:03:09', NULL),
(37, 'Mountain Climbers', 'The mountain climber is a calisthenics and cardiovascular exercise that primarily targets the abs and to a lesser degree also targets the calves, chest, hamstrings, lower back, quads and triceps.', 'LUNwl1vMYvQ', 5, '2018-05-25 18:06:12', NULL),
(38, 'Muscle Ups', 'The muscle up is one of the best, if not the best body-weight exercise you could ever do to gain a solid upper body strength. It is the combination of a Pull-up and a Dip in one single rep. Making it one the most complete movement patterns out there. Primarily targets the lats and to a lesser degree also targets the biceps, forearms, middle back, triceps, chest, lats and shoulders.', 'pS1A--3mNZ4', 2, '2018-05-25 18:13:37', NULL),
(39, 'Negative Chin Ups', 'Negative chin ups are a great exercise for improving upper body strength, most notably, the muscles of the mid to upper back and scapula stabilizers. This exercise also strengthens the shoulders, arms, and the anterior core.', 'mjNHoibfrMo', 3, '2018-05-25 18:17:37', NULL),
(40, 'Parallel Bar Leg Raises', 'The leg raise on parallel bars are popular and very effective core exercise for intermediate and advanced athletes. They target the tension to the lower abdominals and the hip flexors.', 'oUysUOxG6x8', 5, '2018-05-25 18:27:51', NULL),
(41, 'Pike Push Ups', 'Pike push ups (also known as pike press) work the anterior deltoid, lateral deltoid, triceps, back, and core and can even help improve hamstring flexibility. Pike push ups are a great exercise to help you progress to handstand push up and can easily be adjusted to any fitness level. ', 'sposDXWEB0A', 4, '2018-05-25 18:34:14', NULL),
(42, 'Pistol Squats (Each leg)', 'The pistol is a rock-bottom squat on one leg where your hamstring rests on your calf and your other leg is straight out in front of you. Primarily targets the quads and to a lesser degree also targets the calves, glutes, groin, hamstrings, hip flexors, lower back and outer thighs.', '7NvOuty_Fnc', 6, '2018-05-25 18:42:34', NULL),
(43, 'Plank', 'The plank is an isometric core strength exercise that involves maintaining a position similar to a push up for the maximum possible time. Primarily targets the abs and to a lesser degree also targets the lower back and shoulders.', 'pSHjTRCQxIw', 5, '2018-05-25 18:47:01', NULL),
(44, 'Pseudo Push Ups', 'To train your shoulder primarily you can do pseudo push ups. Depending on far you lean your shoulders forward in the push ups position you can vary the intensity of the exercise. ', 'C-SML6xnVkI', 4, '2018-05-25 18:54:57', NULL),
(45, 'Pull Ups', 'A pull up is an upper-body compound pulling exercise. Although it can be performed with any grip, in recent years some have used the term to refer more specifically to a pull up performed with a palms-forward position. Primarily targets the lats and to a lesser degree also targets the biceps, middle back and shoulders. ', 'eGo4IYlbE5g', 2, '2018-05-25 18:59:09', NULL),
(46, 'Push Up Hold', 'It is basically a combination of a plank and push up. Targets the chest, shoulders and triceps. To do push up holds, there are three main holds you can focus on – high push up hold, mid push up hold and bottom push up hold.  ', 'IgVX6YM3rQE', 1, '2018-05-25 19:16:43', NULL),
(47, 'Push Ups', 'A push up is a total-body functional movement that is great for increasing strength and has the added benefit of engaging the core and lower body.  Primarily targets the chest and to a lesser degree also targets the shoulders, triceps and abs.', 'IODxDxX7oi4', 1, '2018-05-25 19:20:46', NULL),
(48, 'Side Plank', 'The side plank is a calisthenics, pilates, and yoga exercise that primarily targets the obliques and to a lesser degree also targets the glutes and abs.', 'BhWGMc_JfXM', 5, '2018-05-25 19:32:33', NULL),
(49, 'Single Bar Dips', 'It is more difficult than the parallel bars and has more benefits as well. Place your hands on one bar which comes relatively above your chest and raise yourself up till your hands are completely stretched. This chest dips also works on your triceps and gives you a widened upper back.', 'TSQP6rZqjiM', 3, '2018-05-25 19:44:24', NULL),
(50, 'Sit Ups', 'A sit up is a core body exercise that strengthens both your upper and lower abs. Sit ups have been around for a long time. While planks and other core moves are certainly excellent choices, the traditional sit up remains a very effective ab strength move. ', 'jDwoBqPH0jk', 5, '2018-05-25 19:50:23', NULL),
(51, 'Skull Crushers', 'The purpose of the body weight skull crushers is NOT to crush your skull, despite its name, but rather to stimulate the major muscle located on the back of the upper arm known as the triceps.', 'Hq0Mf8vAXu8', 3, '2018-05-25 19:54:10', NULL),
(52, 'Squat Jumps', 'The jump squat is a full-body exercise that requires no equipment and primarily works the legs and midsection - specifically, the gluteus maximus, hamstrings, abdominals, quadriceps and calves', 'DeTBwEL4m7s', 6, '2018-05-25 19:56:57', NULL),
(53, 'Squats', 'Performing a body weight squat workout will help you tone up your lower body. A body weight squat is a fitness term for a simple deep knee bend. You can do body weight squats just about anywhere, and as often as you want in order to keep your legs and glutes nice and firm. Primarily targets the quads and to a lesser degree also targets the glutes and hamstrings.', 'dmgJ1rmoR4U', 6, '2018-05-25 20:02:43', NULL),
(54, 'Toe Touch Crunches', 'The toe touch crunch is a calisthenics and pilates exercise that primarily targets the abs and to a lesser degree also targets the hip flexors, quads and obliques.', 'NOb7EW_q_yg', 5, '2018-05-25 20:12:32', NULL),
(55, 'V Hold', 'The V hold ab exercise builds core strength by working multiple areas of the core at the same time. It\'s an effective way to target the rectus abdominis, the external obliques, internal obliques, and hip flexors, all while improving core and trunk balance.  ', '1wBgF_AJeWE', 5, '2018-05-25 20:14:22', NULL),
(56, 'V Ups', 'Abdominal V Ups are an exercise that work both the upper and lower abdominal muscles at the same time. You can also use the exercise to help strengthen the lower back muscles and to tighten the thighs. V Ups are a more intense way to practice core strength with fewer reps and less time spent overall. Be careful performing abdominal V Ups, since the exercise can cause a lower back injury if you do not use the proper technique.', 'wRCgPeligF4', 5, '2018-05-25 20:18:49', NULL),
(57, 'Wall Sit', 'The wall sit exercise is a real quad burner, working the muscles in the front of your thighs. This exercise is generally used for building isometric strength and endurance in the quadriceps muscle group, glutes, and calves.', 'y-wV4Venusw', 6, '2018-05-25 20:31:16', NULL),
(58, 'Wide Chin Ups', 'The wide grip chin up is a fantastic exercise that hits the entire back but more specifically, the upper and outer back. This exercise builds width.\r\n\r\nAlthough the primary muscle groups is the back, it also hits the shoulders (front and rear) and really works the biceps.', '8BPRUahrlI8', 3, '2018-05-25 20:48:02', NULL),
(59, 'Wide Pull Ups', 'The wide pullup is an advanced bodyweight exercise that improves strength in the back, shoulders, and biceps. The wide-grip position emphasizes the back by reducing resistance on the biceps and forearms.  Primarily targets the middle back and to a lesser degree also targets the forearms, lats, shoulders and traps. ', 'bzHQ6AqwbOg', 2, '2018-05-26 07:25:58', NULL),
(60, 'Wide Push Ups', 'Primarily targets the chest and to a lesser degree also targets the shoulders, triceps and abs. The wide push up recruits more of your pectoral muscles while a regular push up shares the burden with your triceps muscles.', 'rr6eFNNDQdU', 1, '2018-05-26 07:37:58', '2018-05-26 07:30:53');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_05_23_094010_create_muscles_table', 2),
(5, '2018_05_23_100832_create_exercises_table', 3),
(6, '2018_05_27_075739_create_workouts_table', 4),
(7, '2018_05_27_165250_create_workouts_table', 5),
(8, '2018_05_27_165608_create_workout_exercises_table', 6),
(9, '2018_05_29_103147_create_workouts_table', 7),
(10, '2018_05_29_103812_create_workouts_table', 8),
(11, '2018_05_29_110449_create_workouts_table', 9),
(12, '2018_05_29_122420_create_workout_exercises_table', 10),
(13, '2018_05_30_185414_create_workouts_table', 11),
(14, '2018_05_30_185504_create_workout_exercises_table', 11),
(15, '2018_05_30_192912_create_workouts_table', 12),
(16, '2018_05_30_193006_create_workout_exercises_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `muscles`
--

DROP TABLE IF EXISTS `muscles`;
CREATE TABLE IF NOT EXISTS `muscles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `muscles`
--

INSERT INTO `muscles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'chest', '2018-05-23 09:56:48', NULL),
(2, 'back', '2018-05-23 09:57:07', NULL),
(3, 'arms', '2018-05-23 09:58:31', NULL),
(4, 'shoulders', '2018-05-23 09:58:31', NULL),
(5, 'abdominal', '2018-05-23 09:58:35', NULL),
(6, 'legs', '2018-05-23 09:59:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Paulius', 'garbasauskas@gmail.com', '$2y$10$jUybQl2TApMz98aEpl3VF.SqqvrOKgC3HfBjKGcubxnbgiezdmuVe', 'aXaFlcLIMJYL5HF3wdpJLsbr5tX1ZnKHHRZR0Qf26VWkWoyS04duSJecrpzu', '2018-05-20 15:22:01', '2018-05-20 15:22:01'),
(2, 'Petras', 'petras@test.com', '$2y$10$1mVw7fltjQd8Jg/dCIFaR.H.9nDMaluBD/NNVnMK0Ndtqziw5j4MO', '1i3d7vx5ecRFnw6cNj3ABAHetwuUG9lSxcDGNxf7J2r0pHnh5v9L70rBbX1A', '2018-05-29 08:34:16', '2018-05-29 08:34:16'),
(3, 'Antanas', 'antanas@test.com', '$2y$10$RF56pV07hrf7db3qYAwTveGsOXM5gxmw.bscS3A931HB.VRD.OFHq', 'tczTCQqwhneiLVtRsKoGG3bjIrT6RPStylmAgkqAdjt43j6NeVnDDdxUsY29', '2018-05-30 19:08:52', '2018-05-30 19:08:52');

-- --------------------------------------------------------

--
-- Table structure for table `workouts`
--

DROP TABLE IF EXISTS `workouts`;
CREATE TABLE IF NOT EXISTS `workouts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `sets_number` int(11) NOT NULL,
  `pause_between_sets` int(11) NOT NULL,
  `pause_between_exercises` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `workouts_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workouts`
--

INSERT INTO `workouts` (`id`, `title`, `user_id`, `sets_number`, `pause_between_sets`, `pause_between_exercises`, `created_at`, `updated_at`) VALUES
(3, 'naujas', 1, 4, 90, 30, '2018-05-30 16:32:16', '2018-05-30 16:32:16'),
(6, 'Petro treniruotė', 2, 4, 90, 30, '2018-05-30 18:14:44', '2018-05-30 18:14:44'),
(10, 'asd', 3, 4, 90, 30, '2018-05-30 20:17:06', '2018-05-30 20:17:06'),
(12, 'asd', 3, 3, 60, 30, '2018-05-30 20:17:32', '2018-05-30 20:17:32'),
(14, 'asdasd', 3, 1, 90, 30, '2018-05-30 20:17:48', '2018-05-30 20:17:48'),
(15, 'acas', 3, 4, 90, 30, '2018-05-30 20:19:05', '2018-05-30 20:19:05'),
(16, 'cascsa', 3, 4, 90, 30, '2018-05-30 20:19:10', '2018-05-30 20:19:10'),
(18, 'ascsc', 3, 4, 90, 30, '2018-05-30 20:19:49', '2018-05-30 20:19:49');

-- --------------------------------------------------------

--
-- Table structure for table `workout_exercises`
--

DROP TABLE IF EXISTS `workout_exercises`;
CREATE TABLE IF NOT EXISTS `workout_exercises` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `workout_id` int(10) UNSIGNED NOT NULL,
  `exercise_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reps_number` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `workout_exercises_workout_id_index` (`workout_id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workout_exercises`
--

INSERT INTO `workout_exercises` (`id`, `workout_id`, `exercise_title`, `reps_number`, `created_at`, `updated_at`) VALUES
(10, 3, 'Calf Raises (Each leg)', 12, '2018-05-30 16:32:16', '2018-05-30 16:32:16'),
(11, 3, 'Wide Pull Ups', 12, '2018-05-30 16:32:16', '2018-05-30 16:32:16'),
(12, 3, 'Wall Sit', 12, '2018-05-30 16:32:16', '2018-05-30 16:32:16'),
(13, 3, 'V Hold', 12, '2018-05-30 16:32:16', '2018-05-30 16:32:16'),
(26, 6, 'Box Jumps', 12, '2018-05-30 18:14:44', '2018-05-30 18:14:44'),
(27, 6, 'Dips', 12, '2018-05-30 18:14:44', '2018-05-30 18:14:44'),
(28, 6, 'Jumping Jacks', 12, '2018-05-30 18:14:44', '2018-05-30 18:14:44'),
(29, 6, 'Plank', 12, '2018-05-30 18:14:44', '2018-05-30 18:14:44'),
(30, 6, 'V Hold', 12, '2018-05-30 18:14:44', '2018-05-30 18:14:44'),
(31, 6, 'Wall Sit', 12, '2018-05-30 18:14:44', '2018-05-30 18:14:44'),
(45, 10, 'Burpees', 12, '2018-05-30 20:17:06', '2018-05-30 20:17:06'),
(46, 10, 'Bulgarian Split Squats (Each leg)', 12, '2018-05-30 20:17:06', '2018-05-30 20:17:06'),
(47, 10, 'Chair Dips', 12, '2018-05-30 20:17:06', '2018-05-30 20:17:06'),
(48, 10, 'Chin Ups', 12, '2018-05-30 20:17:06', '2018-05-30 20:17:06'),
(49, 10, 'Archer Pull Ups', 12, '2018-05-30 20:17:06', '2018-05-30 20:17:06'),
(50, 10, 'Chair Dips', 12, '2018-05-30 20:17:06', '2018-05-30 20:17:06'),
(56, 12, 'Bulgarian Split Squats (Each leg)', 10, '2018-05-30 20:17:32', '2018-05-30 20:17:32'),
(57, 12, 'Calf Raises (Each leg)', 12, '2018-05-30 20:17:32', '2018-05-30 20:17:32'),
(58, 12, 'Clap Push Ups', 5, '2018-05-30 20:17:32', '2018-05-30 20:17:32'),
(64, 14, 'Clap Push Ups', 12, '2018-05-30 20:17:48', '2018-05-30 20:17:48'),
(65, 14, 'Burpees', 12, '2018-05-30 20:17:48', '2018-05-30 20:17:48'),
(66, 14, 'Box Jumps', 12, '2018-05-30 20:17:48', '2018-05-30 20:17:48'),
(67, 15, 'Chair Dips', 12, '2018-05-30 20:19:05', '2018-05-30 20:19:05'),
(68, 15, 'Box Jumps', 12, '2018-05-30 20:19:05', '2018-05-30 20:19:05'),
(69, 16, 'Chair Dips', 12, '2018-05-30 20:19:10', '2018-05-30 20:19:10'),
(70, 16, 'Box Jumps', 12, '2018-05-30 20:19:10', '2018-05-30 20:19:10'),
(71, 16, 'Archer Pull Ups', 12, '2018-05-30 20:19:10', '2018-05-30 20:19:10'),
(75, 18, 'Bulgarian Split Squats (Each leg)', 12, '2018-05-30 20:19:49', '2018-05-30 20:19:49'),
(76, 18, 'Box Jumps', 12, '2018-05-30 20:19:49', '2018-05-30 20:19:49');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `workout_exercises`
--
ALTER TABLE `workout_exercises`
  ADD CONSTRAINT `workout_exercises_workout_id_foreign` FOREIGN KEY (`workout_id`) REFERENCES `workouts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
