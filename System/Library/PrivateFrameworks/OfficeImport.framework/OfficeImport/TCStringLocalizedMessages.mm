@interface TCStringLocalizedMessages
+ (void)initialize;
@end

@implementation TCStringLocalizedMessages

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == self)
  {
    v129 = TCBundle(v3);
    v4 = [v129 localizedStringForKey:@"Out of memory." value:&stru_286EE1130 table:@"TCCompatibility"];
    v5 = kErrorMessageOutOfMemory;
    kErrorMessageOutOfMemory = v4;

    v130 = TCBundle(v6);
    v7 = [v130 localizedStringForKey:@"An unknown error occurred." value:&stru_286EE1130 table:@"TCCompatibility"];
    v8 = kErrorMessageUnknown;
    kErrorMessageUnknown = v7;

    v131 = TCBundle(v9);
    v10 = [v131 localizedStringForKey:@"The file format is invalid." value:&stru_286EE1130 table:@"TCCompatibility"];
    v11 = kErrorMessageInvalid;
    kErrorMessageInvalid = v10;

    v132 = TCBundle(v12);
    v13 = [v132 localizedStringForKey:@"The spreadsheet has too many table cells." value:&stru_286EE1130 table:@"TCCompatibility"];
    v14 = kErrorMessageTooManyCells;
    kErrorMessageTooManyCells = v13;

    v133 = TCBundle(v15);
    v16 = [v133 localizedStringForKey:@"Decryption failed." value:&stru_286EE1130 table:@"TCCompatibility"];
    v17 = kErrorMessageDecryptionFailed;
    kErrorMessageDecryptionFailed = v16;

    v134 = TCBundle(v18);
    v19 = [v134 localizedStringForKey:@"The document can\\U2019t be opened because it uses an unsupported method of encryption." value:&stru_286EE1130 table:@"TCCompatibility"];
    v20 = kErrorMessageUnsupportedEncryption;
    kErrorMessageUnsupportedEncryption = v19;

    v135 = TCBundle(v21);
    v22 = [v135 localizedStringForKey:@"Charts of unsupported type or size were either imported as an image or removed." value:&stru_286EE1130 table:@"TCCompatibility"];
    v23 = kErrorMessageChartUnsupportedContent;
    kErrorMessageChartUnsupportedContent = v22;

    v136 = TCBundle(v24);
    v25 = [v136 localizedStringForKey:@"Grouped wedges in pie charts were ungrouped." value:&stru_286EE1130 table:@"TCCompatibility"];
    v26 = kWarningMessageChartsGroupedPieWedgesUngrouped;
    kWarningMessageChartsGroupedPieWedgesUngrouped = v25;

    v137 = TCBundle(v27);
    v28 = [v137 localizedStringForKey:@"Custom number formats were removed from charts." value:&stru_286EE1130 table:@"TCCompatibility"];
    v29 = kWarningMessageChartsCustomNumerFormatRemoved;
    kWarningMessageChartsCustomNumerFormatRemoved = v28;

    v138 = TCBundle(v30);
    v31 = [v138 localizedStringForKey:@"Interactive charts were converted to regular charts." value:&stru_286EE1130 table:@"TCCompatibility"];
    v32 = kWarningMessageChartsInteractiveTypesDowngraded;
    kWarningMessageChartsInteractiveTypesDowngraded = v31;

    v139 = TCBundle(v33);
    v34 = [v139 localizedStringForKey:@"Bubble charts were converted to scatter charts." value:&stru_286EE1130 table:@"TCCompatibility"];
    v35 = kWarningMessageChartsBubbleReplacedWithScatter;
    kWarningMessageChartsBubbleReplacedWithScatter = v34;

    v140 = TCBundle(v36);
    v37 = [v140 localizedStringForKey:@"Reference Lines were removed from charts." value:&stru_286EE1130 table:@"TCCompatibility"];
    v38 = kWarningMessageChartsReferenceLinesRemoved;
    kWarningMessageChartsReferenceLinesRemoved = v37;

    v141 = TCBundle(v39);
    v40 = [v141 localizedStringForKey:@"Unsupported media were removed." value:&stru_286EE1130 table:@"TCCompatibility"];
    v41 = kWarningMessageUnsupportedMediaTypes;
    kWarningMessageUnsupportedMediaTypes = v40;

    v142 = TCBundle(v42);
    v43 = [v142 localizedStringForKey:@"Links to other Keynote files were removed." value:&stru_286EE1130 table:@"TCCompatibility"];
    v44 = kWarningMessageNoKeynoteHyperlinks;
    kWarningMessageNoKeynoteHyperlinks = v43;

    v143 = TCBundle(v45);
    v46 = [v143 localizedStringForKey:@"Image fills may be missing from shapes value:charts table:{or other objects.", &stru_286EE1130, @"TCCompatibility"}];
    v47 = kWarningMessageMissingFills;
    kWarningMessageMissingFills = v46;

    v144 = TCBundle(v48);
    v49 = [v144 localizedStringForKey:@"Image fills may be missing from shapes value:charts table:{or other objects because you are not connected to the Internet.", &stru_286EE1130, @"TCCompatibility"}];
    v50 = kWarningMessageMissingFillsBecauseNetworkNotReachable;
    kWarningMessageMissingFillsBecauseNetworkNotReachable = v49;

    v145 = TCBundle(v51);
    v52 = [v145 localizedStringForKey:@"Rotation was removed from tables and charts." value:&stru_286EE1130 table:@"TCCompatibility"];
    v53 = kWarningMessageChartsAndTablesUnrotated;
    kWarningMessageChartsAndTablesUnrotated = v52;

    v146 = TCBundle(v54);
    v55 = [v146 localizedStringForKey:@"Some movies may not play correctly. When exporting password-protected presentations to Keynote \\U201909 value:movies must be in .mov format." table:{&stru_286EE1130, @"TCCompatibility"}];
    v56 = kWarningMessageMovieExportFailureLockedDocumentKeynote;
    kWarningMessageMovieExportFailureLockedDocumentKeynote = v55;

    v147 = TCBundle(v57);
    v58 = [v147 localizedStringForKey:@"Some movies may not play correctly. When exporting password-protected spreadsheets to Numbers \\U201909 value:movies must be in .mov format." table:{&stru_286EE1130, @"TCCompatibility"}];
    v59 = kWarningMessageMovieExportFailureLockedDocumentNumbers;
    kWarningMessageMovieExportFailureLockedDocumentNumbers = v58;

    v148 = TCBundle(v60);
    v61 = [v148 localizedStringForKey:@"Some movies may not play correctly. When exporting password-protected documents to Pages \\U201909 value:movies must be in .mov format." table:{&stru_286EE1130, @"TCCompatibility"}];
    v62 = kWarningMessageMovieExportFailureLockedDocumentPages;
    kWarningMessageMovieExportFailureLockedDocumentPages = v61;

    v149 = TCBundle(v63);
    v64 = [v149 localizedStringForKey:@"Builds on master slides were removed." value:&stru_286EE1130 table:@"TCCompatibility"];
    v65 = kWarningMessageNoBuildsOnMasters;
    kWarningMessageNoBuildsOnMasters = v64;

    v150 = TCBundle(v66);
    v67 = [v150 localizedStringForKey:@"Smart builds were removed." value:&stru_286EE1130 table:@"TCCompatibility"];
    v68 = kWarningMessageNoSmartBuilds;
    kWarningMessageNoSmartBuilds = v67;

    v151 = TCBundle(v69);
    v70 = [v151 localizedStringForKey:@"Emphasis builds were removed." value:&stru_286EE1130 table:@"TCCompatibility"];
    v71 = kWarningMessageNoEmphasisBuilds;
    kWarningMessageNoEmphasisBuilds = v70;

    v152 = TCBundle(v72);
    v73 = [v152 localizedStringForKey:@"Change tracking is only supported for body text. Other tracked changes were accepted as final." value:&stru_286EE1130 table:@"TCCompatibility"];
    v74 = kWarningMessageNoTrackChangesButBody;
    kWarningMessageNoTrackChangesButBody = v73;

    v153 = TCBundle(v75);
    v76 = [v153 localizedStringForKey:@"Unsupported formulas were replaced by the last calculated value." value:&stru_286EE1130 table:@"TCCompatibility"];
    v77 = kWarningMessageUnsupportedFormulas;
    kWarningMessageUnsupportedFormulas = v76;

    v154 = TCBundle(v78);
    v79 = [v154 localizedStringForKey:@"Table categories were removed." value:&stru_286EE1130 table:@"TCCompatibility"];
    v80 = kWarningMessageNoCategories;
    kWarningMessageNoCategories = v79;

    v155 = TCBundle(v81);
    v82 = [v155 localizedStringForKey:@"Unsupported conditional highlighting rules were removed." value:&stru_286EE1130 table:@"TCCompatibility"];
    v83 = kWarningMessageNoConditionalFormats;
    kWarningMessageNoConditionalFormats = v82;

    v156 = TCBundle(v84);
    v85 = [v156 localizedStringForKey:@"Table fills were removed." value:&stru_286EE1130 table:@"TCCompatibility"];
    v86 = kWarningMessageNoTableImageFill;
    kWarningMessageNoTableImageFill = v85;

    v157 = TCBundle(v87);
    v88 = [v157 localizedStringForKey:@"Pop-up menu cells with more than 250 list items were converted to text cells." value:&stru_286EE1130 table:@"TCCompatibility"];
    v89 = kWarningMessageTooManyPopupOptionsSomeDropped;
    kWarningMessageTooManyPopupOptionsSomeDropped = v88;

    v158 = TCBundle(v90);
    v91 = [v158 localizedStringForKey:@"Some AND filters were changed to OR." value:&stru_286EE1130 table:@"TCCompatibility"];
    v92 = kWarningMessageChangedAndFiltersToOrFilters;
    kWarningMessageChangedAndFiltersToOrFilters = v91;

    v159 = TCBundle(v93);
    v94 = [v159 localizedStringForKey:@"Duration-based filters and conditional highlights were removed." value:&stru_286EE1130 table:@"TCCompatibility"];
    v95 = kWarningMessageRemovedDurationFiltersAndConditionalHighlightings;
    kWarningMessageRemovedDurationFiltersAndConditionalHighlightings = v94;

    v160 = TCBundle(v96);
    v97 = [v160 localizedStringForKey:@"Right-to-left text isn\\U2019t fully supported in iWork \\U201909." value:&stru_286EE1130 table:@"TCCompatibility"];
    v98 = kWarningMessageRTLNotFullySupported;
    kWarningMessageRTLNotFullySupported = v97;

    v161 = TCBundle(v99);
    v100 = [v161 localizedStringForKey:@"Unsupported formulas were removed. The last calculated values were exported." value:&stru_286EE1130 table:@"TCCompatibility"];
    v101 = kWarningMessageRemovedUnsupportedFormulas;
    kWarningMessageRemovedUnsupportedFormulas = v100;

    v162 = TCBundle(v102);
    v103 = [v162 localizedStringForKey:@"No tables" value:&stru_286EE1130 table:@"TCCompatibility"];
    v104 = kWarningMessageCSVExportFailureNoTables;
    kWarningMessageCSVExportFailureNoTables = v103;

    v163 = TCBundle(v105);
    v106 = [v163 localizedStringForKey:@"Numbers creates a CSV file for each table in your spreadsheet." value:&stru_286EE1130 table:@"TCCompatibility"];
    v107 = kWarningMessageCSVExportFailureNoTablesAdditionalInfo;
    kWarningMessageCSVExportFailureNoTablesAdditionalInfo = v106;

    v164 = TCBundle(v108);
    v109 = [v164 localizedStringForKey:@"Charts in headers and footers were removed." value:&stru_286EE1130 table:@"TCCompatibility"];
    v110 = kWarningMessagePagesChartsInHeaderFooterNotSupported;
    kWarningMessagePagesChartsInHeaderFooterNotSupported = v109;

    v165 = TCBundle(v111);
    v112 = [v165 localizedStringForKey:@"Tables in headers and footers were removed." value:&stru_286EE1130 table:@"TCCompatibility"];
    v113 = kWarningMessagePagesTablesInHeaderFooterNotSupported;
    kWarningMessagePagesTablesInHeaderFooterNotSupported = v112;

    v166 = TCBundle(v114);
    v115 = [v166 localizedStringForKey:@"Objects in headers and footers were removed." value:&stru_286EE1130 table:@"TCCompatibility"];
    v116 = kWarningMessagePagesObjectsInHeaderFooterNotSupported;
    kWarningMessagePagesObjectsInHeaderFooterNotSupported = v115;

    v167 = TCBundle(v117);
    v118 = [v167 localizedStringForKey:@"Inline objects that cause text wrap were removed from headers and footers." value:&stru_286EE1130 table:@"TCCompatibility"];
    v119 = kWarningMessagePagesObjectsWithWrapInHeaderFooterNotSupported;
    kWarningMessagePagesObjectsWithWrapInHeaderFooterNotSupported = v118;

    v168 = TCBundle(v120);
    v121 = [v168 localizedStringForKey:@"Outline view isn\\U2019t supported. Your document will appear as a regular word processing document." value:&stru_286EE1130 table:@"TCCompatibility"];
    v122 = kWarningMessagePagesOutlineViewNotSupported;
    kWarningMessagePagesOutlineViewNotSupported = v121;

    v169 = TCBundle(v123);
    v124 = [v169 localizedStringForKey:@"Mail merge isn\\U2019t supported. Merge fields were converted to text." value:&stru_286EE1130 table:@"TCCompatibility"];
    v125 = kWarningMessagePagesMailMergeNotSupported;
    kWarningMessagePagesMailMergeNotSupported = v124;

    v170 = TCBundle(v126);
    v127 = [v170 localizedStringForKey:@"The font %@ is missing. Your text might look different." value:&stru_286EE1130 table:@"TCCompatibility"];
    v128 = kWarningMessageFontReplaced;
    kWarningMessageFontReplaced = v127;
  }
}

@end