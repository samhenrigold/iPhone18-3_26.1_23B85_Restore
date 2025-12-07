@interface INSystemAppMapper
+ (id)supportedIntentsOverridesForBundleIdentifier:(id)identifier;
- (INSystemAppMapper)init;
- (id).cxx_construct;
- (id)bundleIdentifiersForIntentExecutionMatchingBundleIdentifier:(id)identifier;
- (id)extensionToDisplayableAppBundleIdentifierMapping;
- (id)extensionToLaunchableAppBundleIdentifierMapping;
- (id)matchForBundleIdentifier:(id)identifier;
- (id)matchForBundleIdentifier:(id)identifier intentName:(id)name;
- (id)resolvedAppMatchingExtensionBundleIdentifier:(id)identifier;
- (id)resolvedIntentForAccessibilityActionWithBundleIdentifier:(id)identifier intentClassName:(id)name;
- (id)resolvedIntentMatchingAppBundleIdentifier:(id)identifier preferredCallProvider:(int64_t)provider intentClassName:(id)name;
- (id)resolvedIntentMatchingExtensionBundleIdentifier:(id)identifier preferredCallProvider:(int64_t)provider intentClassName:(id)name;
@end

@implementation INSystemAppMapper

- (INSystemAppMapper)init
{
  v167[11] = *MEMORY[0x1E69E9840];
  v131.receiver = self;
  v131.super_class = INSystemAppMapper;
  v2 = [(INSystemAppMapper *)&v131 init];
  if (v2)
  {
    v3 = &off_1E727D1A8;
    v4 = 42;
    do
    {
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v8 = v3[1];
      std::string::basic_string[abi:ne200100]<0>(__p, v5);
      v132 = __p;
      v9 = std::__tree<std::__value_type<std::string,INSystemApp>,std::__map_value_compare<std::string,std::__value_type<std::string,INSystemApp>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,INSystemApp>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v2 + 1, __p, &v132);
      v9[7] = v5;
      v9[8] = v6;
      v9[9] = v7;
      v9[10] = v8;
      if (v130 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, v6);
      v132 = __p;
      v10 = std::__tree<std::__value_type<std::string,INSystemApp>,std::__map_value_compare<std::string,std::__value_type<std::string,INSystemApp>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,INSystemApp>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v2 + 1, __p, &v132);
      v10[7] = v5;
      v10[8] = v6;
      v10[9] = v7;
      v10[10] = v8;
      if (v130 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, v7);
      v132 = __p;
      v11 = std::__tree<std::__value_type<std::string,INSystemApp>,std::__map_value_compare<std::string,std::__value_type<std::string,INSystemApp>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,INSystemApp>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v2 + 1, __p, &v132);
      v11[7] = v5;
      v11[8] = v6;
      v11[9] = v7;
      v11[10] = v8;
      if (v130 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, v8);
      v132 = __p;
      v12 = std::__tree<std::__value_type<std::string,INSystemApp>,std::__map_value_compare<std::string,std::__value_type<std::string,INSystemApp>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,INSystemApp>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v2 + 1, __p, &v132);
      v12[7] = v5;
      v12[8] = v6;
      v12[9] = v7;
      v12[10] = v8;
      if (v130 < 0)
      {
        operator delete(__p[0]);
      }

      v3 += 4;
      --v4;
    }

    while (v4);
    v124 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.facetime"];
    v92 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.facetime"];
    v166 = v92;
    v123 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v166 count:1];
    v91 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.FaceTime"];
    v165 = v91;
    v122 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v165 count:1];
    v90 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.NanoPhone"];
    v164 = v90;
    v121 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v164 count:1];
    v89 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.facetime"];
    v163 = v89;
    v88 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v163 count:1];
    v87 = [INSystemAppGrouping groupingForKey:v124 iOS:v123 macOS:v122 watchOS:v121 tvOS:?];
    v167[0] = v87;
    v120 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.InCallService"];
    v86 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.InCallService"];
    v162 = v86;
    v119 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v162 count:1];
    v85 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.FaceTime"];
    v161 = v85;
    v118 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v161 count:1];
    v84 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.Carousel"];
    v160 = v84;
    v117 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v160 count:1];
    v83 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.facetime"];
    v159 = v83;
    v82 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v159 count:1];
    v81 = [INSystemAppGrouping groupingForKey:v120 iOS:v119 macOS:v118 watchOS:v117 tvOS:?];
    v167[1] = v81;
    v116 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.mobilephone"];
    v80 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.mobilephone"];
    v158[0] = v80;
    v79 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.InCallService"];
    v158[1] = v79;
    v115 = [MEMORY[0x1E695DEC8] arrayWithObjects:v158 count:2];
    v78 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.FaceTime"];
    v157 = v78;
    v114 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v157 count:1];
    v77 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.NanoPhone"];
    v156 = v77;
    v113 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v156 count:1];
    v76 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.facetime"];
    v155 = v76;
    v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v155 count:1];
    v74 = [INSystemAppGrouping groupingForKey:v116 iOS:v115 macOS:v114 watchOS:v113 tvOS:?];
    v167[2] = v74;
    v112 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.mobiletimer"];
    v73 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.mobiletimer"];
    v154 = v73;
    v111 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v154 count:1];
    v72 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.clock"];
    v153 = v72;
    v110 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v153 count:1];
    v71 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.NanoAlarm"];
    v152[0] = v71;
    v70 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.NanoStopwatch"];
    v152[1] = v70;
    v69 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.private.NanoTimer"];
    v152[2] = v69;
    v68 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.NanoWorldClock"];
    v152[3] = v68;
    v109 = [MEMORY[0x1E695DEC8] arrayWithObjects:v152 count:4];
    v67 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.mobiletimer.Alarms"];
    v151[0] = v67;
    v66 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.mobiletimer"];
    v151[1] = v66;
    v65 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.mobiletimer.WorldClocks"];
    v151[2] = v65;
    v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:v151 count:3];
    v63 = [INSystemAppGrouping groupingForKey:v112 iOS:v111 macOS:v110 watchOS:v109 tvOS:?];
    v167[3] = v63;
    v108 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.findmy"];
    v62 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.findmy"];
    v150 = v62;
    v107 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v150 count:1];
    v61 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.findmy"];
    v149 = v61;
    v106 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v149 count:1];
    v60 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.findmy.finddevices"];
    v148[0] = v60;
    v59 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.findmy.finditems"];
    v148[1] = v59;
    v58 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.findmy"];
    v148[2] = v58;
    v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v148 count:3];
    v56 = [INSystemAppGrouping groupingForKey:"groupingForKey:iOS:macOS:watchOS:tvOS:" iOS:v108 macOS:v107 watchOS:v106 tvOS:?];
    v167[4] = v56;
    v105 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.FaceTime"];
    v55 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.facetime"];
    v147[0] = v55;
    v54 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.mobilephone"];
    v147[1] = v54;
    v104 = [MEMORY[0x1E695DEC8] arrayWithObjects:v147 count:2];
    v53 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.FaceTime"];
    v146 = v53;
    v103 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v146 count:1];
    v52 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.facetime"];
    v145 = v52;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v145 count:1];
    v50 = [INSystemAppGrouping groupingForKey:v105 iOS:v104 macOS:v103 watchOS:0 tvOS:?];
    v167[5] = v50;
    v102 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.Carousel"];
    v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.InCallService"];
    v144 = v49;
    v101 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v144 count:1];
    v48 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.Carousel"];
    v143 = v48;
    v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v143 count:1];
    v46 = [INSystemAppGrouping groupingForKey:"groupingForKey:iOS:macOS:watchOS:tvOS:" iOS:v102 macOS:v101 watchOS:0 tvOS:?];
    v167[6] = v46;
    v100 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.NanoPhone"];
    v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.facetime"];
    v142[0] = v45;
    v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.mobilephone"];
    v142[1] = v44;
    v99 = [MEMORY[0x1E695DEC8] arrayWithObjects:v142 count:2];
    v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.NanoPhone"];
    v141 = v43;
    v98 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v141 count:1];
    v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.facetime"];
    v140 = v42;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v140 count:1];
    v40 = [INSystemAppGrouping groupingForKey:v100 iOS:v99 macOS:0 watchOS:v98 tvOS:?];
    v167[7] = v40;
    v97 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.Pages"];
    v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.Pages"];
    v139 = v39;
    v96 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v139 count:1];
    v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.Pages"];
    v138[0] = v38;
    v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.iWork.Pages"];
    v138[1] = v37;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v138 count:2];
    v35 = [INSystemAppGrouping groupingForKey:"groupingForKey:iOS:macOS:watchOS:" iOS:v97 macOS:v96 watchOS:?];
    v167[8] = v35;
    v95 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.Keynote"];
    v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.Keynote"];
    v137 = v34;
    v94 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v137 count:1];
    v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.Keynote"];
    v136[0] = v33;
    v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.iWork.Keynote"];
    v136[1] = v32;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v136 count:2];
    v13 = [INSystemAppGrouping groupingForKey:"groupingForKey:iOS:macOS:watchOS:" iOS:v95 macOS:v94 watchOS:?];
    v167[9] = v13;
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.Numbers"];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.Numbers"];
    v135 = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v135 count:1];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.Numbers"];
    v134[0] = v17;
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.iWork.Numbers"];
    v134[1] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v134 count:2];
    v20 = [INSystemAppGrouping groupingForKey:v14 iOS:v16 macOS:v19 watchOS:0];
    v167[10] = v20;
    v93 = [MEMORY[0x1E695DEC8] arrayWithObjects:v167 count:11];

    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v22 = v93;
    v23 = [v22 countByEnumeratingWithState:&v125 objects:v133 count:16];
    if (v23)
    {
      v24 = *v126;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v126 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v125 + 1) + 8 * i);
          v27 = [v26 key];
          [v21 setObject:v26 forKey:v27];
        }

        v23 = [v22 countByEnumeratingWithState:&v125 objects:v133 count:16];
      }

      while (v23);
    }

    v28 = *(v2 + 4);
    *(v2 + 4) = v21;

    v29 = v2;
  }

  return v2;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  return self;
}

- (id)resolvedIntentForAccessibilityActionWithBundleIdentifier:(id)identifier intentClassName:(id)name
{
  nameCopy = name;
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.Preferences"];
  v7 = [(INSystemAppMapper *)self matchForBundleIdentifier:v6];
  bundleIdentifierForCurrentPlatform = [v7 bundleIdentifierForCurrentPlatform];

  v9 = [nameCopy stringByReplacingCharactersInRange:0 withString:{2, @"AX"}];
  v10 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:bundleIdentifierForCurrentPlatform allowPlaceholder:0 error:0];
  v11 = [INIntentDescriptor alloc];
  localizedName = [v10 localizedName];
  teamIdentifier = [v10 teamIdentifier];
  v14 = [MEMORY[0x1E695DFD8] setWithObject:v9];
  v15 = [(INIntentDescriptor *)v11 initWithIntentClassName:v9 localizedName:localizedName bundleIdentifier:bundleIdentifierForCurrentPlatform displayableBundleIdentifier:bundleIdentifierForCurrentPlatform extensionBundleIdentifier:@"com.apple.AccessibilityUtilities.AXSettingsShortcuts" uiExtensionBundleIdentifier:0 counterpartIdentifiers:0 teamIdentifier:teamIdentifier preferredCallProvider:0 supportedIntents:v14 bundleURL:0 documentTypes:0];

  return v15;
}

- (id)extensionToDisplayableAppBundleIdentifierMapping
{
  v24[6] = *MEMORY[0x1E69E9840];
  v23[0] = @"com.apple.ActionKit.BundledIntentHandler";
  v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.shortcuts"];
  v21 = [(INSystemAppMapper *)self matchForBundleIdentifier:v22];
  bundleIdentifierForCurrentPlatform = [v21 bundleIdentifierForCurrentPlatform];
  v24[0] = bundleIdentifierForCurrentPlatform;
  v23[1] = @"com.apple.TelephonyUtilities.PhoneIntentHandler";
  v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.mobilephone"];
  v18 = [(INSystemAppMapper *)self matchForBundleIdentifier:?];
  bundleIdentifierForCurrentPlatform2 = [v18 bundleIdentifierForCurrentPlatform];
  v24[1] = bundleIdentifierForCurrentPlatform2;
  v23[2] = @"com.apple.PassKit.PassKitIntentsExtension";
  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.Passbook"];
  v15 = [(INSystemAppMapper *)self matchForBundleIdentifier:?];
  bundleIdentifierForCurrentPlatform3 = [v15 bundleIdentifierForCurrentPlatform];
  v24[2] = bundleIdentifierForCurrentPlatform3;
  v23[3] = @"com.apple.HomeKit.HomeKitIntentExtension";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.Home"];
  v4 = [(INSystemAppMapper *)self matchForBundleIdentifier:v3];
  bundleIdentifierForCurrentPlatform4 = [v4 bundleIdentifierForCurrentPlatform];
  v24[3] = bundleIdentifierForCurrentPlatform4;
  v23[4] = @"com.apple.DoNotDisturb.Intents";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.Preferences"];
  v7 = [(INSystemAppMapper *)self matchForBundleIdentifier:v6];
  bundleIdentifierForCurrentPlatform5 = [v7 bundleIdentifierForCurrentPlatform];
  v24[4] = bundleIdentifierForCurrentPlatform5;
  v23[5] = @"com.apple.AccessibilityUtilities.AXSettingsShortcuts";
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.Preferences"];
  v10 = [(INSystemAppMapper *)self matchForBundleIdentifier:v9];
  bundleIdentifierForCurrentPlatform6 = [v10 bundleIdentifierForCurrentPlatform];
  v24[5] = bundleIdentifierForCurrentPlatform6;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:6];

  return v12;
}

- (id)extensionToLaunchableAppBundleIdentifierMapping
{
  v36[10] = *MEMORY[0x1E69E9840];
  v35[0] = @"com.apple.WorkflowKit.ShortcutsIntents";
  v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.shortcuts"];
  v33 = [(INSystemAppMapper *)self matchForBundleIdentifier:v34];
  bundleIdentifierForCurrentPlatform = [v33 bundleIdentifierForCurrentPlatform];
  v36[0] = bundleIdentifierForCurrentPlatform;
  v35[1] = @"com.apple.TelephonyUtilities.PhoneIntentHandler";
  v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.InCallService"];
  v30 = [(INSystemAppMapper *)self matchForBundleIdentifier:?];
  bundleIdentifierForCurrentPlatform2 = [v30 bundleIdentifierForCurrentPlatform];
  v36[1] = bundleIdentifierForCurrentPlatform2;
  v35[2] = @"com.apple.AccessibilityUtilities.AXSettingsShortcuts";
  v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.Preferences"];
  v27 = [(INSystemAppMapper *)self matchForBundleIdentifier:?];
  bundleIdentifierForCurrentPlatform3 = [v27 bundleIdentifierForCurrentPlatform];
  v36[2] = bundleIdentifierForCurrentPlatform3;
  v35[3] = @"com.apple.ActionKit.BundledIntentHandler";
  v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.shortcuts"];
  v24 = [(INSystemAppMapper *)self matchForBundleIdentifier:?];
  bundleIdentifierForCurrentPlatform4 = [v24 bundleIdentifierForCurrentPlatform];
  v36[3] = bundleIdentifierForCurrentPlatform4;
  v35[4] = @"com.apple.UniversalAccess.UASettingsShortcuts";
  v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.systempreferences"];
  v21 = [(INSystemAppMapper *)self matchForBundleIdentifier:?];
  bundleIdentifierForCurrentPlatform5 = [v21 bundleIdentifierForCurrentPlatform];
  v36[4] = bundleIdentifierForCurrentPlatform5;
  v35[5] = @"com.apple.mobiletimer-framework.MobileTimerIntents";
  v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.mobiletimer"];
  v18 = [(INSystemAppMapper *)self matchForBundleIdentifier:?];
  bundleIdentifierForCurrentPlatform6 = [v18 bundleIdentifierForCurrentPlatform];
  v36[5] = bundleIdentifierForCurrentPlatform6;
  v35[6] = @"com.apple.PBBridgeSupport.BridgeIntents";
  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.Bridge"];
  v15 = [(INSystemAppMapper *)self matchForBundleIdentifier:?];
  bundleIdentifierForCurrentPlatform7 = [v15 bundleIdentifierForCurrentPlatform];
  v36[6] = bundleIdentifierForCurrentPlatform7;
  v35[7] = @"com.apple.PassKit.PassKitIntentsExtension";
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.MobileSMS"];
  v5 = [(INSystemAppMapper *)self matchForBundleIdentifier:v4];
  bundleIdentifierForCurrentPlatform8 = [v5 bundleIdentifierForCurrentPlatform];
  v36[7] = bundleIdentifierForCurrentPlatform8;
  v35[8] = @"com.apple.HomeKit.HomeKitIntentExtension";
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.Home"];
  v8 = [(INSystemAppMapper *)self matchForBundleIdentifier:v7];
  bundleIdentifierForCurrentPlatform9 = [v8 bundleIdentifierForCurrentPlatform];
  v36[8] = bundleIdentifierForCurrentPlatform9;
  v35[9] = @"com.apple.DoNotDisturb.Intents";
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.Preferences"];
  v11 = [(INSystemAppMapper *)self matchForBundleIdentifier:v10];
  bundleIdentifierForCurrentPlatform10 = [v11 bundleIdentifierForCurrentPlatform];
  v36[9] = bundleIdentifierForCurrentPlatform10;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:10];

  return v14;
}

- (id)bundleIdentifiersForIntentExecutionMatchingBundleIdentifier:(id)identifier
{
  v11[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = [(NSDictionary *)self->_bundleIdentifierGroupingForIntentExecution objectForKey:identifierCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 iOS];
  }

  else
  {
    v8 = [(INSystemAppMapper *)self matchForBundleIdentifier:identifierCopy];
    bundleIdentifierForCurrentPlatform = [v8 bundleIdentifierForCurrentPlatform];

    if (bundleIdentifierForCurrentPlatform)
    {
      v11[0] = bundleIdentifierForCurrentPlatform;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)matchForBundleIdentifier:(id)identifier intentName:(id)name
{
  name = [(INSystemAppMapper *)self matchForBundleIdentifier:identifier, name];

  return name;
}

- (id)matchForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    std::string::basic_string[abi:ne200100]<0>(__p, [identifierCopy UTF8String]);
    left = self->_mapping.__tree_.__end_node_.__left_;
    p_end_node = &self->_mapping.__tree_.__end_node_;
    v6 = left;
    if (left)
    {
      if ((v41 & 0x80u) == 0)
      {
        v8 = v41;
      }

      else
      {
        v8 = __p[1];
      }

      if ((v41 & 0x80u) == 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      v10 = p_end_node;
      do
      {
        v11 = *(v6 + 55);
        if (v11 >= 0)
        {
          v12 = *(v6 + 55);
        }

        else
        {
          v12 = *(v6 + 40);
        }

        if (v11 >= 0)
        {
          v13 = (v6 + 32);
        }

        else
        {
          v13 = *(v6 + 32);
        }

        if (v8 >= v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = v8;
        }

        v15 = memcmp(v13, v9, v14);
        v16 = v12 < v8;
        if (v15)
        {
          v16 = v15 < 0;
        }

        v17 = !v16;
        if (v16)
        {
          v18 = 8;
        }

        else
        {
          v18 = 0;
        }

        if (v17)
        {
          v10 = v6;
        }

        v6 = *(v6 + v18);
      }

      while (v6);
      if (v10 == p_end_node)
      {
        goto LABEL_41;
      }

      v19 = *(v10 + 55);
      if (v19 >= 0)
      {
        v20 = *(v10 + 55);
      }

      else
      {
        v20 = *(v10 + 40);
      }

      if (v19 >= 0)
      {
        v21 = (v10 + 32);
      }

      else
      {
        v21 = *(v10 + 32);
      }

      if (v20 >= v8)
      {
        v22 = v8;
      }

      else
      {
        v22 = v20;
      }

      v23 = memcmp(v9, v21, v22);
      v24 = v8 < v20;
      if (v23)
      {
        v24 = v23 < 0;
      }

      if (v24)
      {
LABEL_41:
        v6 = 0;
      }

      else
      {
        v26 = *(v10 + 56);
        v25 = *(v10 + 64);
        v27 = *(v10 + 72);
        v28 = *(v10 + 80);
        v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v25];
        v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v26];
        v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v27];
        v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v28];
        if ([v30 length])
        {
          v33 = v30;
        }

        else
        {
          v33 = 0;
        }

        if ([v29 length])
        {
          v34 = v29;
        }

        else
        {
          v34 = 0;
        }

        v35 = [v31 length];
        v36 = [v32 length];
        if (v35)
        {
          v37 = v31;
        }

        else
        {
          v37 = 0;
        }

        if (v36)
        {
          v38 = v32;
        }

        else
        {
          v38 = 0;
        }

        v6 = [INSystemAppMatch matchWithiOSBundleIdentifier:v33 macOSBundleIdentifier:v34 watchOSBundleIdentifier:v37 tvOSBundleIdentifier:v38];
      }
    }

    if (v41 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)resolvedIntentMatchingAppBundleIdentifier:(id)identifier preferredCallProvider:(int64_t)provider intentClassName:(id)name
{
  v25[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  nameCopy = name;
  v25[0] = @"com.apple.AccessibilityUtilities.AXSettingsShortcuts";
  v25[1] = @"com.apple.UniversalAccess.UASettingsShortcuts";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  if ([v10 containsObject:identifierCopy])
  {
    v11 = [(INSystemAppMapper *)self resolvedIntentForAccessibilityActionWithBundleIdentifier:identifierCopy intentClassName:nameCopy];
  }

  else
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.NanoSettings"];
    v23 = v12;
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.Bridge"];
    v24 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];

    v15 = [v14 objectForKey:identifierCopy];
    if (v15)
    {
      v16 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v15 allowPlaceholder:0 error:0];
      v17 = v16;
      if (v16 && ([v16 applicationState], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isInstalled"), v18, (v19 & 1) != 0))
      {
        v20 = [[INAppDescriptor alloc] initWithApplicationRecord:v17];
        v21 = [[INIntentDescriptor alloc] initWithIntentClassName:nameCopy localizedName:0 bundleIdentifier:0 displayableBundleIdentifier:0 extensionBundleIdentifier:0 uiExtensionBundleIdentifier:0 counterpartIdentifiers:0 teamIdentifier:0 preferredCallProvider:provider supportedIntents:0 bundleURL:0 documentTypes:0];
        v11 = [(INIntentDescriptor *)v21 descriptorWithAppDescriptor:v20];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)resolvedIntentMatchingExtensionBundleIdentifier:(id)identifier preferredCallProvider:(int64_t)provider intentClassName:(id)name
{
  v30[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  nameCopy = name;
  v30[0] = @"com.apple.AccessibilityUtilities.AXSettingsShortcuts";
  v30[1] = @"com.apple.UniversalAccess.UASettingsShortcuts";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  if ([v9 containsObject:identifierCopy])
  {
    v10 = [(INSystemAppMapper *)self resolvedIntentForAccessibilityActionWithBundleIdentifier:identifierCopy intentClassName:nameCopy];
  }

  else
  {
    extensionToLaunchableAppBundleIdentifierMapping = [(INSystemAppMapper *)self extensionToLaunchableAppBundleIdentifierMapping];
    v12 = [extensionToLaunchableAppBundleIdentifierMapping objectForKey:identifierCopy];

    extensionToDisplayableAppBundleIdentifierMapping = [(INSystemAppMapper *)self extensionToDisplayableAppBundleIdentifierMapping];
    v14 = [extensionToDisplayableAppBundleIdentifierMapping objectForKey:identifierCopy];

    if (v12 | v14)
    {
      if (provider == 2)
      {
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.facetime"];
        v16 = [(INSystemAppMapper *)self matchForBundleIdentifier:v15];
        bundleIdentifierForCurrentPlatform = [v16 bundleIdentifierForCurrentPlatform];

        v14 = bundleIdentifierForCurrentPlatform;
      }

      v18 = objc_alloc(MEMORY[0x1E69635F8]);
      if (v12)
      {
        v19 = v12;
      }

      else
      {
        v19 = v14;
      }

      v20 = [v18 initWithBundleIdentifier:v19 allowPlaceholder:0 error:0];
      localizedName = [v20 localizedName];
      if (v14 && ([v12 isEqualToString:v14] & 1) == 0)
      {
        v21 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v14 allowPlaceholder:0 error:0];
        localizedName2 = [v21 localizedName];

        localizedName = localizedName2;
      }

      v23 = [INIntentDescriptor alloc];
      in_counterpartIdentifiers = [v20 in_counterpartIdentifiers];
      teamIdentifier = [v20 teamIdentifier];
      in_supportedIntents = [v20 in_supportedIntents];
      v10 = [(INIntentDescriptor *)v23 initWithIntentClassName:nameCopy localizedName:localizedName bundleIdentifier:v12 displayableBundleIdentifier:v14 extensionBundleIdentifier:identifierCopy uiExtensionBundleIdentifier:0 counterpartIdentifiers:in_counterpartIdentifiers teamIdentifier:teamIdentifier preferredCallProvider:provider supportedIntents:in_supportedIntents bundleURL:0 documentTypes:0];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)resolvedAppMatchingExtensionBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  extensionToLaunchableAppBundleIdentifierMapping = [(INSystemAppMapper *)self extensionToLaunchableAppBundleIdentifierMapping];
  v6 = [extensionToLaunchableAppBundleIdentifierMapping objectForKey:identifierCopy];

  extensionToDisplayableAppBundleIdentifierMapping = [(INSystemAppMapper *)self extensionToDisplayableAppBundleIdentifierMapping];
  v8 = [extensionToDisplayableAppBundleIdentifierMapping objectForKey:identifierCopy];

  if (!(v6 | v8))
  {
    v12 = 0;
    goto LABEL_16;
  }

  v9 = objc_alloc(MEMORY[0x1E69635F8]);
  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  v11 = [v9 initWithBundleIdentifier:v10 allowPlaceholder:0 error:0];
  if (v11)
  {
    if (!v6 || v8)
    {
      if (v6 || !v8)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v8 = v6;
    }

    v6 = v8;
    v8 = v6;
LABEL_14:
    v13 = [INAppDescriptor alloc];
    localizedName = [v11 localizedName];
    in_counterpartIdentifiers = [v11 in_counterpartIdentifiers];
    teamIdentifier = [v11 teamIdentifier];
    in_supportedIntents = [v11 in_supportedIntents];
    v14 = [v11 URL];
    in_documentTypes = [v11 in_documentTypes];
    v12 = [(INAppDescriptor *)v13 initWithLocalizedName:localizedName bundleIdentifier:v6 extensionBundleIdentifier:identifierCopy counterpartIdentifiers:in_counterpartIdentifiers teamIdentifier:teamIdentifier supportedIntents:in_supportedIntents bundleURL:v14 documentTypes:in_documentTypes];

    goto LABEL_15;
  }

  v12 = 0;
LABEL_15:

LABEL_16:

  return v12;
}

+ (id)supportedIntentsOverridesForBundleIdentifier:(id)identifier
{
  v16[4] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.NanoAlarm"];
  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{@"MTCreateAlarmIntent", @"MTDeleteAlarmIntent", @"MTDisableAlarmIntent", @"MTEnableAlarmIntent", @"MTGetAlarmsIntent", @"MTToggleAlarmIntent", @"MTUpdateAlarmIntent", 0, v4}];
  v16[0] = v5;
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.private.NanoTimer"];
  v15[1] = v6;
  v7 = [MEMORY[0x1E695DFD8] setWithObject:@"INCreateTimerIntent"];
  v16[1] = v7;
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.NanoSettings"];
  v15[2] = v8;
  v9 = [MEMORY[0x1E695DFD8] setWithObject:@"DNDToggleDoNotDisturbIntent"];
  v16[2] = v9;
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.VoiceMemos"];
  v15[3] = v10;
  v11 = [MEMORY[0x1E695DFD8] setWithObject:@"PlaybackVoiceMemoIntent"];
  v16[3] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];

  v13 = [v12 objectForKey:identifierCopy];

  return v13;
}

@end