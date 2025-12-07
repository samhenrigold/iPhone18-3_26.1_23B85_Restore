@interface LNSystemProtocol
+ (LNSystemProtocol)assistantIntentProtocol;
+ (LNSystemProtocol)assistantInvocableIntentProtocol;
+ (LNSystemProtocol)audioRecordingProtocol;
+ (LNSystemProtocol)audioStartingProtocol;
+ (LNSystemProtocol)cameraCaptureProtocol;
+ (LNSystemProtocol)cancelProtocol;
+ (LNSystemProtocol)changeBinarySettingSystemProtocol;
+ (LNSystemProtocol)closeEntityProtocol;
+ (LNSystemProtocol)conditionallyEnabledProtocol;
+ (LNSystemProtocol)controlConfigurationProtocol;
+ (LNSystemProtocol)copyEntityProtocol;
+ (LNSystemProtocol)copySystemProtocol;
+ (LNSystemProtocol)createEntitySystemProtocol;
+ (LNSystemProtocol)cutEntityProtocol;
+ (LNSystemProtocol)cutSystemProtocol;
+ (LNSystemProtocol)deleteEntitySystemProtocol;
+ (LNSystemProtocol)duplicateEntitySystemProtocol;
+ (LNSystemProtocol)enterMarkupProtocol;
+ (LNSystemProtocol)entityUpdatingProtocol;
+ (LNSystemProtocol)exitMarkupProtocol;
+ (LNSystemProtocol)favoriteEntityProtocol;
+ (LNSystemProtocol)focusConfigurationProtocol;
+ (LNSystemProtocol)foregroundContinuableProtocol;
+ (LNSystemProtocol)moveSpatialProtocol;
+ (LNSystemProtocol)navigateSequentiallyProtocol;
+ (LNSystemProtocol)openEntitySystemProtocol;
+ (LNSystemProtocol)pasteSystemProtocol;
+ (LNSystemProtocol)pauseWorkoutProtocol;
+ (LNSystemProtocol)playVideoProtocol;
+ (LNSystemProtocol)previewEntityProtocol;
+ (LNSystemProtocol)progressReportingProtocol;
+ (LNSystemProtocol)propertyUpdaterProtocol;
+ (LNSystemProtocol)protocolWithIdentifier:(id)identifier;
+ (LNSystemProtocol)pushToTalkTransmissionProtocol;
+ (LNSystemProtocol)putEntityInContainerProtocol;
+ (LNSystemProtocol)requiresMDMChecksProtocol;
+ (LNSystemProtocol)resizeProtocol;
+ (LNSystemProtocol)resumeWorkoutProtocol;
+ (LNSystemProtocol)saveEntitySystemProtocol;
+ (LNSystemProtocol)scrollProtocol;
+ (LNSystemProtocol)searchSystemProtocol;
+ (LNSystemProtocol)sendMailProtocol;
+ (LNSystemProtocol)sessionStartingProtocol;
+ (LNSystemProtocol)setMailMessageIsReadProtocol;
+ (LNSystemProtocol)setValueProtocol;
+ (LNSystemProtocol)showInAppSearchResultsProtocol;
+ (LNSystemProtocol)showInAppStringSearchResultsProtocol;
+ (LNSystemProtocol)showSearchResultsInAppProtocol;
+ (LNSystemProtocol)showStringSearchResultsInAppProtocol;
+ (LNSystemProtocol)snippetProtocol;
+ (LNSystemProtocol)staccatoLongPressProtocol;
+ (LNSystemProtocol)startDiveProtocol;
+ (LNSystemProtocol)startWorkoutProtocol;
+ (LNSystemProtocol)stingProtocol;
+ (LNSystemProtocol)systemFrameworkProtocol;
+ (LNSystemProtocol)toggleProtocol;
+ (LNSystemProtocol)undoSystemProtocol;
+ (LNSystemProtocol)undoableProtocol;
+ (LNSystemProtocol)urlRepresentableProtocol;
+ (LNSystemProtocol)widgetConfigurationProtocol;
+ (LNSystemProtocol)xpcListenerProtocol;
+ (LNSystemProtocol)zoomProtocol;
+ (NSArray)allProtocols;
+ (id)allProtocolsByIdentifier;
+ (id)ofKind:(int64_t)kind;
+ (id)parametersForProtocolWithIdentifier:(id)identifier;
+ (id)protocolOrNilWithIdentifier:(id)identifier;
+ (id)sendMessageProtocol;
+ (id)systemProtocolKindsByIdentifier;
- (BOOL)isEqual:(id)equal;
- (LNSystemProtocol)initWithCoder:(id)coder;
- (LNSystemProtocol)initWithIdentifier:(id)identifier parameters:(id)parameters;
- (NSString)typeName;
- (id)description;
- (int64_t)kind;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNSystemProtocol

+ (LNSystemProtocol)focusConfigurationProtocol
{
  if (focusConfigurationProtocol_onceToken[0] != -1)
  {
    dispatch_once(focusConfigurationProtocol_onceToken, &__block_literal_global_215);
  }

  v3 = focusConfigurationProtocol_value;

  return v3;
}

void __46__LNSystemProtocol_focusConfigurationProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.FocusConfiguration"];
  v1 = focusConfigurationProtocol_value;
  focusConfigurationProtocol_value = v0;
}

void __44__LNSystemProtocol_allProtocolsByIdentifier__block_invoke(uint64_t a1)
{
  v187[61] = *MEMORY[0x1E69E9840];
  v186[0] = @"com.apple.link.systemProtocol.AudioRecording";
  v1 = [LNSystemProtocol alloc];
  v185 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.AudioRecording"];
  v184 = [(LNSystemProtocol *)v1 initWithIdentifier:@"com.apple.link.systemProtocol.AudioRecording" parameters:v185];
  v187[0] = v184;
  v186[1] = @"com.apple.link.systemProtocol.AudioStarting";
  v2 = [LNSystemProtocol alloc];
  v183 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.AudioStarting"];
  v182 = [(LNSystemProtocol *)v2 initWithIdentifier:@"com.apple.link.systemProtocol.AudioStarting" parameters:v183];
  v187[1] = v182;
  v186[2] = @"com.apple.link.systemProtocol.Cancel";
  v3 = [LNSystemProtocol alloc];
  v181 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.Cancel"];
  v180 = [(LNSystemProtocol *)v3 initWithIdentifier:@"com.apple.link.systemProtocol.Cancel" parameters:v181];
  v187[2] = v180;
  v186[3] = @"com.apple.link.systemProtocol.ChangeBinarySetting";
  v4 = [LNSystemProtocol alloc];
  v179 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.ChangeBinarySetting"];
  v178 = [(LNSystemProtocol *)v4 initWithIdentifier:@"com.apple.link.systemProtocol.ChangeBinarySetting" parameters:v179];
  v187[3] = v178;
  v186[4] = @"com.apple.link.systemProtocol.CloseEntity";
  v5 = [LNSystemProtocol alloc];
  v177 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.CloseEntity"];
  v176 = [(LNSystemProtocol *)v5 initWithIdentifier:@"com.apple.link.systemProtocol.CloseEntity" parameters:v177];
  v187[4] = v176;
  v186[5] = @"com.apple.link.systemProtocol.ConditionallyEnabled";
  v6 = [LNSystemProtocol alloc];
  v175 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.ConditionallyEnabled"];
  v174 = [(LNSystemProtocol *)v6 initWithIdentifier:@"com.apple.link.systemProtocol.ConditionallyEnabled" parameters:v175];
  v187[5] = v174;
  v186[6] = @"com.apple.link.systemProtocol.ControlConfiguration";
  v7 = [LNSystemProtocol alloc];
  v173 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.ControlConfiguration"];
  v172 = [(LNSystemProtocol *)v7 initWithIdentifier:@"com.apple.link.systemProtocol.ControlConfiguration" parameters:v173];
  v187[6] = v172;
  v186[7] = @"com.apple.link.systemProtocol.Copy";
  v8 = [LNSystemProtocol alloc];
  v171 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.Copy"];
  v170 = [(LNSystemProtocol *)v8 initWithIdentifier:@"com.apple.link.systemProtocol.Copy" parameters:v171];
  v187[7] = v170;
  v186[8] = @"com.apple.link.systemProtocol.CopyEntity";
  v9 = [LNSystemProtocol alloc];
  v169 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.CopyEntity"];
  v168 = [(LNSystemProtocol *)v9 initWithIdentifier:@"com.apple.link.systemProtocol.CopyEntity" parameters:v169];
  v187[8] = v168;
  v186[9] = @"com.apple.link.systemProtocol.CreateEntity";
  v10 = [LNSystemProtocol alloc];
  v167 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.CreateEntity"];
  v166 = [(LNSystemProtocol *)v10 initWithIdentifier:@"com.apple.link.systemProtocol.CreateEntity" parameters:v167];
  v187[9] = v166;
  v186[10] = @"com.apple.link.systemProtocol.Cut";
  v11 = [LNSystemProtocol alloc];
  v165 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.Cut"];
  v164 = [(LNSystemProtocol *)v11 initWithIdentifier:@"com.apple.link.systemProtocol.Cut" parameters:v165];
  v187[10] = v164;
  v186[11] = @"com.apple.link.systemProtocol.CutEntity";
  v12 = [LNSystemProtocol alloc];
  v163 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.CutEntity"];
  v162 = [(LNSystemProtocol *)v12 initWithIdentifier:@"com.apple.link.systemProtocol.CutEntity" parameters:v163];
  v187[11] = v162;
  v186[12] = @"com.apple.link.systemProtocol.DeleteEntity";
  v13 = [LNSystemProtocol alloc];
  v161 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.DeleteEntity"];
  v160 = [(LNSystemProtocol *)v13 initWithIdentifier:@"com.apple.link.systemProtocol.DeleteEntity" parameters:v161];
  v187[12] = v160;
  v186[13] = @"com.apple.link.systemProtocol.DuplicateEntity";
  v14 = [LNSystemProtocol alloc];
  v159 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.DuplicateEntity"];
  v158 = [(LNSystemProtocol *)v14 initWithIdentifier:@"com.apple.link.systemProtocol.DuplicateEntity" parameters:v159];
  v187[13] = v158;
  v186[14] = @"com.apple.link.systemProtocol.EnterMarkup";
  v15 = [LNSystemProtocol alloc];
  v157 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.EnterMarkup"];
  v156 = [(LNSystemProtocol *)v15 initWithIdentifier:@"com.apple.link.systemProtocol.EnterMarkup" parameters:v157];
  v187[14] = v156;
  v186[15] = @"com.apple.link.systemProtocol.EntityUpdating";
  v16 = [LNSystemProtocol alloc];
  v155 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.EntityUpdating"];
  v154 = [(LNSystemProtocol *)v16 initWithIdentifier:@"com.apple.link.systemProtocol.EntityUpdating" parameters:v155];
  v187[15] = v154;
  v186[16] = @"com.apple.link.systemProtocol.ExitMarkup";
  v17 = [LNSystemProtocol alloc];
  v153 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.ExitMarkup"];
  v152 = [(LNSystemProtocol *)v17 initWithIdentifier:@"com.apple.link.systemProtocol.ExitMarkup" parameters:v153];
  v187[16] = v152;
  v186[17] = @"com.apple.link.systemProtocol.FavoriteEntity";
  v18 = [LNSystemProtocol alloc];
  v151 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.FavoriteEntity"];
  v150 = [(LNSystemProtocol *)v18 initWithIdentifier:@"com.apple.link.systemProtocol.FavoriteEntity" parameters:v151];
  v187[17] = v150;
  v186[18] = @"com.apple.link.systemProtocol.FocusConfiguration";
  v19 = [LNSystemProtocol alloc];
  v149 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.FocusConfiguration"];
  v148 = [(LNSystemProtocol *)v19 initWithIdentifier:@"com.apple.link.systemProtocol.FocusConfiguration" parameters:v149];
  v187[18] = v148;
  v186[19] = @"com.apple.link.systemProtocol.ForegroundContinuable";
  v20 = [LNSystemProtocol alloc];
  v147 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.ForegroundContinuable"];
  v146 = [(LNSystemProtocol *)v20 initWithIdentifier:@"com.apple.link.systemProtocol.ForegroundContinuable" parameters:v147];
  v187[19] = v146;
  v186[20] = @"com.apple.link.systemProtocol.MoveSpatial";
  v21 = [LNSystemProtocol alloc];
  v145 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.MoveSpatial"];
  v144 = [(LNSystemProtocol *)v21 initWithIdentifier:@"com.apple.link.systemProtocol.MoveSpatial" parameters:v145];
  v187[20] = v144;
  v186[21] = @"com.apple.link.systemProtocol.NavigateSequentially";
  v22 = [LNSystemProtocol alloc];
  v143 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.NavigateSequentially"];
  v142 = [(LNSystemProtocol *)v22 initWithIdentifier:@"com.apple.link.systemProtocol.NavigateSequentially" parameters:v143];
  v187[21] = v142;
  v186[22] = @"com.apple.link.systemProtocol.OpenEntity";
  v23 = [LNSystemProtocol alloc];
  v141 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.OpenEntity"];
  v140 = [(LNSystemProtocol *)v23 initWithIdentifier:@"com.apple.link.systemProtocol.OpenEntity" parameters:v141];
  v187[22] = v140;
  v186[23] = @"com.apple.link.systemProtocol.Paste";
  v24 = [LNSystemProtocol alloc];
  v139 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.Paste"];
  v138 = [(LNSystemProtocol *)v24 initWithIdentifier:@"com.apple.link.systemProtocol.Paste" parameters:v139];
  v187[23] = v138;
  v186[24] = @"com.apple.link.systemProtocol.PauseWorkout";
  v25 = [LNSystemProtocol alloc];
  v137 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.PauseWorkout"];
  v136 = [(LNSystemProtocol *)v25 initWithIdentifier:@"com.apple.link.systemProtocol.PauseWorkout" parameters:v137];
  v187[24] = v136;
  v186[25] = @"com.apple.link.systemProtocol.ProgressReporting";
  v26 = [LNSystemProtocol alloc];
  v135 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.ProgressReporting"];
  v134 = [(LNSystemProtocol *)v26 initWithIdentifier:@"com.apple.link.systemProtocol.ProgressReporting" parameters:v135];
  v187[25] = v134;
  v186[26] = @"com.apple.link.systemProtocol.PreviewEntity";
  v27 = [LNSystemProtocol alloc];
  v133 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.PreviewEntity"];
  v132 = [(LNSystemProtocol *)v27 initWithIdentifier:@"com.apple.link.systemProtocol.PreviewEntity" parameters:v133];
  v187[26] = v132;
  v186[27] = @"com.apple.link.systemProtocol.PropertyUpdater";
  v28 = [LNSystemProtocol alloc];
  v131 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.PropertyUpdater"];
  v130 = [(LNSystemProtocol *)v28 initWithIdentifier:@"com.apple.link.systemProtocol.PropertyUpdater" parameters:v131];
  v187[27] = v130;
  v186[28] = @"com.apple.link.systemProtocol.PushToTalkTransmission";
  v29 = [LNSystemProtocol alloc];
  v129 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.PushToTalkTransmission"];
  v128 = [(LNSystemProtocol *)v29 initWithIdentifier:@"com.apple.link.systemProtocol.PushToTalkTransmission" parameters:v129];
  v187[28] = v128;
  v186[29] = @"com.apple.link.systemProtocol.PutEntityInContainer";
  v30 = [LNSystemProtocol alloc];
  v127 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.PutEntityInContainer"];
  v126 = [(LNSystemProtocol *)v30 initWithIdentifier:@"com.apple.link.systemProtocol.PutEntityInContainer" parameters:v127];
  v187[29] = v126;
  v186[30] = @"com.apple.link.systemProtocol.RequiresMDMChecks";
  v31 = [LNSystemProtocol alloc];
  v125 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.RequiresMDMChecks"];
  v124 = [(LNSystemProtocol *)v31 initWithIdentifier:@"com.apple.link.systemProtocol.RequiresMDMChecks" parameters:v125];
  v187[30] = v124;
  v186[31] = @"com.apple.link.systemProtocol.Resize";
  v32 = [LNSystemProtocol alloc];
  v123 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.Resize"];
  v122 = [(LNSystemProtocol *)v32 initWithIdentifier:@"com.apple.link.systemProtocol.Resize" parameters:v123];
  v187[31] = v122;
  v186[32] = @"com.apple.link.systemProtocol.ResumeWorkout";
  v33 = [LNSystemProtocol alloc];
  v121 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.ResumeWorkout"];
  v120 = [(LNSystemProtocol *)v33 initWithIdentifier:@"com.apple.link.systemProtocol.ResumeWorkout" parameters:v121];
  v187[32] = v120;
  v186[33] = @"com.apple.link.systemProtocol.SaveEntity";
  v34 = [LNSystemProtocol alloc];
  v119 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.SaveEntity"];
  v118 = [(LNSystemProtocol *)v34 initWithIdentifier:@"com.apple.link.systemProtocol.SaveEntity" parameters:v119];
  v187[33] = v118;
  v186[34] = @"com.apple.link.systemProtocol.Scroll";
  v35 = [LNSystemProtocol alloc];
  v117 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.Scroll"];
  v116 = [(LNSystemProtocol *)v35 initWithIdentifier:@"com.apple.link.systemProtocol.Scroll" parameters:v117];
  v187[34] = v116;
  v186[35] = @"com.apple.link.systemProtocol.Search";
  v36 = [LNSystemProtocol alloc];
  v115 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.Search"];
  v114 = [(LNSystemProtocol *)v36 initWithIdentifier:@"com.apple.link.systemProtocol.Search" parameters:v115];
  v187[35] = v114;
  v186[36] = @"com.apple.link.systemProtocol.SessionStarting";
  v37 = [LNSystemProtocol alloc];
  v113 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.SessionStarting"];
  v112 = [(LNSystemProtocol *)v37 initWithIdentifier:@"com.apple.link.systemProtocol.SessionStarting" parameters:v113];
  v187[36] = v112;
  v186[37] = @"com.apple.link.systemProtocol.SetValue";
  v38 = [LNSystemProtocol alloc];
  v111 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.SetValue"];
  v110 = [(LNSystemProtocol *)v38 initWithIdentifier:@"com.apple.link.systemProtocol.SetValue" parameters:v111];
  v187[37] = v110;
  v186[38] = @"com.apple.link.systemProtocol.Snippet";
  v39 = [LNSystemProtocol alloc];
  v109 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.Snippet"];
  v108 = [(LNSystemProtocol *)v39 initWithIdentifier:@"com.apple.link.systemProtocol.Snippet" parameters:v109];
  v187[38] = v108;
  v186[39] = @"com.apple.link.systemProtocol.StartDive";
  v40 = [LNSystemProtocol alloc];
  v107 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.StartDive"];
  v106 = [(LNSystemProtocol *)v40 initWithIdentifier:@"com.apple.link.systemProtocol.StartDive" parameters:v107];
  v187[39] = v106;
  v186[40] = @"com.apple.link.systemProtocol.StartWorkout";
  v41 = [LNSystemProtocol alloc];
  v105 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.StartWorkout"];
  v104 = [(LNSystemProtocol *)v41 initWithIdentifier:@"com.apple.link.systemProtocol.StartWorkout" parameters:v105];
  v187[40] = v104;
  v186[41] = @"com.apple.link.systemProtocol.Sting";
  v42 = [LNSystemProtocol alloc];
  v103 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.Sting"];
  v102 = [(LNSystemProtocol *)v42 initWithIdentifier:@"com.apple.link.systemProtocol.Sting" parameters:v103];
  v187[41] = v102;
  v186[42] = @"com.apple.link.systemProtocol.SystemFramework";
  v43 = [LNSystemProtocol alloc];
  v101 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.SystemFramework"];
  v100 = [(LNSystemProtocol *)v43 initWithIdentifier:@"com.apple.link.systemProtocol.SystemFramework" parameters:v101];
  v187[42] = v100;
  v186[43] = @"com.apple.link.systemProtocol.Toggle";
  v44 = [LNSystemProtocol alloc];
  v99 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.Toggle"];
  v98 = [(LNSystemProtocol *)v44 initWithIdentifier:@"com.apple.link.systemProtocol.Toggle" parameters:v99];
  v187[43] = v98;
  v186[44] = @"com.apple.link.systemProtocol.Undo";
  v45 = [LNSystemProtocol alloc];
  v97 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.Undo"];
  v96 = [(LNSystemProtocol *)v45 initWithIdentifier:@"com.apple.link.systemProtocol.Undo" parameters:v97];
  v187[44] = v96;
  v186[45] = @"com.apple.link.systemProtocol.Undoable";
  v46 = [LNSystemProtocol alloc];
  v95 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.Undoable"];
  v94 = [(LNSystemProtocol *)v46 initWithIdentifier:@"com.apple.link.systemProtocol.Undoable" parameters:v95];
  v187[45] = v94;
  v186[46] = @"com.apple.link.systemProtocol.URLRepresentable";
  v47 = [LNSystemProtocol alloc];
  v93 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.URLRepresentable"];
  v92 = [(LNSystemProtocol *)v47 initWithIdentifier:@"com.apple.link.systemProtocol.URLRepresentable" parameters:v93];
  v187[46] = v92;
  v186[47] = @"com.apple.link.systemProtocol.WidgetConfiguration";
  v48 = [LNSystemProtocol alloc];
  v91 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.WidgetConfiguration"];
  v90 = [(LNSystemProtocol *)v48 initWithIdentifier:@"com.apple.link.systemProtocol.WidgetConfiguration" parameters:v91];
  v187[47] = v90;
  v186[48] = @"com.apple.link.systemProtocol.XPCListener";
  v49 = [LNSystemProtocol alloc];
  v89 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.XPCListener"];
  v88 = [(LNSystemProtocol *)v49 initWithIdentifier:@"com.apple.link.systemProtocol.XPCListener" parameters:v89];
  v187[48] = v88;
  v186[49] = @"com.apple.link.systemProtocol.Zoom";
  v50 = [LNSystemProtocol alloc];
  v87 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.Zoom"];
  v86 = [(LNSystemProtocol *)v50 initWithIdentifier:@"com.apple.link.systemProtocol.Zoom" parameters:v87];
  v187[49] = v86;
  v186[50] = @"com.apple.link.systemProtocol.AssistantIntent";
  v51 = [LNSystemProtocol alloc];
  v85 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.AssistantIntent"];
  v84 = [(LNSystemProtocol *)v51 initWithIdentifier:@"com.apple.link.systemProtocol.AssistantIntent" parameters:v85];
  v187[50] = v84;
  v186[51] = @"com.apple.link.systemProtocol.AssistantInvocableIntent";
  v52 = [LNSystemProtocol alloc];
  v83 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.AssistantInvocableIntent"];
  v82 = [(LNSystemProtocol *)v52 initWithIdentifier:@"com.apple.link.systemProtocol.AssistantInvocableIntent" parameters:v83];
  v187[51] = v82;
  v186[52] = @"com.apple.link.systemProtocol.SendMail";
  v53 = [LNSystemProtocol alloc];
  v81 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.SendMail"];
  v80 = [(LNSystemProtocol *)v53 initWithIdentifier:@"com.apple.link.systemProtocol.SendMail" parameters:v81];
  v187[52] = v80;
  v186[53] = @"com.apple.link.systemProtocol.SetMailMessageIsRead";
  v54 = [LNSystemProtocol alloc];
  v79 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.SetMailMessageIsRead"];
  v78 = [(LNSystemProtocol *)v54 initWithIdentifier:@"com.apple.link.systemProtocol.SetMailMessageIsRead" parameters:v79];
  v187[53] = v78;
  v186[54] = @"com.apple.link.systemProtocol.SendMessage";
  v55 = [LNSystemProtocol alloc];
  v77 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.SendMessage"];
  v76 = [(LNSystemProtocol *)v55 initWithIdentifier:@"com.apple.link.systemProtocol.SendMessage" parameters:v77];
  v187[54] = v76;
  v186[55] = @"com.apple.link.systemProtocol.PlayVideo";
  v56 = [LNSystemProtocol alloc];
  v75 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.PlayVideo"];
  v74 = [(LNSystemProtocol *)v56 initWithIdentifier:@"com.apple.link.systemProtocol.PlayVideo" parameters:v75];
  v187[55] = v74;
  v186[56] = @"com.apple.link.systemProtocol.ShowSearchResultsInApp";
  v57 = [LNSystemProtocol alloc];
  v73 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.ShowSearchResultsInApp"];
  v58 = [(LNSystemProtocol *)v57 initWithIdentifier:@"com.apple.link.systemProtocol.ShowSearchResultsInApp" parameters:v73];
  v187[56] = v58;
  v186[57] = @"com.apple.link.systemProtocol.ShowInAppSearchResults";
  v59 = [LNSystemProtocol alloc];
  v60 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.ShowInAppSearchResults"];
  v61 = [(LNSystemProtocol *)v59 initWithIdentifier:@"com.apple.link.systemProtocol.ShowInAppSearchResults" parameters:v60];
  v187[57] = v61;
  v186[58] = @"com.apple.link.systemProtocol.ShowInAppStringSearchResults";
  v62 = [LNSystemProtocol alloc];
  v63 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.ShowInAppStringSearchResults"];
  v64 = [(LNSystemProtocol *)v62 initWithIdentifier:@"com.apple.link.systemProtocol.ShowInAppStringSearchResults" parameters:v63];
  v187[58] = v64;
  v186[59] = @"com.apple.link.systemProtocol.CameraCapture";
  v65 = [LNSystemProtocol alloc];
  v66 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.CameraCapture"];
  v67 = [(LNSystemProtocol *)v65 initWithIdentifier:@"com.apple.link.systemProtocol.CameraCapture" parameters:v66];
  v187[59] = v67;
  v186[60] = @"com.apple.link.systemProtocol.StaccatoLongPress";
  v68 = [LNSystemProtocol alloc];
  v69 = [objc_opt_class() parametersForProtocolWithIdentifier:@"com.apple.link.systemProtocol.StaccatoLongPress"];
  v70 = [(LNSystemProtocol *)v68 initWithIdentifier:@"com.apple.link.systemProtocol.StaccatoLongPress" parameters:v69];
  v187[60] = v70;
  v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v187 forKeys:v186 count:61];
  v72 = allProtocolsByIdentifier_protocolsByIdentifier_8952;
  allProtocolsByIdentifier_protocolsByIdentifier_8952 = v71;
}

+ (LNSystemProtocol)foregroundContinuableProtocol
{
  if (foregroundContinuableProtocol_onceToken[0] != -1)
  {
    dispatch_once(foregroundContinuableProtocol_onceToken, &__block_literal_global_217);
  }

  v3 = foregroundContinuableProtocol_value;

  return v3;
}

+ (id)allProtocolsByIdentifier
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__LNSystemProtocol_allProtocolsByIdentifier__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (allProtocolsByIdentifier_onceToken_8951 != -1)
  {
    dispatch_once(&allProtocolsByIdentifier_onceToken_8951, block);
  }

  v2 = allProtocolsByIdentifier_protocolsByIdentifier_8952;

  return v2;
}

void __49__LNSystemProtocol_foregroundContinuableProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.ForegroundContinuable"];
  v1 = foregroundContinuableProtocol_value;
  foregroundContinuableProtocol_value = v0;
}

void __44__LNSystemProtocol_openEntitySystemProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.OpenEntity"];
  v1 = openEntitySystemProtocol_value;
  openEntitySystemProtocol_value = v0;
}

+ (LNSystemProtocol)openEntitySystemProtocol
{
  if (openEntitySystemProtocol_onceToken[0] != -1)
  {
    dispatch_once(openEntitySystemProtocol_onceToken, &__block_literal_global_223);
  }

  v3 = openEntitySystemProtocol_value;

  return v3;
}

+ (LNSystemProtocol)audioRecordingProtocol
{
  if (audioRecordingProtocol_onceToken[0] != -1)
  {
    dispatch_once(audioRecordingProtocol_onceToken, &__block_literal_global_183);
  }

  v3 = audioRecordingProtocol_value;

  return v3;
}

+ (LNSystemProtocol)audioStartingProtocol
{
  if (audioStartingProtocol_onceToken[0] != -1)
  {
    dispatch_once(audioStartingProtocol_onceToken, &__block_literal_global_8955);
  }

  v3 = audioStartingProtocol_value;

  return v3;
}

+ (LNSystemProtocol)cameraCaptureProtocol
{
  if (cameraCaptureProtocol_onceToken != -1)
  {
    dispatch_once(&cameraCaptureProtocol_onceToken, &__block_literal_global_301);
  }

  v3 = cameraCaptureProtocol_value;

  return v3;
}

+ (LNSystemProtocol)urlRepresentableProtocol
{
  if (urlRepresentableProtocol_onceToken_8953[0] != -1)
  {
    dispatch_once(urlRepresentableProtocol_onceToken_8953, &__block_literal_global_279);
  }

  v3 = urlRepresentableProtocol_value_8954;

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    v6 = equalCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      identifier = [(LNSystemProtocol *)self identifier];
      identifier2 = [(LNSystemProtocol *)v6 identifier];
      if ([identifier isEqualToString:identifier2])
      {
        parameters = [(LNSystemProtocol *)self parameters];
        parameters2 = [(LNSystemProtocol *)v6 parameters];
        v11 = parameters;
        v12 = parameters2;
        v13 = v12;
        if (v11 == v12)
        {
          v14 = 1;
        }

        else
        {
          v14 = 0;
          if (v11 && v12)
          {
            v14 = [v11 isEqualToDictionary:v12];
          }
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (unint64_t)hash
{
  identifier = [(LNSystemProtocol *)self identifier];
  v4 = [identifier hash];
  parameters = [(LNSystemProtocol *)self parameters];
  v6 = [parameters hash];

  return v6 ^ v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(LNSystemProtocol *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  parameters = [(LNSystemProtocol *)self parameters];
  [coderCopy encodeObject:parameters forKey:@"parameters"];
}

- (LNSystemProtocol)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"parameters"];

  if (v9)
  {
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    if (v10)
    {
      self = [(LNSystemProtocol *)self initWithIdentifier:v10 parameters:v9];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  typeName = [(LNSystemProtocol *)self typeName];
  v7 = [v3 stringWithFormat:@"<%@: %p, typeName: %@>", v5, self, typeName];

  return v7;
}

- (NSString)typeName
{
  identifier = [(LNSystemProtocol *)self identifier];
  v3 = [identifier componentsSeparatedByString:@"."];
  lastObject = [v3 lastObject];

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@Action", lastObject];

  return v5;
}

- (LNSystemProtocol)initWithIdentifier:(id)identifier parameters:(id)parameters
{
  identifierCopy = identifier;
  parametersCopy = parameters;
  v9 = parametersCopy;
  if (identifierCopy)
  {
    if (parametersCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNSystemProtocol.m" lineNumber:366 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNSystemProtocol.m" lineNumber:367 description:{@"Invalid parameter not satisfying: %@", @"parameters"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = LNSystemProtocol;
  v10 = [(LNSystemProtocol *)&v19 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v13 = [v9 copy];
    parameters = v10->_parameters;
    v10->_parameters = v13;

    v15 = v10;
  }

  return v10;
}

+ (id)protocolOrNilWithIdentifier:(id)identifier
{
  v13 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNSystemProtocol.m" lineNumber:484 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  allProtocolsByIdentifier = [self allProtocolsByIdentifier];
  v7 = [allProtocolsByIdentifier valueForKey:identifierCopy];

  if (!v7)
  {
    v8 = getLNLogCategoryExecution();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v12 = identifierCopy;
      _os_log_impl(&dword_18EF7E000, v8, OS_LOG_TYPE_ERROR, "%{public}@ is not a valid LN_TYPE(SystemProtocolIdentifier)", buf, 0xCu);
    }
  }

  return v7;
}

+ (id)parametersForProtocolWithIdentifier:(id)identifier
{
  v8[1] = *MEMORY[0x1E69E9840];
  if ([identifier isEqualToString:@"com.apple.link.systemProtocol.ChangeBinarySetting"])
  {
    v7 = @"setting";
    if (parametersForProtocolWithIdentifier__onceToken != -1)
    {
      dispatch_once(&parametersForProtocolWithIdentifier__onceToken, &__block_literal_global_322);
    }

    v8[0] = parametersForProtocolWithIdentifier__value;
    v3 = MEMORY[0x1E695DF20];
    v4 = parametersForProtocolWithIdentifier__value;
    v5 = [v3 dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F8];
  }

  return v5;
}

uint64_t __56__LNSystemProtocol_parametersForProtocolWithIdentifier___block_invoke()
{
  parametersForProtocolWithIdentifier__value = [[LNSystemProtocolParameter alloc] initWithVocabularyModel:2];

  return MEMORY[0x1EEE66BB8]();
}

+ (NSArray)allProtocols
{
  allProtocolsByIdentifier = [self allProtocolsByIdentifier];
  allValues = [allProtocolsByIdentifier allValues];

  return allValues;
}

+ (LNSystemProtocol)staccatoLongPressProtocol
{
  if (staccatoLongPressProtocol_onceToken != -1)
  {
    dispatch_once(&staccatoLongPressProtocol_onceToken, &__block_literal_global_303);
  }

  v3 = staccatoLongPressProtocol_value;

  return v3;
}

void __45__LNSystemProtocol_staccatoLongPressProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.CameraCapture"];
  v1 = staccatoLongPressProtocol_value;
  staccatoLongPressProtocol_value = v0;
}

void __41__LNSystemProtocol_cameraCaptureProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.CameraCapture"];
  v1 = cameraCaptureProtocol_value;
  cameraCaptureProtocol_value = v0;
}

+ (LNSystemProtocol)showInAppStringSearchResultsProtocol
{
  if (showInAppStringSearchResultsProtocol_onceToken != -1)
  {
    dispatch_once(&showInAppStringSearchResultsProtocol_onceToken, &__block_literal_global_299);
  }

  v3 = showInAppStringSearchResultsProtocol_value;

  return v3;
}

void __56__LNSystemProtocol_showInAppStringSearchResultsProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.ShowInAppStringSearchResults"];
  v1 = showInAppStringSearchResultsProtocol_value;
  showInAppStringSearchResultsProtocol_value = v0;
}

+ (LNSystemProtocol)showInAppSearchResultsProtocol
{
  if (showInAppSearchResultsProtocol_onceToken != -1)
  {
    dispatch_once(&showInAppSearchResultsProtocol_onceToken, &__block_literal_global_297);
  }

  v3 = showInAppSearchResultsProtocol_value;

  return v3;
}

void __50__LNSystemProtocol_showInAppSearchResultsProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.ShowInAppSearchResults"];
  v1 = showInAppSearchResultsProtocol_value;
  showInAppSearchResultsProtocol_value = v0;
}

+ (LNSystemProtocol)showStringSearchResultsInAppProtocol
{
  if (showStringSearchResultsInAppProtocol_onceToken != -1)
  {
    dispatch_once(&showStringSearchResultsInAppProtocol_onceToken, &__block_literal_global_295);
  }

  v3 = showStringSearchResultsInAppProtocol_value;

  return v3;
}

void __56__LNSystemProtocol_showStringSearchResultsInAppProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.ShowSearchResultsInApp"];
  v1 = showStringSearchResultsInAppProtocol_value;
  showStringSearchResultsInAppProtocol_value = v0;
}

+ (LNSystemProtocol)showSearchResultsInAppProtocol
{
  if (showSearchResultsInAppProtocol_onceToken != -1)
  {
    dispatch_once(&showSearchResultsInAppProtocol_onceToken, &__block_literal_global_293);
  }

  v3 = showSearchResultsInAppProtocol_value;

  return v3;
}

void __50__LNSystemProtocol_showSearchResultsInAppProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.ShowSearchResultsInApp"];
  v1 = showSearchResultsInAppProtocol_value;
  showSearchResultsInAppProtocol_value = v0;
}

+ (LNSystemProtocol)playVideoProtocol
{
  if (playVideoProtocol_onceToken != -1)
  {
    dispatch_once(&playVideoProtocol_onceToken, &__block_literal_global_291);
  }

  v3 = playVideoProtocol_value;

  return v3;
}

void __37__LNSystemProtocol_playVideoProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.PlayVideo"];
  v1 = playVideoProtocol_value;
  playVideoProtocol_value = v0;
}

+ (id)sendMessageProtocol
{
  if (sendMessageProtocol_onceToken != -1)
  {
    dispatch_once(&sendMessageProtocol_onceToken, &__block_literal_global_289);
  }

  v3 = sendMessageProtocol_value;

  return v3;
}

void __39__LNSystemProtocol_sendMessageProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.SendMessage"];
  v1 = sendMessageProtocol_value;
  sendMessageProtocol_value = v0;
}

+ (LNSystemProtocol)setMailMessageIsReadProtocol
{
  if (setMailMessageIsReadProtocol_onceToken != -1)
  {
    dispatch_once(&setMailMessageIsReadProtocol_onceToken, &__block_literal_global_287);
  }

  v3 = setMailMessageIsReadProtocol_value;

  return v3;
}

void __48__LNSystemProtocol_setMailMessageIsReadProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.SetMailMessageIsRead"];
  v1 = setMailMessageIsReadProtocol_value;
  setMailMessageIsReadProtocol_value = v0;
}

+ (LNSystemProtocol)sendMailProtocol
{
  if (sendMailProtocol_onceToken != -1)
  {
    dispatch_once(&sendMailProtocol_onceToken, &__block_literal_global_285);
  }

  v3 = sendMailProtocol_value;

  return v3;
}

void __36__LNSystemProtocol_sendMailProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.SendMail"];
  v1 = sendMailProtocol_value;
  sendMailProtocol_value = v0;
}

+ (LNSystemProtocol)assistantInvocableIntentProtocol
{
  if (assistantInvocableIntentProtocol_onceToken != -1)
  {
    dispatch_once(&assistantInvocableIntentProtocol_onceToken, &__block_literal_global_283);
  }

  v3 = assistantInvocableIntentProtocol_value;

  return v3;
}

void __52__LNSystemProtocol_assistantInvocableIntentProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.AssistantInvocableIntent"];
  v1 = assistantInvocableIntentProtocol_value;
  assistantInvocableIntentProtocol_value = v0;
}

+ (LNSystemProtocol)assistantIntentProtocol
{
  if (assistantIntentProtocol_onceToken != -1)
  {
    dispatch_once(&assistantIntentProtocol_onceToken, &__block_literal_global_281);
  }

  v3 = assistantIntentProtocol_value;

  return v3;
}

void __43__LNSystemProtocol_assistantIntentProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.AssistantIntent"];
  v1 = assistantIntentProtocol_value;
  assistantIntentProtocol_value = v0;
}

void __44__LNSystemProtocol_urlRepresentableProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.URLRepresentable"];
  v1 = urlRepresentableProtocol_value_8954;
  urlRepresentableProtocol_value_8954 = v0;
}

+ (LNSystemProtocol)pushToTalkTransmissionProtocol
{
  if (pushToTalkTransmissionProtocol_onceToken[0] != -1)
  {
    dispatch_once(pushToTalkTransmissionProtocol_onceToken, &__block_literal_global_277);
  }

  v3 = pushToTalkTransmissionProtocol_value;

  return v3;
}

void __50__LNSystemProtocol_pushToTalkTransmissionProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.PushToTalkTransmission"];
  v1 = pushToTalkTransmissionProtocol_value;
  pushToTalkTransmissionProtocol_value = v0;
}

+ (LNSystemProtocol)zoomProtocol
{
  if (zoomProtocol_onceToken != -1)
  {
    dispatch_once(&zoomProtocol_onceToken, &__block_literal_global_275);
  }

  v3 = zoomProtocol_value;

  return v3;
}

void __32__LNSystemProtocol_zoomProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.Zoom"];
  v1 = zoomProtocol_value;
  zoomProtocol_value = v0;
}

+ (LNSystemProtocol)xpcListenerProtocol
{
  if (xpcListenerProtocol_onceToken != -1)
  {
    dispatch_once(&xpcListenerProtocol_onceToken, &__block_literal_global_273);
  }

  v3 = xpcListenerProtocol_value;

  return v3;
}

void __39__LNSystemProtocol_xpcListenerProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.XPCListener"];
  v1 = xpcListenerProtocol_value;
  xpcListenerProtocol_value = v0;
}

+ (LNSystemProtocol)controlConfigurationProtocol
{
  if (controlConfigurationProtocol_onceToken != -1)
  {
    dispatch_once(&controlConfigurationProtocol_onceToken, &__block_literal_global_271);
  }

  v3 = controlConfigurationProtocol_value;

  return v3;
}

void __48__LNSystemProtocol_controlConfigurationProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.ControlConfiguration"];
  v1 = controlConfigurationProtocol_value;
  controlConfigurationProtocol_value = v0;
}

+ (LNSystemProtocol)widgetConfigurationProtocol
{
  if (widgetConfigurationProtocol_onceToken != -1)
  {
    dispatch_once(&widgetConfigurationProtocol_onceToken, &__block_literal_global_269);
  }

  v3 = widgetConfigurationProtocol_value;

  return v3;
}

void __47__LNSystemProtocol_widgetConfigurationProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.WidgetConfiguration"];
  v1 = widgetConfigurationProtocol_value;
  widgetConfigurationProtocol_value = v0;
}

+ (LNSystemProtocol)undoSystemProtocol
{
  if (undoSystemProtocol_onceToken != -1)
  {
    dispatch_once(&undoSystemProtocol_onceToken, &__block_literal_global_267);
  }

  v3 = undoSystemProtocol_value;

  return v3;
}

void __38__LNSystemProtocol_undoSystemProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.Undo"];
  v1 = undoSystemProtocol_value;
  undoSystemProtocol_value = v0;
}

+ (LNSystemProtocol)undoableProtocol
{
  if (undoableProtocol_onceToken != -1)
  {
    dispatch_once(&undoableProtocol_onceToken, &__block_literal_global_265);
  }

  v3 = undoableProtocol_value;

  return v3;
}

void __36__LNSystemProtocol_undoableProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.Undoable"];
  v1 = undoableProtocol_value;
  undoableProtocol_value = v0;
}

+ (LNSystemProtocol)toggleProtocol
{
  if (toggleProtocol_onceToken != -1)
  {
    dispatch_once(&toggleProtocol_onceToken, &__block_literal_global_263);
  }

  v3 = toggleProtocol_value;

  return v3;
}

void __34__LNSystemProtocol_toggleProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.Toggle"];
  v1 = toggleProtocol_value;
  toggleProtocol_value = v0;
}

+ (LNSystemProtocol)systemFrameworkProtocol
{
  if (systemFrameworkProtocol_onceToken != -1)
  {
    dispatch_once(&systemFrameworkProtocol_onceToken, &__block_literal_global_261);
  }

  v3 = systemFrameworkProtocol_value;

  return v3;
}

void __43__LNSystemProtocol_systemFrameworkProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.SystemFramework"];
  v1 = systemFrameworkProtocol_value;
  systemFrameworkProtocol_value = v0;
}

+ (LNSystemProtocol)stingProtocol
{
  if (stingProtocol_onceToken != -1)
  {
    dispatch_once(&stingProtocol_onceToken, &__block_literal_global_259);
  }

  v3 = stingProtocol_value;

  return v3;
}

void __33__LNSystemProtocol_stingProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.Sting"];
  v1 = stingProtocol_value;
  stingProtocol_value = v0;
}

+ (LNSystemProtocol)startWorkoutProtocol
{
  if (startWorkoutProtocol_onceToken != -1)
  {
    dispatch_once(&startWorkoutProtocol_onceToken, &__block_literal_global_257);
  }

  v3 = startWorkoutProtocol_value;

  return v3;
}

void __40__LNSystemProtocol_startWorkoutProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.StartWorkout"];
  v1 = startWorkoutProtocol_value;
  startWorkoutProtocol_value = v0;
}

+ (LNSystemProtocol)startDiveProtocol
{
  if (startDiveProtocol_onceToken != -1)
  {
    dispatch_once(&startDiveProtocol_onceToken, &__block_literal_global_255);
  }

  v3 = startDiveProtocol_value;

  return v3;
}

void __37__LNSystemProtocol_startDiveProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.StartDive"];
  v1 = startDiveProtocol_value;
  startDiveProtocol_value = v0;
}

+ (LNSystemProtocol)snippetProtocol
{
  if (snippetProtocol_onceToken != -1)
  {
    dispatch_once(&snippetProtocol_onceToken, &__block_literal_global_253);
  }

  v3 = snippetProtocol_value;

  return v3;
}

void __35__LNSystemProtocol_snippetProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.Snippet"];
  v1 = snippetProtocol_value;
  snippetProtocol_value = v0;
}

+ (LNSystemProtocol)setValueProtocol
{
  if (setValueProtocol_onceToken != -1)
  {
    dispatch_once(&setValueProtocol_onceToken, &__block_literal_global_251);
  }

  v3 = setValueProtocol_value;

  return v3;
}

void __36__LNSystemProtocol_setValueProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.SetValue"];
  v1 = setValueProtocol_value;
  setValueProtocol_value = v0;
}

+ (LNSystemProtocol)sessionStartingProtocol
{
  if (sessionStartingProtocol_onceToken[0] != -1)
  {
    dispatch_once(sessionStartingProtocol_onceToken, &__block_literal_global_249);
  }

  v3 = sessionStartingProtocol_value;

  return v3;
}

void __43__LNSystemProtocol_sessionStartingProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.SessionStarting"];
  v1 = sessionStartingProtocol_value;
  sessionStartingProtocol_value = v0;
}

+ (LNSystemProtocol)searchSystemProtocol
{
  if (searchSystemProtocol_onceToken != -1)
  {
    dispatch_once(&searchSystemProtocol_onceToken, &__block_literal_global_247);
  }

  v3 = searchSystemProtocol_value;

  return v3;
}

void __40__LNSystemProtocol_searchSystemProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.Search"];
  v1 = searchSystemProtocol_value;
  searchSystemProtocol_value = v0;
}

+ (LNSystemProtocol)scrollProtocol
{
  if (scrollProtocol_onceToken != -1)
  {
    dispatch_once(&scrollProtocol_onceToken, &__block_literal_global_245);
  }

  v3 = scrollProtocol_value;

  return v3;
}

void __34__LNSystemProtocol_scrollProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.Scroll"];
  v1 = scrollProtocol_value;
  scrollProtocol_value = v0;
}

+ (LNSystemProtocol)saveEntitySystemProtocol
{
  if (saveEntitySystemProtocol_onceToken != -1)
  {
    dispatch_once(&saveEntitySystemProtocol_onceToken, &__block_literal_global_243);
  }

  v3 = saveEntitySystemProtocol_value;

  return v3;
}

void __44__LNSystemProtocol_saveEntitySystemProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.SaveEntity"];
  v1 = saveEntitySystemProtocol_value;
  saveEntitySystemProtocol_value = v0;
}

+ (LNSystemProtocol)resumeWorkoutProtocol
{
  if (resumeWorkoutProtocol_onceToken != -1)
  {
    dispatch_once(&resumeWorkoutProtocol_onceToken, &__block_literal_global_241);
  }

  v3 = resumeWorkoutProtocol_value;

  return v3;
}

void __41__LNSystemProtocol_resumeWorkoutProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.ResumeWorkout"];
  v1 = resumeWorkoutProtocol_value;
  resumeWorkoutProtocol_value = v0;
}

+ (LNSystemProtocol)resizeProtocol
{
  if (resizeProtocol_onceToken != -1)
  {
    dispatch_once(&resizeProtocol_onceToken, &__block_literal_global_239);
  }

  v3 = resizeProtocol_value;

  return v3;
}

void __34__LNSystemProtocol_resizeProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.Resize"];
  v1 = resizeProtocol_value;
  resizeProtocol_value = v0;
}

+ (LNSystemProtocol)requiresMDMChecksProtocol
{
  if (requiresMDMChecksProtocol_onceToken != -1)
  {
    dispatch_once(&requiresMDMChecksProtocol_onceToken, &__block_literal_global_237);
  }

  v3 = requiresMDMChecksProtocol_value;

  return v3;
}

void __45__LNSystemProtocol_requiresMDMChecksProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.RequiresMDMChecks"];
  v1 = requiresMDMChecksProtocol_value;
  requiresMDMChecksProtocol_value = v0;
}

+ (LNSystemProtocol)putEntityInContainerProtocol
{
  if (putEntityInContainerProtocol_onceToken != -1)
  {
    dispatch_once(&putEntityInContainerProtocol_onceToken, &__block_literal_global_235);
  }

  v3 = putEntityInContainerProtocol_value;

  return v3;
}

void __48__LNSystemProtocol_putEntityInContainerProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.PutEntityInContainer"];
  v1 = putEntityInContainerProtocol_value;
  putEntityInContainerProtocol_value = v0;
}

+ (LNSystemProtocol)propertyUpdaterProtocol
{
  if (propertyUpdaterProtocol_onceToken != -1)
  {
    dispatch_once(&propertyUpdaterProtocol_onceToken, &__block_literal_global_233);
  }

  v3 = propertyUpdaterProtocol_value;

  return v3;
}

void __43__LNSystemProtocol_propertyUpdaterProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.PropertyUpdater"];
  v1 = propertyUpdaterProtocol_value;
  propertyUpdaterProtocol_value = v0;
}

+ (LNSystemProtocol)progressReportingProtocol
{
  if (progressReportingProtocol_onceToken != -1)
  {
    dispatch_once(&progressReportingProtocol_onceToken, &__block_literal_global_231);
  }

  v3 = progressReportingProtocol_value;

  return v3;
}

void __45__LNSystemProtocol_progressReportingProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.ProgressReporting"];
  v1 = progressReportingProtocol_value;
  progressReportingProtocol_value = v0;
}

+ (LNSystemProtocol)previewEntityProtocol
{
  if (previewEntityProtocol_onceToken != -1)
  {
    dispatch_once(&previewEntityProtocol_onceToken, &__block_literal_global_229);
  }

  v3 = previewEntityProtocol_value;

  return v3;
}

void __41__LNSystemProtocol_previewEntityProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.PreviewEntity"];
  v1 = previewEntityProtocol_value;
  previewEntityProtocol_value = v0;
}

+ (LNSystemProtocol)pauseWorkoutProtocol
{
  if (pauseWorkoutProtocol_onceToken != -1)
  {
    dispatch_once(&pauseWorkoutProtocol_onceToken, &__block_literal_global_227);
  }

  v3 = pauseWorkoutProtocol_value;

  return v3;
}

void __40__LNSystemProtocol_pauseWorkoutProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.PauseWorkout"];
  v1 = pauseWorkoutProtocol_value;
  pauseWorkoutProtocol_value = v0;
}

+ (LNSystemProtocol)pasteSystemProtocol
{
  if (pasteSystemProtocol_onceToken != -1)
  {
    dispatch_once(&pasteSystemProtocol_onceToken, &__block_literal_global_225);
  }

  v3 = pasteSystemProtocol_value;

  return v3;
}

void __39__LNSystemProtocol_pasteSystemProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.Paste"];
  v1 = pasteSystemProtocol_value;
  pasteSystemProtocol_value = v0;
}

+ (LNSystemProtocol)navigateSequentiallyProtocol
{
  if (navigateSequentiallyProtocol_onceToken != -1)
  {
    dispatch_once(&navigateSequentiallyProtocol_onceToken, &__block_literal_global_221);
  }

  v3 = navigateSequentiallyProtocol_value;

  return v3;
}

void __48__LNSystemProtocol_navigateSequentiallyProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.NavigateSequentially"];
  v1 = navigateSequentiallyProtocol_value;
  navigateSequentiallyProtocol_value = v0;
}

+ (LNSystemProtocol)moveSpatialProtocol
{
  if (moveSpatialProtocol_onceToken != -1)
  {
    dispatch_once(&moveSpatialProtocol_onceToken, &__block_literal_global_219);
  }

  v3 = moveSpatialProtocol_value;

  return v3;
}

void __39__LNSystemProtocol_moveSpatialProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.MoveSpatial"];
  v1 = moveSpatialProtocol_value;
  moveSpatialProtocol_value = v0;
}

+ (LNSystemProtocol)favoriteEntityProtocol
{
  if (favoriteEntityProtocol_onceToken != -1)
  {
    dispatch_once(&favoriteEntityProtocol_onceToken, &__block_literal_global_213);
  }

  v3 = favoriteEntityProtocol_value;

  return v3;
}

void __42__LNSystemProtocol_favoriteEntityProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.FavoriteEntity"];
  v1 = favoriteEntityProtocol_value;
  favoriteEntityProtocol_value = v0;
}

+ (LNSystemProtocol)exitMarkupProtocol
{
  if (exitMarkupProtocol_onceToken != -1)
  {
    dispatch_once(&exitMarkupProtocol_onceToken, &__block_literal_global_211);
  }

  v3 = exitMarkupProtocol_value;

  return v3;
}

void __38__LNSystemProtocol_exitMarkupProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.ExitMarkup"];
  v1 = exitMarkupProtocol_value;
  exitMarkupProtocol_value = v0;
}

+ (LNSystemProtocol)entityUpdatingProtocol
{
  if (entityUpdatingProtocol_onceToken != -1)
  {
    dispatch_once(&entityUpdatingProtocol_onceToken, &__block_literal_global_209);
  }

  v3 = entityUpdatingProtocol_value;

  return v3;
}

void __42__LNSystemProtocol_entityUpdatingProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.EntityUpdating"];
  v1 = entityUpdatingProtocol_value;
  entityUpdatingProtocol_value = v0;
}

+ (LNSystemProtocol)enterMarkupProtocol
{
  if (enterMarkupProtocol_onceToken != -1)
  {
    dispatch_once(&enterMarkupProtocol_onceToken, &__block_literal_global_207);
  }

  v3 = enterMarkupProtocol_value;

  return v3;
}

void __39__LNSystemProtocol_enterMarkupProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.EnterMarkup"];
  v1 = enterMarkupProtocol_value;
  enterMarkupProtocol_value = v0;
}

+ (LNSystemProtocol)duplicateEntitySystemProtocol
{
  if (duplicateEntitySystemProtocol_onceToken != -1)
  {
    dispatch_once(&duplicateEntitySystemProtocol_onceToken, &__block_literal_global_205);
  }

  v3 = duplicateEntitySystemProtocol_value;

  return v3;
}

void __49__LNSystemProtocol_duplicateEntitySystemProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.DuplicateEntity"];
  v1 = duplicateEntitySystemProtocol_value;
  duplicateEntitySystemProtocol_value = v0;
}

+ (LNSystemProtocol)deleteEntitySystemProtocol
{
  if (deleteEntitySystemProtocol_onceToken != -1)
  {
    dispatch_once(&deleteEntitySystemProtocol_onceToken, &__block_literal_global_203);
  }

  v3 = deleteEntitySystemProtocol_value;

  return v3;
}

void __46__LNSystemProtocol_deleteEntitySystemProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.DeleteEntity"];
  v1 = deleteEntitySystemProtocol_value;
  deleteEntitySystemProtocol_value = v0;
}

+ (LNSystemProtocol)cutSystemProtocol
{
  if (cutSystemProtocol_onceToken != -1)
  {
    dispatch_once(&cutSystemProtocol_onceToken, &__block_literal_global_201);
  }

  v3 = cutSystemProtocol_value;

  return v3;
}

void __37__LNSystemProtocol_cutSystemProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.Cut"];
  v1 = cutSystemProtocol_value;
  cutSystemProtocol_value = v0;
}

+ (LNSystemProtocol)cutEntityProtocol
{
  if (cutEntityProtocol_onceToken != -1)
  {
    dispatch_once(&cutEntityProtocol_onceToken, &__block_literal_global_199);
  }

  v3 = cutEntityProtocol_value;

  return v3;
}

void __37__LNSystemProtocol_cutEntityProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.CutEntity"];
  v1 = cutEntityProtocol_value;
  cutEntityProtocol_value = v0;
}

+ (LNSystemProtocol)createEntitySystemProtocol
{
  if (createEntitySystemProtocol_onceToken != -1)
  {
    dispatch_once(&createEntitySystemProtocol_onceToken, &__block_literal_global_197);
  }

  v3 = createEntitySystemProtocol_value;

  return v3;
}

void __46__LNSystemProtocol_createEntitySystemProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.CreateEntity"];
  v1 = createEntitySystemProtocol_value;
  createEntitySystemProtocol_value = v0;
}

+ (LNSystemProtocol)copySystemProtocol
{
  if (copySystemProtocol_onceToken[0] != -1)
  {
    dispatch_once(copySystemProtocol_onceToken, &__block_literal_global_195);
  }

  v3 = copySystemProtocol_value;

  return v3;
}

void __38__LNSystemProtocol_copySystemProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.Copy"];
  v1 = copySystemProtocol_value;
  copySystemProtocol_value = v0;
}

+ (LNSystemProtocol)copyEntityProtocol
{
  if (copyEntityProtocol_onceToken != -1)
  {
    dispatch_once(&copyEntityProtocol_onceToken, &__block_literal_global_193);
  }

  v3 = copyEntityProtocol_value;

  return v3;
}

void __38__LNSystemProtocol_copyEntityProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.CopyEntity"];
  v1 = copyEntityProtocol_value;
  copyEntityProtocol_value = v0;
}

+ (LNSystemProtocol)conditionallyEnabledProtocol
{
  if (conditionallyEnabledProtocol_onceToken != -1)
  {
    dispatch_once(&conditionallyEnabledProtocol_onceToken, &__block_literal_global_191);
  }

  v3 = conditionallyEnabledProtocol_value;

  return v3;
}

void __48__LNSystemProtocol_conditionallyEnabledProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.ConditionallyEnabled"];
  v1 = conditionallyEnabledProtocol_value;
  conditionallyEnabledProtocol_value = v0;
}

+ (LNSystemProtocol)closeEntityProtocol
{
  if (closeEntityProtocol_onceToken != -1)
  {
    dispatch_once(&closeEntityProtocol_onceToken, &__block_literal_global_189);
  }

  v3 = closeEntityProtocol_value;

  return v3;
}

void __39__LNSystemProtocol_closeEntityProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.CloseEntity"];
  v1 = closeEntityProtocol_value;
  closeEntityProtocol_value = v0;
}

+ (LNSystemProtocol)changeBinarySettingSystemProtocol
{
  if (changeBinarySettingSystemProtocol_onceToken != -1)
  {
    dispatch_once(&changeBinarySettingSystemProtocol_onceToken, &__block_literal_global_187);
  }

  v3 = changeBinarySettingSystemProtocol_value;

  return v3;
}

void __53__LNSystemProtocol_changeBinarySettingSystemProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.ChangeBinarySetting"];
  v1 = changeBinarySettingSystemProtocol_value;
  changeBinarySettingSystemProtocol_value = v0;
}

+ (LNSystemProtocol)cancelProtocol
{
  if (cancelProtocol_onceToken != -1)
  {
    dispatch_once(&cancelProtocol_onceToken, &__block_literal_global_185);
  }

  v3 = cancelProtocol_value;

  return v3;
}

void __34__LNSystemProtocol_cancelProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.Cancel"];
  v1 = cancelProtocol_value;
  cancelProtocol_value = v0;
}

void __42__LNSystemProtocol_audioRecordingProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.AudioRecording"];
  v1 = audioRecordingProtocol_value;
  audioRecordingProtocol_value = v0;
}

void __41__LNSystemProtocol_audioStartingProtocol__block_invoke()
{
  v2 = +[LNSystemProtocol allProtocolsByIdentifier];
  v0 = [v2 valueForKey:@"com.apple.link.systemProtocol.AudioStarting"];
  v1 = audioStartingProtocol_value;
  audioStartingProtocol_value = v0;
}

- (int64_t)kind
{
  systemProtocolKindsByIdentifier = [objc_opt_class() systemProtocolKindsByIdentifier];
  identifier = [(LNSystemProtocol *)self identifier];
  v5 = [systemProtocolKindsByIdentifier objectForKeyedSubscript:identifier];

  if (v5)
  {
    integerValue = [v5 integerValue];
  }

  else
  {
    integerValue = 23;
  }

  return integerValue;
}

+ (id)ofKind:(int64_t)kind
{
  if (kind == 23)
  {
    v3 = 0;
  }

  else
  {
    if (kind == 13)
    {
      kindCopy = 14;
    }

    else
    {
      kindCopy = kind;
    }

    systemProtocolKindsByIdentifier = [self systemProtocolKindsByIdentifier];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:kindCopy];
    v7 = [systemProtocolKindsByIdentifier allKeysForObject:v6];
    firstObject = [v7 firstObject];

    if (firstObject)
    {
      v3 = [LNSystemProtocol protocolWithIdentifier:firstObject];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

+ (LNSystemProtocol)protocolWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [self protocolOrNilWithIdentifier:identifierCopy];
  if (!v5)
  {
    [MEMORY[0x1E695DF30] raise:@"InitNotImplemented" format:{@"%@ is not a valid LNSystemProtocolIdentifier", identifierCopy}];
  }

  return v5;
}

+ (id)systemProtocolKindsByIdentifier
{
  v5[21] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.apple.link.systemProtocol.ChangeBinarySetting";
  v4[1] = @"com.apple.link.systemProtocol.DeleteEntity";
  v5[0] = &unk_1F02FF180;
  v5[1] = &unk_1F02FF198;
  v4[2] = @"com.apple.link.systemProtocol.DuplicateEntity";
  v4[3] = @"com.apple.link.systemProtocol.OpenEntity";
  v5[2] = &unk_1F02FF1B0;
  v5[3] = &unk_1F02FF1C8;
  v4[4] = @"com.apple.link.systemProtocol.SaveEntity";
  v4[5] = @"com.apple.link.systemProtocol.Undo";
  v5[4] = &unk_1F02FF1E0;
  v5[5] = &unk_1F02FF1F8;
  v4[6] = @"com.apple.link.systemProtocol.CreateEntity";
  v4[7] = @"com.apple.link.systemProtocol.Search";
  v5[6] = &unk_1F02FF210;
  v5[7] = &unk_1F02FF228;
  v4[8] = @"com.apple.link.systemProtocol.Copy";
  v4[9] = @"com.apple.link.systemProtocol.Paste";
  v5[8] = &unk_1F02FF240;
  v5[9] = &unk_1F02FF258;
  v4[10] = @"com.apple.link.systemProtocol.Cut";
  v4[11] = @"com.apple.link.systemProtocol.PutEntityInContainer";
  v5[10] = &unk_1F02FF270;
  v5[11] = &unk_1F02FF288;
  v4[12] = @"com.apple.link.systemProtocol.FavoriteEntity";
  v4[13] = @"com.apple.link.systemProtocol.CloseEntity";
  v5[12] = &unk_1F02FF2A0;
  v5[13] = &unk_1F02FF2B8;
  v4[14] = @"com.apple.link.systemProtocol.Sting";
  v4[15] = @"com.apple.link.systemProtocol.Cancel";
  v5[14] = &unk_1F02FF2D0;
  v5[15] = &unk_1F02FF2E8;
  v4[16] = @"com.apple.link.systemProtocol.NavigateSequentially";
  v4[17] = @"com.apple.link.systemProtocol.MoveSpatial";
  v5[16] = &unk_1F02FF300;
  v5[17] = &unk_1F02FF318;
  v4[18] = @"com.apple.link.systemProtocol.Scroll";
  v4[19] = @"com.apple.link.systemProtocol.Resize";
  v5[18] = &unk_1F02FF330;
  v5[19] = &unk_1F02FF348;
  v4[20] = @"com.apple.link.systemProtocol.Zoom";
  v5[20] = &unk_1F02FF360;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:21];

  return v2;
}

@end