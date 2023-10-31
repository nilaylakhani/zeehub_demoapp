// part of style;

// class AppAssets {
//   AppAssets._();
//   //logo images
//   static String healumLogo = getAssetValues("ic_healum_logo") ?? "";
//   static String logoSplash = getAssetValues("logo_splash") ?? "";
//   //splash images
//   static String splash3AppOverview = getAssetValues("splash_3_app_overview") ?? "";
//   static String splash4AppOverview = getAssetValues("splash_4_app_overview") ?? "";
//   static String splash5AppOverview = getAssetValues("splash_5_app_overview") ?? "";
//   static String splash6AppOverview = getAssetValues("splash_6_app_overview") ?? "";
//   //empty state images
//   static String emptyStateNoGoalsAdded = getAssetValues("empty_state_no_goals_added") ?? "";
//   static String emptyStateNoTrackersAdded = getAssetValues("empty_state_no_trackers_added") ?? "";
//   static String articleEmptyState = getAssetValues("article_empty_state") ?? "";
//   static String exerciseEmptyState = getAssetValues("exercise_empty_state") ?? "";
//   static String videoEmptyState = getAssetValues("video_empty_state") ?? "";
//   static String placeEmptyState = getAssetValues("place_empty_state") ?? "";
//   static String recipeEmptyState = getAssetValues("recipe_empty_state") ?? "";
//   static String emptyStateGeneral = getAssetValues("empty_state_general") ?? "";
//   static String emptyStateNoResourcesAvailable = getAssetValues("empty_state_no_resources_available") ?? "";
//   static String emptyStateNotFound = getAssetValues("empty_state_notfound") ?? "";
//   static String emptyStateAllActionsCompleted = getAssetValues("empty_state_all_actions_completed") ?? "";
//   static String emptyStateAllNotificationsCaughtUp = getAssetValues("empty_state_all_notifications_caught_up") ?? "";
//   static String emptyStateNoResourcesShared = getAssetValues("empty_state_no_resources_shared") ?? "";
//   static String emptyStateNoMetricSetup = getAssetValues("empty_state_no_metric_setup") ?? "";
//   static String emptyStateNoGoalSetup = getAssetValues("empty_state_no_goal_setup") ?? "";
//   static String emptyStateNoChats = getAssetValues("empty_state_no_chats") ?? "";
//   static String emptyStateNoContacts = getAssetValues("empty_state_no_contacts") ?? "";
//   //default images
//   static String consentFormDefaultImage = getAssetValues("consent_form_default_image") ?? "";
//   static String goalPreviewDefaultImage = getAssetValues("goal_preview_default_image") ?? "";
//   static String individualGoalDefaultImage = getAssetValues("individual_goal_default_image") ?? "";
//   static String articleDefault = getAssetValues("article_default") ?? "";
//   static String placeDefault = getAssetValues("place_default") ?? "";
//   static String recipeDefault = getAssetValues("recipe_default") ?? "";
//   static String videoDefault = getAssetValues("video_default") ?? "";
//   static String exerciseDefault = getAssetValues("exercise_default") ?? "";
//   static String articleDetailDefault = getAssetValues("article_detail_default") ?? "";
//   static String placeDetailDefault = getAssetValues("place_detail_default") ?? "";
//   static String recipeDetailDefault = getAssetValues("recipe_detail_default") ?? "";
//   static String videoDetailDefault = getAssetValues("video_detail_default") ?? "";
//   static String exerciseDetailDefault = getAssetValues("exercise_detail_default") ?? "";
//   static String chatDefault = getAssetValues("chat_default") ?? "";
//   static String contactDefault = getAssetValues("contact_default") ?? "";
//   static String chatDetailDefault = getAssetValues("chat_detail_default") ?? "";
//   static String imageDefault = getAssetValues("image_default") ?? "";
//   static String imageDetailDefault = getAssetValues("image_detail_default") ?? "";
//   //bookmark images
//   static String bookmarkUnselected = getAssetValues("bookmark_unselected") ?? "";
//   static String bookmarkSelected = getAssetValues("bookmark_selected") ?? "";
//   //other images
//   static String confirmationDialogGoalAdded = getAssetValues("confirmation_dialog_goal_added") ?? "";
//   static String confirmationDialogPasscodeUpdated = getAssetValues("confirmation_dialog_passcode_updated") ?? "";
//   static String confirmationDialogTrackerAdded = getAssetValues("confirmation_dialog_tracker_added") ?? "";
//   static String noConnectionLoginSignup = getAssetValues("no_connection_login_signup") ?? "";
//   static String icCheck = getAssetValues("ic_check") ?? "";
//   static String mentalHealthCuate = getAssetValues("mental_health_cuate") ?? "";
//   static String noInternetConectionState = getAssetValues("no_internet_conection_state") ?? "";
//   static String errorGeneral = getAssetValues("error_general") ?? "";
//   static String recipeOne = getAssetValues("recipe_one") ?? "";
//   static String thumb = getAssetValues("thumb") ?? "";
//   static String updateRequiredState = getAssetValues("update_required_state") ?? "";
//   static String weAreBetterThanState = getAssetValues("we_are_better_than_state") ?? "";
//   static String chatBg = getAssetValues("chat_bg") ?? "";

//   static String? getAssetValues(fileName) {
//     String? assetValue = serviceLocator<ConfigImpl>().getValue(ConfigsConstant.ASSETS, fileName);
//     if (assetValue != null || assetValue!.isNotEmpty) {
//       return assetValue;
//     } else {
//       return assetValues()[fileName];
//     }
//   }

//   static setAsset() {}

//   static Map<String, String> assetValues() {
//     return {
//       //logo images
//       "ic_healum_logo": "packages/style/lib/assets/images/ic_healum_logo.png",
//       "logo_splash": "packages/style/lib/assets/images/logo_splash.png",
//       //splash images
//       "splash_3_app_overview": "packages/style/lib/assets/images/splash_3_app_overview.svg",
//       "splash_4_app_overview": "packages/style/lib/assets/images/splash_4_app_overview.svg",
//       "splash_5_app_overview": "packages/style/lib/assets/images/splash_5_app_overview.svg",
//       "splash_6_app_overview": "packages/style/lib/assets/images/splash_6_app_overview.svg",
//       //empty state images
//       "empty_state_no_trackers_added": "packages/style/lib/assets/images/empty_state_no_trackers_added.svg",
//       "empty_state_no_goals_added": "packages/style/lib/assets/images/empty_state_no_goals_added.svg",
//       "empty_state_no_resources_available": "packages/style/lib/assets/images/empty_state_no_resources_available.svg",
//       "article_empty_state": "packages/style/lib/assets/images/article_empty_state.svg",
//       "exercise_empty_state": "packages/style/lib/assets/images/exercise_empty_state.svg",
//       "video_empty_state": "packages/style/lib/assets/images/video_empty_state.svg",
//       "place_empty_state": "packages/style/lib/assets/images/place_empty_state.svg",
//       "recipe_empty_state": "packages/style/lib/assets/images/recipe_empty_state.svg",
//       "empty_state_general": "packages/style/lib/assets/images/empty_state_general.svg",
//       "empty_state_no_contacts": "packages/style/lib/assets/images/empty_state_no_contacts.svg",
//       "empty_state_no_chats": "packages/style/lib/assets/images/empty_state_no_chats.svg",
//       "empty_state_no_goal_setup": "packages/style/lib/assets/images/empty_state_no_goal_setup.svg",
//       "empty_state_no_metric_setup": "packages/style/lib/assets/images/empty_state_no_metric_setup.svg",
//       "empty_state_no_resources_shared": "packages/style/lib/assets/images/empty_state_no_resources_shared.svg",
//       "empty_state_all_notifications_caught_up":
//           "packages/style/lib/assets/images/empty_state_all_notifications_caught_up.svg",
//       "empty_state_all_actions_completed": "packages/style/lib/assets/images/empty_state_all_actions_completed.svg",
//       "empty_state_notfound": "packages/style/lib/assets/images/empty_state_notfound.svg",
//       //default images
//       "goal_preview_default_image": "packages/style/lib/assets/images/goal_preview_default_image.svg",
//       "individual_goal_default_image": "packages/style/lib/assets/images/individual_goal_default_image",
//       "consent_form_default_image": "packages/style/lib/assets/images/consent_form_default_image.svg",
//       "consent_form_default_image": "packages/style/lib/assets/images/consent_form_default_image.svg",
//       "image_detail_default": "packages/style/lib/assets/images/image_detail_default.svg",
//       "image_default": "packages/style/lib/assets/images/image_default.svg",
//       "chat_detail_default": "packages/style/lib/assets/images/chat_detail_default.svg",
//       "contact_default": "packages/style/lib/assets/images/contact_default.svg",
//       "chat_default": "packages/style/lib/assets/images/chat_default.svg",
//       "exercise_detail_default": "packages/style/lib/assets/images/exercise_detail_default.svg",
//       "video_detail_default": "packages/style/lib/assets/images/video_detail_default.svg",
//       "recipe_detail_default": "packages/style/lib/assets/images/recipe_detail_default.svg",
//       "place_detail_default": "packages/style/lib/assets/images/place_detail_default.svg",
//       "article_detail_default": "packages/style/lib/assets/images/article_detail_default.svg",
//       "exercise_default": "packages/style/lib/assets/images/exercise_default.svg",
//       "video_default": "packages/style/lib/assets/images/video_default.svg",
//       "recipe_default": "packages/style/lib/assets/images/recipe_default.svg",
//       "place_default": "packages/style/lib/assets/images/place_default.svg",
//       "article_default": "packages/style/lib/assets/images/article_default.svg",
//       //bookmark images
//       "bookmark_unselected": "packages/style/lib/assets/images/bookmark_unselected.svg",
//       "bookmark_selected": "packages/style/lib/assets/images/bookmark_selected.svg",
//       //other images
//       "confirmation_dialog_passcode_updated":
//           "packages/style/lib/assets/images/confirmation_dialog_passcode_updated.svg",
//       "confirmation_dialog_tracker_added": "packages/style/lib/assets/images/confirmation_dialog_tracker_added.svg",
//       "no_connection_login_signup": "packages/style/lib/assets/images/no_connection_login_signup.svg",
//       "confirmation_dialog_goal_added": "packages/style/lib/assets/images/confirmation_dialog_goal_added.svg",
//       "ic_check": "packages/style/lib/assets/images/ic_check.svg",
//       "mental_health_cuate": "packages/style/lib/assets/images/mental_health_cuate.svg",
//       "no_internet_conection_state": "packages/style/lib/assets/images/no_internet_conection_state.svg",
//       "error_general": "packages/style/lib/assets/images/error_general.svg",
//       "recipe_one": "packages/style/lib/assets/images/recipe_one.png",
//       "thumb": "packages/style/lib/assets/images/thumb.svg",
//       "chat_bg": "packages/style/lib/assets/images/chat_bg.png",
//     };
//   }
// }
