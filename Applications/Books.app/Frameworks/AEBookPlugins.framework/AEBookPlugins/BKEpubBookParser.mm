@interface BKEpubBookParser
+ (BOOL)canParse:(id)parse;
+ (BOOL)isValidMimeType:(id)type;
+ (BOOL)recomputeFixedLayoutDimensionsForBook:(id)book;
+ (CGSize)_computeFixedLayoutDimensionsFrom:(id)from forBook:(id)book;
+ (id)bookCachedDataPathForBookWithKey:(id)key;
+ (id)bookExtraInfoCacheDirectory;
+ (id)cachedDataForBookDatabaseKey:(id)key cacheKey:(id)cacheKey;
- (BOOL)isDifferentParserVersion:(id)version;
- (BOOL)isLegalCompression:(id)compression;
- (BOOL)isLegalEncryption:(id)encryption;
- (id)createBookExtraInfoCacheDirectoryIfNecessary;
- (id)mediaOverlayHrefForManifestInfo:(__CFDictionary *)info readable:(BKReadableFormat *)readable;
- (int)_fullParse;
- (int)_touchUpParse;
- (int)constructEntity:(id)entity withNavPoint:(void *)point absoluteOrder:(int)order indentationLevel:(int)level withAnchorInfo:(id)info createdObjects:(id)objects;
- (int)parse:(BOOL)parse;
- (void)constructBKDocumentWithReadable:(BKReadableFormat *)readable chapters:(id)chapters landmarks:(id)landmarks physicalPages:(id)pages;
- (void)constructBKIdCfiMappingsWithEpub:(void *)epub;
- (void)constructBKLandmarkInfoWithReadable:(BKReadableFormat *)readable withAnchorInfo:(id)info;
- (void)constructBKNavigationInfoWithReadable:(BKReadableFormat *)readable withAnchorInfo:(id)info;
- (void)constructBKPhysicalPageWithReadable:(BKReadableFormat *)readable withAnchorInfo:(id)info;
- (void)constructBKProtectionInfoWithReadable:(BKReadableFormat *)readable;
- (void)createEpubParser:(int)parser errorCode:(int *)code;
- (void)resetItunesMetadata;
- (void)setAppleDisplayOptionsFromParser:(BKReadableFormat *)parser;
- (void)setArtworkTemplateFromPlist:(id)plist;
- (void)setCoverWritingModeFromPlist:(id)plist;
- (void)setEndOfBookExperienceFromPlist:(id)plist;
- (void)setLanguageFromPlist:(id)plist;
- (void)setObeyPageBreaksFromPlist:(id)plist;
- (void)setPublisherInfoFromParser:(BKReadableFormat *)parser;
- (void)setScrollAxisModeFromPlist:(id)plist;
- (void)tryEmbeddedHrefForCoverArtHref:(id)href;
@end

@implementation BKEpubBookParser

+ (BOOL)canParse:(id)parse
{
  parseCopy = parse;
  if (BookFormatByFilePath())
  {
    v5 = 0;
  }

  else
  {
    v5 = ITEpubFolder::isMimeCorrect(parseCopy, 0, 0, v4) != 0;
  }

  return v5;
}

- (void)createEpubParser:(int)parser errorCode:(int *)code
{
  book = [(BKBookParser *)self book];
  [book bookBundlePath];

  v6 = +[BLLibrary defaultBookLibrary];
  book2 = [(BKBookParser *)self book];
  bookBundlePath = [book2 bookBundlePath];
  v9 = [NSURL fileURLWithPath:bookBundlePath];
  v10 = [v6 _perUserBookURLForBookURL:v9];
  path = [v10 path];
  v12 = [path mutableCopy];

  if (([v12 hasSuffix:@"/"] & 1) == 0)
  {
    [v12 appendString:@"/"];
  }

  operator new();
}

- (int)_fullParse
{
  v207 = 0;
  v3 = [(BKEpubBookParser *)self createEpubParser:0 errorCode:&v207];
  v4 = v3;
  if (!v207)
  {
    book = [(BKBookParser *)self book];
    [book resetAsNewlyDownloaded];

    v9 = (*(*v4 + 136))(v4);
    book2 = [(BKBookParser *)self book];
    bookBundlePath = [book2 bookBundlePath];
    v12 = [v9 stringByReplacingOccurrencesOfString:bookBundlePath withString:&stru_1E7188];
    book3 = [(BKBookParser *)self book];
    [book3 setBookContentSubpath:v12];

    book4 = [(BKBookParser *)self book];
    bookAuthor = [book4 bookAuthor];
    LODWORD(book2) = bookAuthor == 0;

    if (!book2)
    {
      goto LABEL_23;
    }

    v16 = *(v4 + 4);
    if (v16)
    {
      CFRetain(v16);
      v17 = *(v4 + 4);
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;
    book5 = [(BKBookParser *)self book];
    bookAuthor2 = [book5 bookAuthor];
    if ([bookAuthor2 length])
    {
      book6 = [(BKBookParser *)self book];
      bookAuthor3 = [book6 bookAuthor];
      v23 = [v18 isEqualToString:bookAuthor3];

      if (v23)
      {
        goto LABEL_18;
      }

      book5 = _ITEpubParsingLog(v24);
      if (os_log_type_enabled(book5, OS_LOG_TYPE_DEFAULT))
      {
        book7 = [(BKBookParser *)self book];
        bookAuthor4 = [book7 bookAuthor];
        *buf = 138544386;
        v209 = @"self.book.bookAuthor";
        v210 = 2160;
        v211 = 1752392040;
        v212 = 2112;
        v213 = v18;
        v214 = 2160;
        v215 = 1752392040;
        v216 = 2112;
        v217 = bookAuthor4;
        _os_log_impl(&dword_0, book5, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", buf, 0x34u);
      }
    }

    else
    {
    }

LABEL_18:
    v27 = *(v4 + 4);
    if (v27 && (CFRetain(v27), (book9 = *(v4 + 4)) != 0))
    {
      book8 = [(BKBookParser *)self book];
      [book8 setBookAuthor:book9];
    }

    else
    {
      book9 = [(BKBookParser *)self book];
      [book9 setBookAuthor:0];
    }

LABEL_23:
    book10 = [(BKBookParser *)self book];
    bookTitle = [book10 bookTitle];
    v32 = bookTitle == 0;

    if (!v32)
    {
      goto LABEL_38;
    }

    v33 = *(v4 + 5);
    if (v33)
    {
      CFRetain(v33);
      v34 = *(v4 + 5);
    }

    else
    {
      v34 = 0;
    }

    v35 = v34;
    book11 = [(BKBookParser *)self book];
    bookTitle2 = [book11 bookTitle];
    if ([bookTitle2 length])
    {
      book12 = [(BKBookParser *)self book];
      bookTitle3 = [book12 bookTitle];
      v40 = [v35 isEqualToString:bookTitle3];

      if (v40)
      {
        goto LABEL_33;
      }

      book11 = _ITEpubParsingLog(v41);
      if (os_log_type_enabled(book11, OS_LOG_TYPE_DEFAULT))
      {
        book13 = [(BKBookParser *)self book];
        bookTitle4 = [book13 bookTitle];
        *buf = 138544386;
        v209 = @"self.book.bookTitle";
        v210 = 2160;
        v211 = 1752392040;
        v212 = 2112;
        v213 = v35;
        v214 = 2160;
        v215 = 1752392040;
        v216 = 2112;
        v217 = bookTitle4;
        _os_log_impl(&dword_0, book11, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", buf, 0x34u);
      }
    }

    else
    {
    }

LABEL_33:
    v44 = *(v4 + 5);
    if (v44 && (CFRetain(v44), (book15 = *(v4 + 5)) != 0))
    {
      book14 = [(BKBookParser *)self book];
      [book14 setBookTitle:book15];
    }

    else
    {
      book15 = [(BKBookParser *)self book];
      [book15 setBookTitle:0];
    }

LABEL_38:
    v47 = *(v4 + 6);
    if (v47)
    {
      CFRetain(v47);
      v48 = *(v4 + 6);
    }

    else
    {
      v48 = 0;
    }

    v49 = v48;
    book16 = [(BKBookParser *)self book];
    bookLanguage = [book16 bookLanguage];
    if ([bookLanguage length])
    {
      book17 = [(BKBookParser *)self book];
      bookLanguage2 = [book17 bookLanguage];
      v54 = [v49 isEqualToString:bookLanguage2];

      if (v54)
      {
LABEL_47:

        v58 = *(v4 + 6);
        if (v58 && (CFRetain(v58), (book19 = *(v4 + 6)) != 0))
        {
          book18 = [(BKBookParser *)self book];
          [book18 setBookLanguage:book19];
        }

        else
        {
          book19 = [(BKBookParser *)self book];
          [book19 setBookLanguage:0];
        }

        v61 = *(v4 + 7);
        if (v61)
        {
          CFRetain(v61);
          v62 = *(v4 + 7);
        }

        else
        {
          v62 = 0;
        }

        v63 = v62;
        book20 = [(BKBookParser *)self book];
        genre = [book20 genre];
        if ([genre length])
        {
          book21 = [(BKBookParser *)self book];
          genre2 = [book21 genre];
          v68 = [v63 isEqualToString:genre2];

          if (v68)
          {
LABEL_60:

            v72 = *(v4 + 7);
            if (v72 && (CFRetain(v72), (book23 = *(v4 + 7)) != 0))
            {
              book22 = [(BKBookParser *)self book];
              [book22 setGenre:book23];
            }

            else
            {
              book23 = [(BKBookParser *)self book];
              [book23 setGenre:0];
            }

            v75 = *(v4 + 8);
            if (v75)
            {
              CFRetain(v75);
              v76 = *(v4 + 8);
            }

            else
            {
              v76 = 0;
            }

            v77 = v76;
            book24 = [(BKBookParser *)self book];
            bookEpubId = [book24 bookEpubId];
            if ([bookEpubId length])
            {
              book25 = [(BKBookParser *)self book];
              bookEpubId2 = [book25 bookEpubId];
              v82 = [v77 isEqualToString:bookEpubId2];

              if (v82)
              {
LABEL_73:

                v86 = *(v4 + 8);
                if (v86 && (CFRetain(v86), (book27 = *(v4 + 8)) != 0))
                {
                  book26 = [(BKBookParser *)self book];
                  [book26 setBookEpubId:book27];
                }

                else
                {
                  book27 = [(BKBookParser *)self book];
                  [book27 setBookEpubId:0];
                }

                v89 = *(v4 + 9);
                if (v89)
                {
                  CFRetain(v89);
                  v90 = *(v4 + 9);
                }

                else
                {
                  v90 = 0;
                }

                v91 = v90;
                book28 = [(BKBookParser *)self book];
                bookEpubIdWithUUIDScheme = [book28 bookEpubIdWithUUIDScheme];
                if ([bookEpubIdWithUUIDScheme length])
                {
                  book29 = [(BKBookParser *)self book];
                  bookEpubIdWithUUIDScheme2 = [book29 bookEpubIdWithUUIDScheme];
                  v96 = [v91 isEqualToString:bookEpubIdWithUUIDScheme2];

                  if (v96)
                  {
LABEL_86:

                    v100 = *(v4 + 9);
                    if (v100 && (CFRetain(v100), (book31 = *(v4 + 9)) != 0))
                    {
                      book30 = [(BKBookParser *)self book];
                      [book30 setBookEpubIdWithUUIDScheme:book31];
                    }

                    else
                    {
                      book31 = [(BKBookParser *)self book];
                      [book31 setBookEpubIdWithUUIDScheme:0];
                    }

                    v103 = ITEpubFolder::dcTermsModified(v4);
                    book32 = [(BKBookParser *)self book];
                    [book32 setDcTermsModified:v103];

                    v105 = ITEpubFolder::readingDirection(v4);
                    book33 = [(BKBookParser *)self book];
                    [book33 setReadingDirection:v105];

                    active = ITEpubFolder::mediaActiveClass(v4);
                    book34 = [(BKBookParser *)self book];
                    [book34 setMediaActiveClass:active];

                    v109 = ITEpubFolder::pageProgressionDirection(v4);
                    if (v109)
                    {
                      v110 = v109;
                    }

                    else
                    {
                      v110 = @"default";
                    }

                    book35 = [(BKBookParser *)self book];
                    [book35 setPageProgressionDirection:v110];

                    v112 = ITEpubFolder::dcTermsContributor(v4);
                    book36 = [(BKBookParser *)self book];
                    [book36 setDcTermsContributor:v112];

                    book37 = [(BKBookParser *)self book];
                    bookLanguage3 = [book37 bookLanguage];
                    if (([IMLanguageUtilities languageIsArabic:bookLanguage3]& 1) != 0)
                    {
                      v116 = 1;
                    }

                    else
                    {
                      book38 = [(BKBookParser *)self book];
                      bookLanguage4 = [book38 bookLanguage];
                      v116 = [IMLanguageUtilities languageIsHebrew:bookLanguage4];
                    }

                    book39 = [(BKBookParser *)self book];
                    pageProgressionDirection = [book39 pageProgressionDirection];
                    v121 = [pageProgressionDirection isEqualToString:@"default"];

                    if ((v121 & v116) != 0)
                    {
                      book40 = [(BKBookParser *)self book];
                      [book40 setPageProgressionDirection:@"rtl"];
                    }

                    v123 = ITEpubFolder::coverWritingMode(v4);
                    if (v123)
                    {
                      v124 = v123;
                    }

                    else
                    {
                      v124 = @"default";
                    }

                    book41 = [(BKBookParser *)self book];
                    [book41 setCoverWritingModeString:v124];

                    v126 = ITEpubFolder::scrollDirection(v4);
                    if (v126)
                    {
                      v127 = v126;
                    }

                    else
                    {
                      v127 = @"default";
                    }

                    book42 = [(BKBookParser *)self book];
                    [book42 setScrollDirection:v127];

                    if (ITEpubFolder::ebpajGuideVersion(v4))
                    {
                      book43 = [(BKBookParser *)self book];
                      bookLanguage5 = [book43 bookLanguage];
                      v131 = [bookLanguage5 caseInsensitiveCompare:@"ja"] == 0;

                      if (v131 || (-[BKBookParser book](self, "book"), v132 = objc_claimAutoreleasedReturnValue(), [v132 bookLanguage], v133 = objc_claimAutoreleasedReturnValue(), v134 = objc_msgSend(v133, "rangeOfString:options:", @"ja", 9) == 0, v133, v132, v134) && ((-[BKBookParser book](self, "book"), v135 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v135, "bookLanguage"), v136 = objc_claimAutoreleasedReturnValue(), v137 = objc_msgSend(v136, "characterAtIndex:", 2), v136, v135, v137 == 95) || v137 == 45))
                      {
                        book44 = [(BKBookParser *)self book];
                        [book44 setRespectImageSizeClass:@"gaiji"];

                        book45 = [(BKBookParser *)self book];
                        [book45 setRespectImageSizeClassIsPrefix:1];
                      }
                    }

                    [(BKEpubBookParser *)self setPublisherInfoFromParser:v4];
                    [(BKEpubBookParser *)self setAppleDisplayOptionsFromParser:v4];
                    [(BKEpubBookParser *)self resetItunesMetadata];
                    book46 = [(BKBookParser *)self book];
                    bookLanguage6 = [book46 bookLanguage];
                    v142 = [NSLocale canonicalLanguageIdentifierFromString:bookLanguage6];
                    book47 = [(BKBookParser *)self book];
                    [book47 setBookLanguage:v142];

                    v144 = ITEpubFolder::spineIndexInPackage(v4);
                    if ((v144 & 0x80000000) != 0)
                    {
                      v145 = 0;
                    }

                    else
                    {
                      v145 = [NSNumber numberWithInt:v144];
                    }

                    book48 = [(BKBookParser *)self book];
                    [book48 setSpineIndexInPackage:v145];

                    if (v144 >= 0)
                    {
                    }

                    v147 = (*(*v4 + 96))(v4);
                    [(BKEpubBookParser *)self tryEmbeddedHrefForCoverArtHref:v147];
                    if (v147)
                    {
                      CFRelease(v147);
                    }

                    book49 = [(BKBookParser *)self book];
                    [book49 setDateLastOpened:0];

                    v149 = (*(*v4 + 152))(v4);
                    book50 = [(BKBookParser *)self book];
                    parserOPFPath = [book50 parserOPFPath];
                    if ([parserOPFPath length])
                    {
                      book51 = [(BKBookParser *)self book];
                      parserOPFPath2 = [book51 parserOPFPath];
                      v154 = [v149 isEqualToString:parserOPFPath2];

                      if (v154)
                      {
                        goto LABEL_123;
                      }

                      book50 = _ITEpubParsingLog(v155);
                      if (os_log_type_enabled(book50, OS_LOG_TYPE_DEFAULT))
                      {
                        book52 = [(BKBookParser *)self book];
                        parserOPFPath3 = [book52 parserOPFPath];
                        *buf = 138544386;
                        v209 = @"self.book.parserOPFPath";
                        v210 = 2160;
                        v211 = 1752392040;
                        v212 = 2112;
                        v213 = v149;
                        v214 = 2160;
                        v215 = 1752392040;
                        v216 = 2112;
                        v217 = parserOPFPath3;
                        _os_log_impl(&dword_0, book50, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", buf, 0x34u);
                      }
                    }

                    else
                    {
                    }

LABEL_123:
                    v158 = (*(*v4 + 152))(v4);
                    [(BKBookParser *)self book];
                    if (v158)
                      v159 = {;
                      [v159 setParserOPFPath:v158];
                    }

                    else
                      v158 = {;
                      [v158 setParserOPFPath:0];
                    }

                    v160 = (*(*v4 + 160))(v4);
                    book53 = [(BKBookParser *)self book];
                    parserNCXPath = [book53 parserNCXPath];
                    if ([parserNCXPath length])
                    {
                      book54 = [(BKBookParser *)self book];
                      parserNCXPath2 = [book54 parserNCXPath];
                      v165 = [v160 isEqualToString:parserNCXPath2];

                      if (v165)
                      {
                        goto LABEL_132;
                      }

                      book53 = _ITEpubParsingLog(v166);
                      if (os_log_type_enabled(book53, OS_LOG_TYPE_DEFAULT))
                      {
                        book55 = [(BKBookParser *)self book];
                        parserNCXPath3 = [book55 parserNCXPath];
                        *buf = 138544386;
                        v209 = @"self.book.parserNCXPath";
                        v210 = 2160;
                        v211 = 1752392040;
                        v212 = 2112;
                        v213 = v160;
                        v214 = 2160;
                        v215 = 1752392040;
                        v216 = 2112;
                        v217 = parserNCXPath3;
                        _os_log_impl(&dword_0, book53, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", buf, 0x34u);
                      }
                    }

                    else
                    {
                    }

LABEL_132:
                    v169 = (*(*v4 + 160))(v4);
                    [(BKBookParser *)self book];
                    if (v169)
                      v170 = {;
                      [v170 setParserNCXPath:v169];
                    }

                    else
                      v169 = {;
                      [v169 setParserNCXPath:0];
                    }

                    v171 = (*(*v4 + 80))(v4);
                    book56 = [(BKBookParser *)self book];
                    firstDocumentHref = [book56 firstDocumentHref];
                    if ([firstDocumentHref length])
                    {
                      book57 = [(BKBookParser *)self book];
                      firstDocumentHref2 = [book57 firstDocumentHref];
                      v176 = [v171 isEqualToString:firstDocumentHref2];

                      if (v176)
                      {
                        goto LABEL_141;
                      }

                      book56 = _ITEpubParsingLog(v177);
                      if (os_log_type_enabled(book56, OS_LOG_TYPE_DEFAULT))
                      {
                        book58 = [(BKBookParser *)self book];
                        firstDocumentHref3 = [book58 firstDocumentHref];
                        *buf = 138544386;
                        v209 = @"self.book.firstDocumentHref";
                        v210 = 2160;
                        v211 = 1752392040;
                        v212 = 2112;
                        v213 = v171;
                        v214 = 2160;
                        v215 = 1752392040;
                        v216 = 2112;
                        v217 = firstDocumentHref3;
                        _os_log_impl(&dword_0, book56, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", buf, 0x34u);
                      }
                    }

                    else
                    {
                    }

LABEL_141:
                    v180 = (*(*v4 + 80))(v4);
                    [(BKBookParser *)self book];
                    if (v180)
                      v181 = {;
                      [v181 setFirstDocumentHref:v180];
                    }

                    else
                      v180 = {;
                      [v180 setFirstDocumentHref:0];
                    }

                    v182 = (*(*v4 + 104))(v4);
                    book59 = [(BKBookParser *)self book];
                    tocPageHref = [book59 tocPageHref];
                    if ([tocPageHref length])
                    {
                      book60 = [(BKBookParser *)self book];
                      tocPageHref2 = [book60 tocPageHref];
                      v187 = [v182 isEqualToString:tocPageHref2];

                      if (v187)
                      {
LABEL_150:

                        v191 = (*(*v4 + 104))(v4);
                        [(BKBookParser *)self book];
                        if (v191)
                          v192 = {;
                          [v192 setTocPageHref:v191];
                        }

                        else
                          v191 = {;
                          [v191 setTocPageHref:0];
                        }

                        v193 = objc_opt_new();
                        v194 = objc_opt_new();
                        v195 = objc_opt_new();
                        [(BKEpubBookParser *)self constructBKNavigationInfoWithReadable:v4 withAnchorInfo:v193];
                        [(BKEpubBookParser *)self constructBKLandmarkInfoWithReadable:v4 withAnchorInfo:v194];
                        [(BKEpubBookParser *)self constructBKPhysicalPageWithReadable:v4 withAnchorInfo:v195];
                        [(BKEpubBookParser *)self constructBKIdCfiMappingsWithEpub:v4];
                        [(BKEpubBookParser *)self constructBKDocumentWithReadable:v4 chapters:v193 landmarks:v194 physicalPages:v195];
                        [(BKEpubBookParser *)self constructBKProtectionInfoWithReadable:v4];

                        book61 = [(BKBookParser *)self book];
                        LODWORD(v194) = [BKEpubBookParser recomputeFixedLayoutDimensionsForBook:book61];

                        if (v194)
                        {
                          v207 = -998;
                          book62 = [(BKBookParser *)self book];
                          [book62 resetAsNewlyDownloaded];
                        }

                        else
                        {
                          illegalEncryptionAlgorithm = self->_illegalEncryptionAlgorithm;
                          book63 = [(BKBookParser *)self book];
                          book62 = book63;
                          if (illegalEncryptionAlgorithm)
                          {
                            [book63 setParserVersion:@"BKEpubBookParser - IllegalEncryption - 10.04.2011"];
                          }

                          else
                          {
                            [book63 setParserVersion:@"BookEPUB Parser - 2024.09.26"];
                          }
                        }

                        goto LABEL_158;
                      }

                      book59 = _ITEpubParsingLog(v188);
                      if (os_log_type_enabled(book59, OS_LOG_TYPE_DEFAULT))
                      {
                        book64 = [(BKBookParser *)self book];
                        tocPageHref3 = [book64 tocPageHref];
                        *buf = 138544386;
                        v209 = @"self.book.tocPageHref";
                        v210 = 2160;
                        v211 = 1752392040;
                        v212 = 2112;
                        v213 = v182;
                        v214 = 2160;
                        v215 = 1752392040;
                        v216 = 2112;
                        v217 = tocPageHref3;
                        _os_log_impl(&dword_0, book59, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", buf, 0x34u);
                      }
                    }

                    else
                    {
                    }

                    goto LABEL_150;
                  }

                  book28 = _ITEpubParsingLog(v97);
                  if (os_log_type_enabled(book28, OS_LOG_TYPE_DEFAULT))
                  {
                    book65 = [(BKBookParser *)self book];
                    bookEpubIdWithUUIDScheme3 = [book65 bookEpubIdWithUUIDScheme];
                    *buf = 138544386;
                    v209 = @"self.book.bookEpubIdWithUUIDScheme";
                    v210 = 2160;
                    v211 = 1752392040;
                    v212 = 2112;
                    v213 = v91;
                    v214 = 2160;
                    v215 = 1752392040;
                    v216 = 2112;
                    v217 = bookEpubIdWithUUIDScheme3;
                    _os_log_impl(&dword_0, book28, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", buf, 0x34u);
                  }
                }

                else
                {
                }

                goto LABEL_86;
              }

              book24 = _ITEpubParsingLog(v83);
              if (os_log_type_enabled(book24, OS_LOG_TYPE_DEFAULT))
              {
                book66 = [(BKBookParser *)self book];
                bookEpubId3 = [book66 bookEpubId];
                *buf = 138544386;
                v209 = @"self.book.bookEpubId";
                v210 = 2160;
                v211 = 1752392040;
                v212 = 2112;
                v213 = v77;
                v214 = 2160;
                v215 = 1752392040;
                v216 = 2112;
                v217 = bookEpubId3;
                _os_log_impl(&dword_0, book24, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", buf, 0x34u);
              }
            }

            else
            {
            }

            goto LABEL_73;
          }

          book20 = _ITEpubParsingLog(v69);
          if (os_log_type_enabled(book20, OS_LOG_TYPE_DEFAULT))
          {
            book67 = [(BKBookParser *)self book];
            genre3 = [book67 genre];
            *buf = 138544386;
            v209 = @"self.book.genre";
            v210 = 2160;
            v211 = 1752392040;
            v212 = 2112;
            v213 = v63;
            v214 = 2160;
            v215 = 1752392040;
            v216 = 2112;
            v217 = genre3;
            _os_log_impl(&dword_0, book20, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", buf, 0x34u);
          }
        }

        else
        {
        }

        goto LABEL_60;
      }

      book16 = _ITEpubParsingLog(v55);
      if (os_log_type_enabled(book16, OS_LOG_TYPE_DEFAULT))
      {
        book68 = [(BKBookParser *)self book];
        bookLanguage7 = [book68 bookLanguage];
        *buf = 138544386;
        v209 = @"self.book.bookLanguage";
        v210 = 2160;
        v211 = 1752392040;
        v212 = 2112;
        v213 = v49;
        v214 = 2160;
        v215 = 1752392040;
        v216 = 2112;
        v217 = bookLanguage7;
        _os_log_impl(&dword_0, book16, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", buf, 0x34u);
      }
    }

    else
    {
    }

    goto LABEL_47;
  }

  v5 = _ITEpubParsingLog(v3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    LODWORD(v209) = v207;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "createEpubParser error: %d", buf, 8u);
  }

  v6 = BCIMLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v209 = "[BKEpubBookParser _fullParse]";
    v210 = 2080;
    v211 = "/Library/Caches/com.apple.xbs/Sources/Alder/ios/AEBookPlugins/Shared/Models/Parsing/BKEpubBookParser.mm";
    v212 = 1024;
    LODWORD(v213) = 145;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
  }

  book62 = BCIMLog();
  if (os_log_type_enabled(book62, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v209) = v207;
    _os_log_impl(&dword_0, book62, OS_LOG_TYPE_INFO, "@createEpubParser error: %d", buf, 8u);
  }

LABEL_158:

  ITRetain::release(v4);
  result = v207;
  if (v207 + 42005 < 2 || v207 == -42597)
  {
    return -998;
  }

  if (!v207)
  {
    if (self->_illegalEncryptionAlgorithm)
    {
      v200 = _ITEpubParsingLog(v207);
      if (os_log_type_enabled(v200, OS_LOG_TYPE_ERROR))
      {
        book69 = [(BKBookParser *)self book];
        assetLogID = [book69 assetLogID];
        book70 = [(BKBookParser *)self book];
        bookBundlePath2 = [book70 bookBundlePath];
        book71 = [(BKBookParser *)self book];
        assetID = [book71 assetID];
        *buf = 138543874;
        v209 = assetLogID;
        v210 = 2112;
        v211 = bookBundlePath2;
        v212 = 2112;
        v213 = assetID;
        _os_log_impl(&dword_0, v200, OS_LOG_TYPE_ERROR, "Illegal encryption for book %{public}@ %@:%@", buf, 0x20u);
      }

      return -999;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)isDifferentParserVersion:(id)version
{
  versionCopy = version;
  parserVersion = [versionCopy parserVersion];
  if (parserVersion)
  {
    parserVersion2 = [versionCopy parserVersion];
    v6 = [@"BookEPUB Parser - 2024.09.26" isEqualToString:parserVersion2] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (int)_touchUpParse
{
  book = [(BKBookParser *)self book];
  v4 = [(BKEpubBookParser *)self isDifferentParserVersion:book];

  if (!v4)
  {
    return 0;
  }

  book2 = [(BKBookParser *)self book];
  parserVersion = [book2 parserVersion];
  if (parserVersion)
  {
    book3 = [(BKBookParser *)self book];
    parserVersion2 = [book3 parserVersion];
    v9 = [@"BKEpubBookParser - IllegalEncryption - 10.04.2011" isEqualToString:parserVersion2];

    if (v9)
    {
      return -999;
    }
  }

  else
  {
  }

  return [(BKEpubBookParser *)self _fullParse];
}

- (int)parse:(BOOL)parse
{
  if (parse)
  {
    book4 = _ITEpubParsingLog(self);
    if (os_log_type_enabled(book4, OS_LOG_TYPE_ERROR))
    {
      book = [(BKBookParser *)self book];
      assetLogID = [book assetLogID];
      book2 = [(BKBookParser *)self book];
      bookBundlePath = [book2 bookBundlePath];
      book3 = [(BKBookParser *)self book];
      assetID = [book3 assetID];
      v47 = 138543874;
      v48 = assetLogID;
      v49 = 2112;
      v50 = bookBundlePath;
      v51 = 2112;
      v52 = assetID;
      _os_log_impl(&dword_0, book4, OS_LOG_TYPE_ERROR, "Skipping all parsing for %{public}@ - %@:%@ -- Why would we do this?", &v47, 0x20u);
    }

    goto LABEL_28;
  }

  book4 = [(BKBookParser *)self book];
  book5 = [(BKBookParser *)self book];
  bookBundlePath2 = [book5 bookBundlePath];

  if (!bookBundlePath2)
  {
    v26 = _ITEpubParsingLog(v13);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      databaseKey = [book4 databaseKey];
      bookAuthor = [book4 bookAuthor];
      bookTitle = [book4 bookTitle];
      assetLogID2 = [book4 assetLogID];
      bookBundlePath3 = [book4 bookBundlePath];
      assetID2 = [book4 assetID];
      v47 = 138413570;
      v48 = databaseKey;
      v49 = 2112;
      v50 = bookAuthor;
      v51 = 2112;
      v52 = bookTitle;
      v53 = 2114;
      v54 = assetLogID2;
      v55 = 2112;
      v56 = bookBundlePath3;
      v57 = 2112;
      v58 = assetID2;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "Parsing Not Possible -- No Bundle Path: [%@] {%@ - %@} - %{public}@ - %@:%@", &v47, 0x3Eu);
    }

    v33 = BCIMLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v47 = 136315650;
      v48 = "[BKEpubBookParser parse:]";
      v49 = 2080;
      v50 = "/Library/Caches/com.apple.xbs/Sources/Alder/ios/AEBookPlugins/Shared/Models/Parsing/BKEpubBookParser.mm";
      v51 = 1024;
      LODWORD(v52) = 368;
      _os_log_impl(&dword_0, v33, OS_LOG_TYPE_INFO, "%s %s:%d", &v47, 0x1Cu);
    }

    v24 = BCIMLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      databaseKey2 = [book4 databaseKey];
      bookAuthor2 = [book4 bookAuthor];
      bookTitle2 = [book4 bookTitle];
      v47 = 138412802;
      v48 = databaseKey2;
      v49 = 2112;
      v50 = bookAuthor2;
      v51 = 2112;
      v52 = bookTitle2;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "@Parsing Not Possible -- No Bundle Path: [%@] {%@ - %@}", &v47, 0x20u);
    }

    v21 = -1000;
    goto LABEL_26;
  }

  wasParsed = [book4 wasParsed];
  if (!wasParsed)
  {
    goto LABEL_9;
  }

  isDirty = [book4 isDirty];
  if ([isDirty BOOLValue] & 1) != 0 || (-[NSObject needsReparsing](book4, "needsReparsing"))
  {

LABEL_9:
    v16 = _ITEpubParsingLog(wasParsed);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      assetLogID3 = [book4 assetLogID];
      bookBundlePath4 = [book4 bookBundlePath];
      assetID3 = [book4 assetID];
      v47 = 138543874;
      v48 = assetLogID3;
      v49 = 2112;
      v50 = bookBundlePath4;
      v51 = 2112;
      v52 = assetID3;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Performing full parse on %{public}@ - %@:%@", &v47, 0x20u);
    }

    _fullParse = [(BKEpubBookParser *)self _fullParse];
    v21 = _fullParse;
    if (!_fullParse)
    {
      v37 = +[NSDate date];
      [book4 setParseDate:v37];

      [book4 setIsDirty:&__kCFBooleanFalse];
LABEL_28:
      v21 = 0;
      goto LABEL_29;
    }

    v22 = _ITEpubParsingLog(_fullParse);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v47 = 67109120;
      LODWORD(v48) = v21;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "Full parse failure: %d", &v47, 8u);
    }

    v23 = BCIMLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v47 = 136315650;
      v48 = "[BKEpubBookParser parse:]";
      v49 = 2080;
      v50 = "/Library/Caches/com.apple.xbs/Sources/Alder/ios/AEBookPlugins/Shared/Models/Parsing/BKEpubBookParser.mm";
      v51 = 1024;
      LODWORD(v52) = 347;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "%s %s:%d", &v47, 0x1Cu);
    }

    v24 = BCIMLog();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      goto LABEL_26;
    }

    v47 = 67109120;
    LODWORD(v48) = v21;
    v25 = "@_fullParse: %d";
    goto LABEL_18;
  }

  v39 = BEAlwaysFullParseEPUB();

  if (v39)
  {
    goto LABEL_9;
  }

  v40 = _ITEpubParsingLog(wasParsed);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    assetLogID4 = [book4 assetLogID];
    bookBundlePath5 = [book4 bookBundlePath];
    assetID4 = [book4 assetID];
    v47 = 138543874;
    v48 = assetLogID4;
    v49 = 2112;
    v50 = bookBundlePath5;
    v51 = 2112;
    v52 = assetID4;
    _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "Performing touchup parse on %{public}@ - %@:%@", &v47, 0x20u);
  }

  _touchUpParse = [(BKEpubBookParser *)self _touchUpParse];
  v21 = _touchUpParse;
  if (_touchUpParse)
  {
    v45 = _ITEpubParsingLog(_touchUpParse);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v47 = 67109120;
      LODWORD(v48) = v21;
      _os_log_impl(&dword_0, v45, OS_LOG_TYPE_ERROR, "Touch up parse failure: %d", &v47, 8u);
    }

    v46 = BCIMLog();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      v47 = 136315650;
      v48 = "[BKEpubBookParser parse:]";
      v49 = 2080;
      v50 = "/Library/Caches/com.apple.xbs/Sources/Alder/ios/AEBookPlugins/Shared/Models/Parsing/BKEpubBookParser.mm";
      v51 = 1024;
      LODWORD(v52) = 360;
      _os_log_impl(&dword_0, v46, OS_LOG_TYPE_INFO, "%s %s:%d", &v47, 0x1Cu);
    }

    v24 = BCIMLog();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      goto LABEL_26;
    }

    v47 = 67109120;
    LODWORD(v48) = v21;
    v25 = "@_touchUpParse: %d";
LABEL_18:
    _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, v25, &v47, 8u);
LABEL_26:
  }

LABEL_29:

  return v21;
}

- (void)tryEmbeddedHrefForCoverArtHref:(id)href
{
  hrefCopy = href;
  if (hrefCopy)
  {
    v14 = hrefCopy;
    v5 = hrefCopy;
    book = [(BKBookParser *)self book];
    bookContentSubpath = [book bookContentSubpath];
    v8 = [bookContentSubpath length];

    v9 = v5;
    if (v8)
    {
      book2 = [(BKBookParser *)self book];
      bookContentSubpath2 = [book2 bookContentSubpath];
      v9 = [bookContentSubpath2 stringByAppendingPathComponent:v5];
    }

    book3 = [(BKBookParser *)self book];
    [book3 setEmbeddedArtHref:v9];

    book4 = [(BKBookParser *)self book];
    [book4 setEmbeddedArtHrefRejected:0];

    hrefCopy = v14;
  }
}

- (void)constructBKProtectionInfoWithReadable:(BKReadableFormat *)readable
{
  if (!readable)
  {
    return;
  }

  book = [(BKBookParser *)self book];
  sinfInfo = [book sinfInfo];
  allObjects = [sinfInfo allObjects];
  v7 = [allObjects count];

  if (v7)
  {
    book2 = [(BKBookParser *)self book];
    book3 = [(BKBookParser *)self book];
    sinfInfo2 = [book3 sinfInfo];
    [book2 removeSinfInfo:sinfInfo2];
  }

  if (self->_illegalEncryptionAlgorithm)
  {
    book4 = [(BKBookParser *)self book];
    managedObjectContext = [book4 managedObjectContext];

    v20 = [BKProtectionInfo newEmptyProtectionInfo:managedObjectContext];
    managedObjectContext2 = [[NSNumber alloc] initWithInt:0xFFFFFFFFLL];
    [(__CFDictionary *)v20 setSinfNumber:managedObjectContext2];
    book5 = [(BKBookParser *)self book];
    [book5 addSinfInfoObject:v20];
  }

  else
  {
    managedObjectContext = readable->var17;
    v20 = readable->var16;
    if (!v20)
    {
      goto LABEL_7;
    }

    book6 = [(BKBookParser *)self book];
    managedObjectContext2 = [book6 managedObjectContext];

    book5 = [(__CFDictionary *)managedObjectContext keyEnumerator];
    for (i = 0; ; i = nextObject)
    {
      nextObject = [book5 nextObject];

      if (!nextObject)
      {
        break;
      }

      v16 = [(__CFDictionary *)managedObjectContext objectForKey:nextObject];
      v17 = [BKProtectionInfo newEmptyProtectionInfo:managedObjectContext2];
      v18 = [[NSNumber alloc] initWithInt:{objc_msgSend(nextObject, "intValue")}];
      [v17 setSinfNumber:v18];
      [v17 setSinfBlob:v16];
      book7 = [(BKBookParser *)self book];
      [book7 addSinfInfoObject:v17];
    }
  }

LABEL_7:
}

- (BOOL)isLegalEncryption:(id)encryption
{
  encryptionCopy = encryption;
  v4 = encryptionCopy;
  if (!encryptionCopy || ([encryptionCopy rangeOfString:@".apple.com"], v5) || (objc_msgSend(v4, "rangeOfString:", BEAdobeFontManglingAlgorithm), v6) || (objc_msgSend(v4, "rangeOfString:", BEIDPFFontManglingAlgorithm), v7))
  {
    v8 = 1;
  }

  else
  {
    v10 = BCIMLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 136315650;
      v13 = "[BKEpubBookParser isLegalEncryption:]";
      v14 = 2080;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Alder/ios/AEBookPlugins/Shared/Models/Parsing/BKEpubBookParser.mm";
      v16 = 1024;
      v17 = 462;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%s %s:%d", &v12, 0x1Cu);
    }

    v11 = BCIMLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "@***** Unrecognized Encryption Algorithm: %@", &v12, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)isLegalCompression:(id)compression
{
  compressionCopy = compression;
  if ([compressionCopy length] && (objc_msgSend(compressionCopy, "isEqualToString:", @"none") & 1) == 0)
  {
    v5 = BCIMLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 136315650;
      v9 = "[BKEpubBookParser isLegalCompression:]";
      v10 = 2080;
      v11 = "/Library/Caches/com.apple.xbs/Sources/Alder/ios/AEBookPlugins/Shared/Models/Parsing/BKEpubBookParser.mm";
      v12 = 1024;
      v13 = 483;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%s %s:%d", &v8, 0x1Cu);
    }

    v6 = BCIMLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = compressionCopy;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "@***** Unrecognized Compression Algorithm: %@", &v8, 0xCu);
    }

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)mediaOverlayHrefForManifestInfo:(__CFDictionary *)info readable:(BKReadableFormat *)readable
{
  Value = CFDictionaryGetValue(info, @"media-overlay");
  if (Value && (v6 = (*(readable->var0 + 6))(readable, Value)) != 0)
  {
    v7 = v6;
    v8 = CFDictionaryGetValue(v6, @"unescaped_href");
    v9 = v8;
    if (v8)
    {
      stringByRemovingPercentEncoding = [v8 stringByRemovingPercentEncoding];
      v11 = stringByRemovingPercentEncoding;
      if (stringByRemovingPercentEncoding)
      {
        v12 = stringByRemovingPercentEncoding;
      }

      else
      {
        v12 = v9;
      }

      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    CFRelease(v7);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)constructBKDocumentWithReadable:(BKReadableFormat *)readable chapters:(id)chapters landmarks:(id)landmarks physicalPages:(id)pages
{
  chaptersCopy = chapters;
  landmarksCopy = landmarks;
  pagesCopy = pages;
  readableCopy = readable;
  if (readable)
  {
    book = [(BKBookParser *)self book];
    managedObjectContext = [book managedObjectContext];

    LODWORD(book) = (*(readable->var0 + 4))(readable);
    v12 = readable->var16;
    v64 = [[NSNumber alloc] initWithInt:0xFFFFFFFFLL];
    v13 = [[NSNumber alloc] initWithBool:1];
    v14 = [[NSNumber alloc] initWithBool:0];
    v55 = [[NSNumber alloc] initWithBool:1];
    v68 = [[NSMutableDictionary alloc] initWithCapacity:book];
    v57 = objc_alloc_init(NSMutableDictionary);
    context = objc_autoreleasePoolPush();
    book2 = [(BKBookParser *)self book];
    v56 = chaptersCopy;
    databaseKey = [book2 databaseKey];

    v16 = (book - 1);
    v61 = v14;
    v62 = v12;
    v67 = v13;
    selfCopy = self;
    do
    {
      if (v16 == -1)
      {
        break;
      }

      v17 = (*(readableCopy->var0 + 5))(readableCopy, v16);
      Value = CFDictionaryGetValue(v17, @"unescaped_href");
      if (v12)
      {
        v19 = [(__CFDictionary *)v12 objectForKey:Value];
        v20 = v19;
        if (v19)
        {
          v21 = [v19 objectForKey:@"encryptionAlgorithm"];
          v22 = [v20 objectForKey:@"compressionAlgorithm"];
          if (![(BKEpubBookParser *)selfCopy isLegalEncryption:v21]|| ![(BKEpubBookParser *)selfCopy isLegalCompression:v22])
          {
            selfCopy->_illegalEncryptionAlgorithm = 1;
          }
        }
      }

      else
      {
        v20 = 0;
      }

      if (!selfCopy->_illegalEncryptionAlgorithm)
      {
        v23 = [(BKEpubBookParser *)selfCopy mediaOverlayHrefForManifestInfo:v17 readable:readableCopy];
        v24 = [BKDocument newEmptyDocument:managedObjectContext];
        stringByRemovingPercentEncoding = [Value stringByRemovingPercentEncoding];
        v66 = stringByRemovingPercentEncoding;
        if (stringByRemovingPercentEncoding)
        {
          v26 = stringByRemovingPercentEncoding;
        }

        else
        {
          v26 = Value;
        }

        [v24 setHref:v26];
        [v24 setMediaOverlayHref:v23];
        [v24 setMime:{CFDictionaryGetValue(v17, @"media-type"}];
        [v24 setManifestId:{CFDictionaryGetValue(v17, @"id"}];
        [v24 setFallbackId:{CFDictionaryGetValue(v17, @"fallback"}];
        [v24 setManifestProperties:{CFDictionaryGetValue(v17, @"properties"}];
        [v24 setDocumentOrdinal:v64];
        [v24 setBookDatabaseKey:databaseKey];
        if (v20)
        {
          v27 = [v20 objectForKey:@"encryptionAlgorithm"];
          v28 = [v20 objectForKey:@"compressionAlgorithm"];
          v29 = [v20 objectForKey:@"fairplay-id"];
          if (v29)
          {
            v58 = v23;
            v30 = [[NSNumber alloc] initWithInt:{objc_msgSend(v29, "intValue")}];
            [v24 setSinfNumber:v30];

            v23 = v58;
          }

          [v24 setCompressionAlgorithm:v28];
          [v24 setEncryptionAlgorithm:v27];
        }

        [v68 setObject:v24 forKey:Value];

        v12 = v62;
      }

      if (v17)
      {
        CFRelease(v17);
      }

      illegalEncryptionAlgorithm = selfCopy->_illegalEncryptionAlgorithm;
      self = selfCopy;

      v16 = (v16 - 1);
    }

    while (!illegalEncryptionAlgorithm);

    chaptersCopy = v56;
    objc_autoreleasePoolPop(context);
    if (!self->_illegalEncryptionAlgorithm)
    {
      v32 = (*(readableCopy->var0 + 7))(readableCopy);
      if (v32)
      {
        v33 = (v32 - 1);
        do
        {
          v34 = (*(readableCopy->var0 + 8))(readableCopy, v33);
          if ([v34 length])
          {
            v35 = [[NSNumber alloc] initWithInt:v33];
            v36 = [v68 objectForKey:v34];
            documentOrdinal = [v36 documentOrdinal];
            integerValue = [documentOrdinal integerValue];

            if (integerValue != -1)
            {
              v39 = [BKDocument documentKeyWithHref:v34 documentOrdinal:v35];
              v40 = [v68 objectForKey:v39];

              if (!v40)
              {
                v41 = [v57 objectForKey:v34];
                if (!v41)
                {
                  v42 = +[NSMutableArray array];
                  [v57 setObject:v42 forKey:v34];
                  v41 = v42;
                  [v42 addObject:v34];
                }

                [v41 addObject:v39];
                v43 = [BKDocument newEmptyDocument:managedObjectContext];
                [v43 copyPropertiesFrom:v36];
                v44 = [NSNumber numberWithBool:0];
                [v43 setNonlinearElement:v44];

                [v68 setObject:v43 forKey:v39];
                v36 = v43;
                chaptersCopy = v56;
              }
            }

            if (v36)
            {
              [v36 setDocumentOrdinal:v35];
              v45 = (*(readableCopy->var0 + 9))(readableCopy, v33);
              v46 = v45;
              if (v45)
              {
                if (!CFBooleanGetValue(v45))
                {
                  [v36 setNonlinearElement:v55];
                }

                CFRelease(v46);
              }

              v47 = [chaptersCopy objectForKey:v34];

              if (v47)
              {
                [v36 setHasTocElements:v67];
              }

              v48 = [landmarksCopy objectForKey:v34];

              if (v48)
              {
                [v36 setHasLandmarkElements:v67];
              }

              v49 = [pagesCopy objectForKey:v34];

              if (v49)
              {
                [v36 setHasPhysicalElements:v67];
              }
            }

            v34 = 0;
          }

          v33 = (v33 - 1);
        }

        while (v33 != -1);
      }
    }

    allValues = [v57 allValues];
    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = sub_A05F4;
    v71[3] = &unk_1E4FE0;
    v51 = v68;
    v72 = v51;
    v52 = v61;
    v73 = v52;
    v53 = v67;
    v74 = v53;
    [allValues enumerateObjectsUsingBlock:v71];
  }
}

- (int)constructEntity:(id)entity withNavPoint:(void *)point absoluteOrder:(int)order indentationLevel:(int)level withAnchorInfo:(id)info createdObjects:(id)objects
{
  entityCopy = entity;
  infoCopy = info;
  objectsCopy = objects;
  orderCopy = order;
  if (order < 0)
  {
    v23 = 0;
    v24 = 0;
  }

  else
  {
    book = [(BKBookParser *)self book];
    managedObjectContext = [book managedObjectContext];

    v40 = managedObjectContext;
    v18 = [NSEntityDescription insertNewObjectForEntityForName:entityCopy inManagedObjectContext:managedObjectContext];
    v19 = ITNavPoint::contentFileIncludingHash(point);
    v39 = *(point + 11);
    v38 = [NSURL URLWithString:?];
    path = [v38 path];
    book2 = [(BKBookParser *)self book];
    basePlusContentPath = [book2 basePlusContentPath];

    v37 = basePlusContentPath;
    v22 = [NSString pathRelativeToContentBase:basePlusContentPath forRelativePath:v19 startingFromAbsoluteFolderPath:path];

    v42 = v22;
    stringByRemovingPercentEncoding = [v22 stringByRemovingPercentEncoding];
    if ([stringByRemovingPercentEncoding length])
    {
      [v18 setValue:stringByRemovingPercentEncoding forKey:@"href"];
    }

    else
    {
      [v18 setValue:&stru_1E7188 forKey:@"href"];
    }

    stringByRemovingURLFragment = [v22 stringByRemovingURLFragment];
    if ([stringByRemovingURLFragment length])
    {
      [v18 setValue:stringByRemovingURLFragment forKey:@"baseHref"];
      v25 = [NSNumber numberWithBool:1];
      [infoCopy setObject:v25 forKey:stringByRemovingURLFragment];
    }

    else
    {
      [v18 setValue:&stru_1E7188 forKey:@"baseHref"];
    }

    v26 = *(point + 10);
    if (![(__CFString *)v26 length])
    {

      v26 = &stru_1E7188;
    }

    [v18 setValue:v26 forKey:@"name"];
    v27 = *(point + 12);
    if (![(__CFString *)v27 length])
    {

      v27 = &stru_1E7188;
    }

    [v18 setValue:v27 forKey:@"htmlName"];
    v28 = [NSNumber numberWithInt:level];
    [v18 setValue:v28 forKey:@"indentationLevel"];

    v29 = [NSNumber numberWithInt:orderCopy];
    [v18 setValue:v29 forKey:@"absoluteOrder"];

    v30 = *(point + 7);
    if ([v30 length])
    {
      [v18 setValue:v30 forKey:@"type"];
    }

    [objectsCopy addObject:v18];
    v23 = (level + 1);

    v24 = orderCopy + 1;
  }

  v31 = *(point + 3) - *(point + 2);
  if (v31)
  {
    v32 = 0;
    v33 = v31 >> 3;
    if (v33 <= 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = v33;
    }

    do
    {
      v35 = ITNavPoint::childAtIndex(point);
      if (v35)
      {
        v24 = [(BKEpubBookParser *)self constructEntity:entityCopy withNavPoint:v35 absoluteOrder:v24 indentationLevel:v23 withAnchorInfo:infoCopy createdObjects:objectsCopy];
      }

      ++v32;
    }

    while (v34 != v32);
  }

  return v24;
}

- (void)constructBKNavigationInfoWithReadable:(BKReadableFormat *)readable withAnchorInfo:(id)info
{
  infoCopy = info;
  if (readable)
  {
    var13 = readable->var13;
    if (var13)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = objc_opt_new();
      [(BKEpubBookParser *)self constructEntity:@"BKNavigationInfo" withNavPoint:var13 absoluteOrder:0xFFFFFFFFLL indentationLevel:0xFFFFFFFFLL withAnchorInfo:infoCopy createdObjects:v8];
      book = [(BKBookParser *)self book];
      [book addChapters:v8];

      objc_autoreleasePoolPop(v7);
    }
  }
}

- (void)constructBKLandmarkInfoWithReadable:(BKReadableFormat *)readable withAnchorInfo:(id)info
{
  infoCopy = info;
  if (readable)
  {
    var14 = readable->var14;
    if (var14)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = objc_opt_new();
      [(BKEpubBookParser *)self constructEntity:@"BKLandmarkInfo" withNavPoint:var14 absoluteOrder:0xFFFFFFFFLL indentationLevel:0xFFFFFFFFLL withAnchorInfo:infoCopy createdObjects:v8];
      book = [(BKBookParser *)self book];
      [book addLandmarks:v8];

      objc_autoreleasePoolPop(v7);
    }
  }
}

- (void)constructBKPhysicalPageWithReadable:(BKReadableFormat *)readable withAnchorInfo:(id)info
{
  infoCopy = info;
  if (readable)
  {
    var15 = readable->var15;
    if (var15)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = objc_opt_new();
      [(BKEpubBookParser *)self constructEntity:@"BKPhysicalPage" withNavPoint:var15 absoluteOrder:0xFFFFFFFFLL indentationLevel:0xFFFFFFFFLL withAnchorInfo:infoCopy createdObjects:v8];
      book = [(BKBookParser *)self book];
      [book addPhysicalPages:v8];

      objc_autoreleasePoolPop(v7);
    }
  }
}

+ (id)bookExtraInfoCacheDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  lastObject = [v2 lastObject];

  v4 = [lastObject stringByAppendingPathComponent:@"BookCachedData"];

  return v4;
}

- (id)createBookExtraInfoCacheDirectoryIfNecessary
{
  bookExtraInfoCacheDirectory = [objc_opt_class() bookExtraInfoCacheDirectory];
  v3 = [NSURL fileURLWithPath:bookExtraInfoCacheDirectory isDirectory:1];
  v4 = +[NSFileManager defaultManager];
  relativePath = [v3 relativePath];
  [v4 createDirectoryAtPath:relativePath withIntermediateDirectories:1 attributes:0 error:0];

  return bookExtraInfoCacheDirectory;
}

+ (id)bookCachedDataPathForBookWithKey:(id)key
{
  keyCopy = key;
  bookExtraInfoCacheDirectory = [self bookExtraInfoCacheDirectory];
  v6 = [keyCopy stringByAppendingPathExtension:@"plist"];
  v7 = [bookExtraInfoCacheDirectory stringByAppendingPathComponent:v6];

  return v7;
}

- (void)constructBKIdCfiMappingsWithEpub:(void *)epub
{
  v4 = (*(*epub + 176))(epub, a2);
  if (v4)
  {
    v5 = v4;
    createBookExtraInfoCacheDirectoryIfNecessary = [(BKEpubBookParser *)self createBookExtraInfoCacheDirectoryIfNecessary];
    v7 = objc_opt_class();
    book = [(BKBookParser *)self book];
    databaseKey = [book databaseKey];
    v10 = [v7 bookCachedDataPathForBookWithKey:databaseKey];

    v15 = @"tocCfiIdMap";
    v16 = v5;
    v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v14 = 0;
    v12 = [NSPropertyListSerialization dataWithPropertyList:v11 format:200 options:0 error:&v14];
    v13 = v14;
    if (v12)
    {
      [v12 writeToFile:v10 atomically:1];
    }

    CFRelease(v5);
  }
}

+ (id)cachedDataForBookDatabaseKey:(id)key cacheKey:(id)cacheKey
{
  cacheKeyCopy = cacheKey;
  v7 = [self bookCachedDataPathForBookWithKey:key];
  v8 = [NSDictionary dictionaryWithContentsOfFile:v7];
  v9 = [v8 objectForKey:cacheKeyCopy];

  return v9;
}

+ (CGSize)_computeFixedLayoutDimensionsFrom:(id)from forBook:(id)book
{
  fromCopy = from;
  bookCopy = book;
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  if (fromCopy)
  {
    sinfNumber = [fromCopy sinfNumber];
    if (sinfNumber)
    {
      sinfNumber2 = [fromCopy sinfNumber];
      intValue = [sinfNumber2 intValue];

      if (intValue < 1)
      {
        sinfNumber = 0;
      }

      else
      {
        sinfNumber3 = [fromCopy sinfNumber];
        v13 = [NSPredicate predicateWithFormat:@"sinfNumber ==[n] %@", sinfNumber3];

        sinfInfo = [bookCopy sinfInfo];
        v15 = [sinfInfo filteredSetUsingPredicate:v13];

        if ([v15 count] == &dword_0 + 1)
        {
          sinfNumber = [v15 anyObject];
        }

        else
        {
          bookBundlePath = [bookCopy bookBundlePath];
          [NSException raise:@"NSIllegalState" format:@"Book sinf information appears invalid: %@", bookBundlePath];

          sinfNumber = 0;
        }
      }
    }

    bookBundlePath2 = [bookCopy bookBundlePath];
    bookContentSubpath = [bookCopy bookContentSubpath];
    v19 = [bookContentSubpath length];

    if (v19)
    {
      bookContentSubpath2 = [bookCopy bookContentSubpath];
      v21 = [bookBundlePath2 stringByAppendingPathComponent:bookContentSubpath2];
    }

    else
    {
      v21 = bookBundlePath2;
    }

    href = [fromCopy href];
    v23 = [v21 stringByAppendingPathComponent:href];

    v24 = objc_autoreleasePoolPush();
    v39 = 0;
    sinfBlob = [sinfNumber sinfBlob];
    v38 = 0;
    v26 = [ft9cupR7u6OrU4m1pyhB pK0gFZ9QOdm17E9p9cpP:v23 sinfData:sinfBlob refetch:&v39 error:&v38];
    v27 = v38;

    if (v26)
    {
      if ([(ITEpubFixedLayoutParser *)v26 length])
      {
        v30 = ITEpubFixedLayoutParser::dimensionsFromData(v26, v29);
        v31 = v30;
        if (v30 <= 0)
        {
          v34 = _ITEpubParsingLog(v30);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "Width read from decrypted data is 0 for fixed layout.", buf, 2u);
          }
        }

        else
        {
          width = HIDWORD(v30);
        }

        if (v31 > 0)
        {
          height = v31;
LABEL_29:

          objc_autoreleasePoolPop(v24);
          goto LABEL_30;
        }

        v32 = _ITEpubParsingLog(v30);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v33 = "Height read from decrypted data is 0 for fixed layout.";
          goto LABEL_27;
        }

LABEL_28:

        goto LABEL_29;
      }

      v32 = _ITEpubParsingLog(0);
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      *buf = 0;
      v33 = "Decrypted data length is 0. Cannot read fixed layout size from it.";
    }

    else
    {
      v32 = _ITEpubParsingLog(v28);
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      *buf = 0;
      v33 = "Decrypted data is nil";
    }

LABEL_27:
    _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, v33, buf, 2u);
    goto LABEL_28;
  }

LABEL_30:

  v35 = width;
  v36 = height;
  result.height = v36;
  result.width = v35;
  return result;
}

+ (BOOL)recomputeFixedLayoutDimensionsForBook:(id)book
{
  bookCopy = book;
  if ([bookCopy isFixedLayout])
  {
    if ((BEAlwaysFullParseEPUB() & 1) == 0)
    {
      hasComputedFixedLayoutSize = [bookCopy hasComputedFixedLayoutSize];
      if ([hasComputedFixedLayoutSize BOOLValue])
      {
        isDirty = [bookCopy isDirty];
        bOOLValue = [isDirty BOOLValue];

        if (!bOOLValue)
        {
          goto LABEL_45;
        }
      }

      else
      {
      }
    }

    firstDocumentLocation = [bookCopy firstDocumentLocation];
    v7 = [bookCopy documentContainingLocation:firstDocumentLocation];
    [self _computeFixedLayoutDimensionsFrom:v7 forBook:bookCopy];
    v9 = v8;
    v11 = v10;

    v12 = v9 == CGSizeZero.width;
    v13 = v11 == CGSizeZero.height;
    if (v12 && v13)
    {
      v11 = 768.0;
    }

    v56 = 0u;
    v57 = 0u;
    if (v12 && v13)
    {
      v9 = 1024.0;
    }

    v58 = 0uLL;
    v59 = 0uLL;
    obj = [bookCopy sortedDocuments];
    v14 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
    if (v14)
    {
      v52 = 0;
      v16 = *v57;
      *&v15 = 138412802;
      v51 = v15;
      while (1)
      {
        v17 = 0;
        do
        {
          if (*v57 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v56 + 1) + 8 * v17);
          v19 = [self _computeFixedLayoutDimensionsFrom:v18 forBook:{bookCopy, v51}];
          v22 = v20;
          v23 = v21;
          if (v20 == CGSizeZero.width && v21 == CGSizeZero.height)
          {
            href = [v18 href];
            tocPageHref = [bookCopy tocPageHref];
            v31 = [href isEqualToString:tocPageHref];

            if (v31)
            {
              v33 = _ITEpubParsingLog(v32);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                href2 = [v18 href];
                v69.width = v9;
                v69.height = v11;
                v35 = NSStringFromCGSize(v69);
                *buf = 138412546;
                v61 = href2;
                v62 = 2112;
                v63 = v35;
                _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "Book document (%@) size computed from epub was 0, setting size to %@ and ignoring error because it's the TOC.", buf, 0x16u);
              }
            }

            else
            {
              v36 = _ITEpubParsingLog(v32);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                href3 = [v18 href];
                v70.width = v9;
                v70.height = v11;
                v38 = NSStringFromCGSize(v70);
                *buf = 138412546;
                v61 = href3;
                v62 = 2112;
                v63 = v38;
                _os_log_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, "Book document (%@) size computed from epub was 0, setting size to %@ and marking book info as dirty.", buf, 0x16u);
              }

              ++v52;
            }

            v23 = v11;
            v22 = v9;
          }

          else
          {
            if (v21 == 0.0)
            {
              v25 = _ITEpubParsingLog(v19);
              v23 = round(v11 * (v22 / v9));
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                href4 = [v18 href];
                v67.width = v22;
                v67.height = v23;
                v27 = NSStringFromCGSize(v67);
                v68.width = v9;
                v68.height = v11;
                v28 = NSStringFromCGSize(v68);
                *buf = v51;
                v61 = href4;
                v62 = 2114;
                v63 = v27;
                v64 = 2114;
                v65 = v28;
                _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "Book document (%@) height computed from epub was 0, using %{public}@ based on aspect ratio of previous size %{public}@.", buf, 0x20u);
              }

LABEL_23:

              goto LABEL_32;
            }

            if (v20 == 0.0)
            {
              v25 = _ITEpubParsingLog(v19);
              v22 = round(v9 * (v23 / v11));
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                href5 = [v18 href];
                v72.width = v22;
                v72.height = v23;
                v45 = NSStringFromCGSize(v72);
                v73.width = v9;
                v73.height = v11;
                v46 = NSStringFromCGSize(v73);
                *buf = v51;
                v61 = href5;
                v62 = 2114;
                v63 = v45;
                v64 = 2114;
                v65 = v46;
                _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "Book document (%@) width computed from epub was 0, using %{public}@ based on aspect ratio of previous size %{public}@.", buf, 0x20u);
              }

              goto LABEL_23;
            }

            v11 = v21;
            v9 = v20;
          }

LABEL_32:
          v39 = _ITEpubParsingLog(v19);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            href6 = [v18 href];
            v71.width = v22;
            v71.height = v23;
            v41 = NSStringFromCGSize(v71);
            *buf = 138412546;
            v61 = href6;
            v62 = 2114;
            v63 = v41;
            _os_log_impl(&dword_0, v39, OS_LOG_TYPE_INFO, "Book document (%@) validated size: %{public}@", buf, 0x16u);
          }

          v42 = [NSNumber numberWithDouble:v22];
          [v18 setFixedLayoutWidth:v42];

          v43 = [NSNumber numberWithDouble:v23];
          [v18 setFixedLayoutHeight:v43];

          v17 = v17 + 1;
        }

        while (v14 != v17);
        v47 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
        v14 = v47;
        if (!v47)
        {
          v48 = v52 == 0;
          goto LABEL_44;
        }
      }
    }

    v48 = 1;
LABEL_44:

    v49 = [NSNumber numberWithBool:v48];
    [bookCopy setHasComputedFixedLayoutSize:v49];
  }

LABEL_45:

  return 0;
}

- (void)setPublisherInfoFromParser:(BKReadableFormat *)parser
{
  var10 = parser->var10;
  if (var10)
  {
    CFRetain(var10);
    v6 = parser->var10;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  book = [(BKBookParser *)self book];
  publisherName = [book publisherName];
  if ([publisherName length])
  {
    book2 = [(BKBookParser *)self book];
    publisherName2 = [book2 publisherName];
    v12 = [(__CFString *)v7 isEqualToString:publisherName2];

    if ((v12 & 1) == 0)
    {
      v14 = _ITEpubParsingLog(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        book3 = [(BKBookParser *)self book];
        publisherName3 = [book3 publisherName];
        v60 = 138544386;
        v61 = @"self.book.publisherName";
        v62 = 2160;
        v63 = 1752392040;
        v64 = 2112;
        v65 = v7;
        v66 = 2160;
        v67 = 1752392040;
        v68 = 2112;
        v69 = publisherName3;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", &v60, 0x34u);
      }
    }
  }

  else
  {
  }

  v17 = parser->var10;
  if (v17 && (CFRetain(v17), (book5 = parser->var10) != 0))
  {
    book4 = [(BKBookParser *)self book];
    [book4 setPublisherName:book5];
  }

  else
  {
    book5 = [(BKBookParser *)self book];
    [book5 setPublisherName:0];
  }

  var11 = parser->var11;
  if (var11)
  {
    CFRetain(var11);
    v21 = parser->var11;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;
  book6 = [(BKBookParser *)self book];
  publisherLocation = [book6 publisherLocation];
  if (![publisherLocation length])
  {

LABEL_22:
    goto LABEL_23;
  }

  book7 = [(BKBookParser *)self book];
  publisherLocation2 = [book7 publisherLocation];
  v27 = [(__CFString *)v22 isEqualToString:publisherLocation2];

  if ((v27 & 1) == 0)
  {
    book6 = _ITEpubParsingLog(v28);
    if (os_log_type_enabled(book6, OS_LOG_TYPE_DEFAULT))
    {
      book8 = [(BKBookParser *)self book];
      publisherLocation3 = [book8 publisherLocation];
      v60 = 138544386;
      v61 = @"self.book.publisherLocation";
      v62 = 2160;
      v63 = 1752392040;
      v64 = 2112;
      v65 = v22;
      v66 = 2160;
      v67 = 1752392040;
      v68 = 2112;
      v69 = publisherLocation3;
      _os_log_impl(&dword_0, book6, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", &v60, 0x34u);
    }

    goto LABEL_22;
  }

LABEL_23:

  v31 = parser->var11;
  if (v31 && (CFRetain(v31), (book10 = parser->var11) != 0))
  {
    book9 = [(BKBookParser *)self book];
    [book9 setPublisherLocation:book10];
  }

  else
  {
    book10 = [(BKBookParser *)self book];
    [book10 setPublisherLocation:0];
  }

  var12 = parser->var12;
  if (var12)
  {
    CFRetain(var12);
    v35 = parser->var12;
  }

  else
  {
    v35 = 0;
  }

  v36 = v35;
  book11 = [(BKBookParser *)self book];
  publisherYear = [book11 publisherYear];
  if (![publisherYear length])
  {

LABEL_35:
    goto LABEL_36;
  }

  book12 = [(BKBookParser *)self book];
  publisherYear2 = [book12 publisherYear];
  v41 = [(__CFString *)v36 isEqualToString:publisherYear2];

  if ((v41 & 1) == 0)
  {
    book11 = _ITEpubParsingLog(v42);
    if (os_log_type_enabled(book11, OS_LOG_TYPE_DEFAULT))
    {
      book13 = [(BKBookParser *)self book];
      publisherYear3 = [book13 publisherYear];
      v60 = 138544386;
      v61 = @"self.book.publisherYear";
      v62 = 2160;
      v63 = 1752392040;
      v64 = 2112;
      v65 = v36;
      v66 = 2160;
      v67 = 1752392040;
      v68 = 2112;
      v69 = publisherYear3;
      _os_log_impl(&dword_0, book11, OS_LOG_TYPE_DEFAULT, "Parsed value for '%{public}@': '%{mask.hash}@' != current stored value: '%{mask.hash}@'", &v60, 0x34u);
    }

    goto LABEL_35;
  }

LABEL_36:

  v45 = parser->var12;
  if (v45 && (CFRetain(v45), (book15 = parser->var12) != 0))
  {
    book14 = [(BKBookParser *)self book];
    [book14 setPublisherYear:book15];
  }

  else
  {
    book15 = [(BKBookParser *)self book];
    [book15 setPublisherYear:0];
  }

  book16 = [(BKBookParser *)self book];
  publisherName4 = [book16 publisherName];
  v50 = publisherName4 == 0;

  if (v50)
  {
    book17 = [(BKBookParser *)self book];
    [book17 setPublisherName:&stru_1E7188];
  }

  book18 = [(BKBookParser *)self book];
  publisherLocation4 = [book18 publisherLocation];
  v54 = publisherLocation4 == 0;

  if (v54)
  {
    book19 = [(BKBookParser *)self book];
    [book19 setPublisherLocation:&stru_1E7188];
  }

  book20 = [(BKBookParser *)self book];
  publisherYear4 = [book20 publisherYear];
  v58 = publisherYear4 == 0;

  if (v58)
  {
    book21 = [(BKBookParser *)self book];
    [book21 setPublisherYear:&stru_1E7188];
  }
}

- (void)setAppleDisplayOptionsFromParser:(BKReadableFormat *)parser
{
  book = [(BKBookParser *)self book];

  if (!book)
  {
    return;
  }

  v34 = (*(parser->var0 + 14))(parser);
  if (v34)
  {
    objc_opt_class();
    v6 = [v34 valueForKey:@"fixed-layout"];
    v7 = BUDynamicCast();

    if ([v7 isEqualToString:@"true"])
    {
      book2 = [(BKBookParser *)self book];
      [book2 setFixedLayout:1];
    }

    v9 = [v34 valueForKey:@"interactive"];
    v10 = [v9 isEqualToString:@"true"];

    if (v10)
    {
      book3 = [(BKBookParser *)self book];
      [book3 setInteractive:1];
    }

    objc_opt_class();
    v12 = [v34 valueForKey:@"specified-fonts"];
    v13 = BUDynamicCast();

    if ([v13 isEqualToString:@"true"])
    {
      book4 = [(BKBookParser *)self book];
      [book4 setHasBuiltInFonts:1];
    }

    objc_opt_class();
    v15 = [v34 valueForKey:@"binding"];
    v16 = BUDynamicCast();

    if ([v16 isEqualToString:@"false"])
    {
      book5 = [(BKBookParser *)self book];
      [book5 setHidesSpine:1];
    }

    objc_opt_class();
    v18 = [v34 valueForKey:@"spread"];
    v19 = BUDynamicCast();
    book6 = [(BKBookParser *)self book];
    [book6 setFixedLayoutSpread:v19];

    objc_opt_class();
    v21 = [v34 valueForKey:@"flow"];
    v22 = BUDynamicCast();
    book7 = [(BKBookParser *)self book];
    [book7 setFixedLayoutFlow:v22];

    objc_opt_class();
    v24 = [v34 valueForKey:@"open-to-spread"];
    v25 = BUDynamicCast();

    if (v25)
    {
      if ([v25 isEqualToString:@"true"])
      {
        book8 = [(BKBookParser *)self book];
        [book8 setOpenToSpread:1];
      }

      else
      {
        book8 = [(BKBookParser *)self book];
        [book8 setOpenToSpread:0];
      }
    }

    else
    {
      book8 = [(BKBookParser *)self book];
      [book8 setOpenToSpread:0x7FFFFFFFFFFFFFFFLL];
    }

    objc_opt_class();
    v27 = [v34 valueForKey:@"orientation-lock"];
    v28 = BUDynamicCast();

    if (!v28)
    {
      goto LABEL_23;
    }

    if ([v28 isEqualToString:@"portrait-only"])
    {
      book9 = [(BKBookParser *)self book];
      [book9 setLandscapeProhibited:1];
    }

    else
    {
      if (![v28 isEqualToString:@"landscape-only"])
      {
LABEL_23:
        objc_opt_class();
        v30 = [v34 valueForKey:@"respect-image-size-class"];
        v31 = BUDynamicCast();

        if ([v31 length])
        {
          book10 = [(BKBookParser *)self book];
          [book10 setRespectImageSizeClass:v31];

          book11 = [(BKBookParser *)self book];
          [book11 setRespectImageSizeClassIsPrefix:0];
        }

        goto LABEL_26;
      }

      book9 = [(BKBookParser *)self book];
      [book9 setPortraitProhibited:1];
    }

    goto LABEL_23;
  }

LABEL_26:
}

- (void)setObeyPageBreaksFromPlist:(id)plist
{
  v6 = [plist valueForKey:@"obeyPageBreaks"];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = &dword_0 + 1;
  }

  book = [(BKBookParser *)self book];
  [book setObeyPageBreaks:bOOLValue];
}

- (void)setArtworkTemplateFromPlist:(id)plist
{
  v7 = [plist valueForKey:@"artwork-template-name"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringValue = v7;
LABEL_5:
    v5 = stringValue;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringValue = [v7 stringValue];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:
  if ([v5 length])
  {
    book = [(BKBookParser *)self book];
    [book setGenericCoverTemplate:v5];
  }
}

- (void)setLanguageFromPlist:(id)plist
{
  v5 = [IMLibraryPlist languageFromPlistEntry:plist];
  if (v5)
  {
    book = [(BKBookParser *)self book];
    [book setBookLanguage:v5];
  }
}

- (void)setCoverWritingModeFromPlist:(id)plist
{
  imIsDefaultWritingMode = [IMLibraryPlist coverWritingModeFromPlistEntry:plist];
  v5 = imIsDefaultWritingMode;
  if (imIsDefaultWritingMode)
  {
    v7 = imIsDefaultWritingMode;
    imIsDefaultWritingMode = [imIsDefaultWritingMode imIsDefaultWritingMode];
    v5 = v7;
    if ((imIsDefaultWritingMode & 1) == 0)
    {
      book = [(BKBookParser *)self book];
      [book setCoverWritingModeString:v7];

      v5 = v7;
    }
  }

  _objc_release_x1(imIsDefaultWritingMode, v5);
}

- (void)setScrollAxisModeFromPlist:(id)plist
{
  v5 = [IMLibraryPlist scrollDirectionFromPlistEntry:plist];
  if (v5 && (([v5 isEqualToString:@"horizontal"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"vertical")))
  {
    book = [(BKBookParser *)self book];
    [book setScrollDirection:v5];
  }
}

- (void)setEndOfBookExperienceFromPlist:(id)plist
{
  [IMLibraryPlist endOfBookExperiencesFromItunesMetadataEntry:plist];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  obj = v32 = 0u;
  v22 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v22)
  {
    v21 = *v32;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v32 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v31 + 1) + 8 * i);
        v25 = [IMLibraryPlist experienceKindFromExperienceEntry:v4];
        if ([v25 isEqualToString:@"end-of-book"])
        {
          v23 = [IMLibraryPlist experienceLocationFromExperienceEntry:v4];
          v20 = [IMLibraryPlist experienceLocationTypeFromExperienceEntry:v4];
          if ([v20 isEqualToString:@"cfi"])
          {
            book = [(BKBookParser *)self book];
            [book setEndOfBookLocation:v23];

            book2 = [(BKBookParser *)self book];
            [book2 setEndOfBookConfidence:&off_1F1880];

            book3 = [(BKBookParser *)self book];
            [book3 setEndOfBookValidRange:0];
          }

          v24 = [IMLibraryPlist experienceVersionFromExperienceEntry:v4];
          book4 = [(BKBookParser *)self book];
          [book4 setEndOfBookVersion:v24];

          v9 = [IMLibraryPlist experienceParamsFromExperienceEntry:v4];
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v11)
          {
            v12 = *v28;
            do
            {
              for (j = 0; j != v11; j = j + 1)
              {
                if (*v28 != v12)
                {
                  objc_enumerationMutation(v10);
                }

                v14 = [IMLibraryPlist experienceConfidenceFromExperienceParamEntry:*(*(&v27 + 1) + 8 * j)];
                v15 = v14;
                if (v14)
                {
                  [v14 floatValue];
                  if (*&v16 > 1.0)
                  {
                    *&v16 = 1.0;
                  }

                  if (*&v16 < 0.0)
                  {
                    *&v16 = 0.0;
                  }

                  v17 = [NSNumber numberWithFloat:v16];
                  book5 = [(BKBookParser *)self book];
                  [book5 setEndOfBookConfidence:v17];
                }
              }

              v11 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v11);
          }
        }
      }

      v22 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v22);
  }
}

- (void)resetItunesMetadata
{
  book = [(BKBookParser *)self book];
  bookBundlePath = [book bookBundlePath];
  v7 = [bookBundlePath stringByAppendingPathComponent:@"iTunesMetadata.plist"];

  if (v7)
  {
    v6 = [NSDictionary dictionaryWithContentsOfFile:?];
    if (v6)
    {
      [(BKEpubBookParser *)self setObeyPageBreaksFromPlist:v6];
      [(BKEpubBookParser *)self setArtworkTemplateFromPlist:v6];
      [(BKEpubBookParser *)self setLanguageFromPlist:v6];
      [(BKEpubBookParser *)self setCoverWritingModeFromPlist:v6];
      [(BKEpubBookParser *)self setScrollAxisModeFromPlist:v6];
      [(BKEpubBookParser *)self setEndOfBookExperienceFromPlist:v6];
    }
  }

  _objc_release_x2(v5);
}

+ (BOOL)isValidMimeType:(id)type
{
  typeCopy = type;
  uTF8String = [typeCopy UTF8String];
  v5 = [typeCopy length];
  LOBYTE(uTF8String) = ITEpubFolder::isMimetypeFileContentsValid(uTF8String, v5, 0, 0, v6) != 0;

  return uTF8String;
}

@end