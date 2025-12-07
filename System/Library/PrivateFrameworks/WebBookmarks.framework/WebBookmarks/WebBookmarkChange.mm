@interface WebBookmarkChange
+ (id)bookmarkAddChangeWithBookmark:(id)bookmark;
+ (id)bookmarkModifyChangeWithBookmark:(id)bookmark;
+ (id)deleteChangeWithBookmark:(id)bookmark;
+ (id)moveChangeWithBookmark:(id)bookmark toFolderWithID:(int)d;
+ (id)reorderChangeWithBookmark:(id)bookmark afterBookmark:(id)afterBookmark;
+ (id)replaceChangeWithBookmarks:(id)bookmarks inFolderWithID:(int)d;
+ (id)replaceChangeWithBookmarks:(id)bookmarks inFolderWithSpecialID:(int)d;
- (BOOL)shouldSync;
- (NSDictionary)dictionaryRepresentation;
- (NSString)description;
- (WebBookmarkChange)initWithBookmark:(id)bookmark bookmarkID:(int)d parentID:(int)iD associatedBookmarkID:(int)bookmarkID changeType:(int64_t)type;
- (WebBookmarkChange)initWithBookmarks:(id)bookmarks parentID:(int)d specialFolderID:(int)iD changeType:(int64_t)type;
- (WebBookmarkChange)initWithCoder:(id)coder;
- (WebBookmarkChange)initWithDictionaryRepresentation:(id)representation;
- (id)_stringForType:(int64_t)type;
- (void)_setModifiedAttributesIfSupported;
- (void)applyModificationsToBookmark:(id)bookmark;
- (void)encodeWithCoder:(id)coder;
- (void)updateChangeAfterUpdatingInMemoryID:(int)d withDatabaseID:(int)iD;
@end

@implementation WebBookmarkChange

+ (id)bookmarkAddChangeWithBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  v5 = [[self alloc] initWithBookmark:bookmarkCopy bookmarkID:objc_msgSend(bookmarkCopy parentID:"identifier") changeType:{objc_msgSend(bookmarkCopy, "parentID"), 2}];

  return v5;
}

+ (id)bookmarkModifyChangeWithBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  v5 = [[self alloc] initWithBookmark:bookmarkCopy bookmarkID:objc_msgSend(bookmarkCopy parentID:"identifier") changeType:{objc_msgSend(bookmarkCopy, "parentID"), 3}];

  return v5;
}

+ (id)deleteChangeWithBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  v5 = [[self alloc] initWithBookmark:bookmarkCopy bookmarkID:objc_msgSend(bookmarkCopy parentID:"identifier") changeType:{objc_msgSend(bookmarkCopy, "parentID"), 0}];

  return v5;
}

+ (id)moveChangeWithBookmark:(id)bookmark toFolderWithID:(int)d
{
  v4 = *&d;
  bookmarkCopy = bookmark;
  v7 = [[self alloc] initWithBookmark:bookmarkCopy bookmarkID:objc_msgSend(bookmarkCopy parentID:"identifier") associatedBookmarkID:objc_msgSend(bookmarkCopy changeType:{"parentID"), v4, 4}];

  return v7;
}

+ (id)reorderChangeWithBookmark:(id)bookmark afterBookmark:(id)afterBookmark
{
  bookmarkCopy = bookmark;
  afterBookmarkCopy = afterBookmark;
  v8 = [self alloc];
  identifier = [bookmarkCopy identifier];
  parentID = [bookmarkCopy parentID];
  if (afterBookmarkCopy)
  {
    identifier2 = [afterBookmarkCopy identifier];
  }

  else
  {
    identifier2 = 0x7FFFFFFFLL;
  }

  v12 = [v8 initWithBookmark:bookmarkCopy bookmarkID:identifier parentID:parentID associatedBookmarkID:identifier2 changeType:5];

  return v12;
}

+ (id)replaceChangeWithBookmarks:(id)bookmarks inFolderWithID:(int)d
{
  v4 = *&d;
  bookmarksCopy = bookmarks;
  v7 = [[self alloc] initWithBookmarks:bookmarksCopy parentID:v4 changeType:6];

  return v7;
}

+ (id)replaceChangeWithBookmarks:(id)bookmarks inFolderWithSpecialID:(int)d
{
  v4 = *&d;
  bookmarksCopy = bookmarks;
  v7 = [[self alloc] initWithBookmarks:bookmarksCopy specialFolderID:v4 changeType:6];

  return v7;
}

- (WebBookmarkChange)initWithBookmarks:(id)bookmarks parentID:(int)d specialFolderID:(int)iD changeType:(int64_t)type
{
  v27 = *MEMORY[0x277D85DE8];
  bookmarksCopy = bookmarks;
  v25.receiver = self;
  v25.super_class = WebBookmarkChange;
  v11 = [(WebBookmarkChange *)&v25 init];
  if (v11)
  {
    v12 = [bookmarksCopy copy];
    bookmarks = v11->_bookmarks;
    v11->_bookmarks = v12;

    v11->_parentID = d;
    v11->_specialFolderID = iD;
    v11->_changeType = type;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = v11->_bookmarks;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        v18 = 0;
        do
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v21 + 1) + 8 * v18++) _setUsedForInMemoryChangeTracking:{0, v21}];
        }

        while (v16 != v18);
        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v16);
    }

    v19 = v11;
  }

  return v11;
}

- (WebBookmarkChange)initWithBookmark:(id)bookmark bookmarkID:(int)d parentID:(int)iD associatedBookmarkID:(int)bookmarkID changeType:(int64_t)type
{
  bookmarkCopy = bookmark;
  v19.receiver = self;
  v19.super_class = WebBookmarkChange;
  v13 = [(WebBookmarkChange *)&v19 init];
  v14 = v13;
  if (v13)
  {
    v13->_bookmarkID = d;
    v13->_parentID = iD;
    v13->_associatedBookmarkID = bookmarkID;
    v13->_changeType = type;
    v15 = [bookmarkCopy copy];
    bookmark = v14->_bookmark;
    v14->_bookmark = v15;

    [(WebBookmark *)v14->_bookmark _setUsedForInMemoryChangeTracking:type == 3];
    [(WebBookmarkChange *)v14 _setModifiedAttributesIfSupported];
    v17 = v14;
  }

  return v14;
}

- (WebBookmarkChange)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v23.receiver = self;
  v23.super_class = WebBookmarkChange;
  v5 = [(WebBookmarkChange *)&v23 init];
  if (v5 && (v22 = 0, [representationCopy wb_numberForKey:@"BookmarkID" isValid:&v22], v6 = objc_claimAutoreleasedReturnValue(), v5->_bookmarkID = objc_msgSend(v6, "intValue"), v6, v22 == 1) && (objc_msgSend(representationCopy, "wb_numberForKey:isValid:", @"ParentID", &v22), v7 = objc_claimAutoreleasedReturnValue(), v5->_parentID = objc_msgSend(v7, "intValue"), v7, v22 == 1) && (objc_msgSend(representationCopy, "wb_numberForKey:isValid:", @"AssociatedBookmarkID", &v22), v8 = objc_claimAutoreleasedReturnValue(), v5->_associatedBookmarkID = objc_msgSend(v8, "intValue"), v8, v22 == 1) && (objc_msgSend(representationCopy, "wb_numberForKey:isValid:", @"SpecialFolderID", &v22), v9 = objc_claimAutoreleasedReturnValue(), v5->_specialFolderID = objc_msgSend(v9, "intValue"), v9, v22 == 1) && (objc_msgSend(representationCopy, "wb_numberForKey:isValid:", @"Type", &v22), v10 = objc_claimAutoreleasedReturnValue(), v5->_changeType = objc_msgSend(v10, "integerValue"), v10, v22 == 1))
  {
    v11 = [representationCopy wb_dictionaryForKey:@"AssociatedBookmark" isValid:&v22];
    v12 = v11;
    if (v22 == 1 && (!v11 || (v13 = -[WebBookmark initWithDictionaryRepresentationForInMemoryChangeTracking:]([WebBookmark alloc], "initWithDictionaryRepresentationForInMemoryChangeTracking:", v11), bookmark = v5->_bookmark, v5->_bookmark = v13, bookmark, v5->_bookmark)) && ([representationCopy wb_numberForKey:@"ModifiedAttributes" isValid:&v22], v15 = objc_claimAutoreleasedReturnValue(), v5->_modifiedAttributes = objc_msgSend(v15, "integerValue"), v15, v22 == 1))
    {
      v16 = [representationCopy wb_arrayForKey:@"Bookmarks" isValid:&v22];
      v17 = v16;
      if (v22 == 1)
      {
        if (v16)
        {
          v18 = [v16 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_6];
          bookmarks = v5->_bookmarks;
          v5->_bookmarks = v18;
        }

        v20 = v5;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

WebBookmark *__54__WebBookmarkChange_initWithDictionaryRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WebBookmark alloc] initWithDictionaryRepresentationForInMemoryChangeTracking:v2];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  bookmarkID = self->_bookmarkID;
  coderCopy = coder;
  [coderCopy encodeInt32:bookmarkID forKey:@"BookmarkID"];
  [coderCopy encodeInt32:self->_parentID forKey:@"ParentID"];
  [coderCopy encodeInt32:self->_associatedBookmarkID forKey:@"AssociatedBookmarkID"];
  [coderCopy encodeInt32:self->_specialFolderID forKey:@"SpecialFolderID"];
  [coderCopy encodeInteger:self->_changeType forKey:@"Type"];
  dictionaryRepresentationForInMemoryChangeTracking = [(WebBookmark *)self->_bookmark dictionaryRepresentationForInMemoryChangeTracking];
  [coderCopy encodeObject:dictionaryRepresentationForInMemoryChangeTracking forKey:@"AssociatedBookmark"];

  [coderCopy encodeInt64:self->_modifiedAttributes forKey:@"ModifiedAttributes"];
  [coderCopy encodeObject:self->_bookmarks forKey:@"Bookmarks"];
}

- (WebBookmarkChange)initWithCoder:(id)coder
{
  v24[7] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v21 = [coderCopy decodeInt32ForKey:@"BookmarkID"];
  v20 = [coderCopy decodeInt32ForKey:@"ParentID"];
  v19 = [coderCopy decodeInt32ForKey:@"AssociatedBookmarkID"];
  v4 = [coderCopy decodeInt32ForKey:@"SpecialFolderID"];
  v5 = [coderCopy decodeIntegerForKey:@"Type"];
  v6 = [WebBookmark alloc];
  v7 = MEMORY[0x277CBEB98];
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v24[2] = objc_opt_class();
  v24[3] = objc_opt_class();
  v24[4] = objc_opt_class();
  v24[5] = objc_opt_class();
  v24[6] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:7];
  v9 = [v7 setWithArray:v8];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"AssociatedBookmark"];
  v11 = [(WebBookmark *)v6 initWithDictionaryRepresentationForInMemoryChangeTracking:v10];

  v12 = [coderCopy decodeInt64ForKey:@"ModifiedAttributes"];
  v13 = MEMORY[0x277CBEB98];
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v15 = [v13 setWithArray:v14];
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"Bookmarks"];

  v17 = [[WebBookmarkChange alloc] initWithBookmark:v11 bookmarkID:v21 parentID:v20 associatedBookmarkID:v19 changeType:v5];
  [(WebBookmarkChange *)v17 setSpecialFolderID:v4];
  [(WebBookmarkChange *)v17 setModifiedAttributes:v12];
  [(WebBookmarkChange *)v17 setBookmarks:v16];

  return v17;
}

- (void)applyModificationsToBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  if ([(WebBookmarkChange *)self attributesMarkedAsModify:8])
  {
    isReadingListItem = [bookmarkCopy isReadingListItem];
    dateLastViewed = [(WebBookmark *)self->_bookmark dateLastViewed];
    if (isReadingListItem)
    {
      [bookmarkCopy setReadingListDateLastViewed:dateLastViewed];
    }

    else
    {
      [bookmarkCopy setTabDateLastViewed:dateLastViewed];
    }
  }

  if ([(WebBookmarkChange *)self attributesMarkedAsModify:1])
  {
    title = [(WebBookmark *)self->_bookmark title];
    [bookmarkCopy setTitle:title];
  }

  if ([(WebBookmarkChange *)self attributesMarkedAsModify:2])
  {
    address = [(WebBookmark *)self->_bookmark address];
    [bookmarkCopy setAddress:address];
  }

  if ([(WebBookmarkChange *)self attributesMarkedAsModify:512])
  {
    [bookmarkCopy setLastSelectedChildID:{-[WebBookmark lastSelectedChildID](self->_bookmark, "lastSelectedChildID")}];
  }
}

- (NSDictionary)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_bookmarkID];
  [dictionary setObject:v4 forKeyedSubscript:@"BookmarkID"];

  v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_parentID];
  [dictionary setObject:v5 forKeyedSubscript:@"ParentID"];

  v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_associatedBookmarkID];
  [dictionary setObject:v6 forKeyedSubscript:@"AssociatedBookmarkID"];

  v7 = [MEMORY[0x277CCABB0] numberWithInt:self->_specialFolderID];
  [dictionary setObject:v7 forKeyedSubscript:@"SpecialFolderID"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_changeType];
  [dictionary setObject:v8 forKeyedSubscript:@"Type"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_modifiedAttributes];
  [dictionary setObject:v9 forKeyedSubscript:@"ModifiedAttributes"];

  bookmarks = self->_bookmarks;
  if (bookmarks)
  {
    v11 = [(NSArray *)bookmarks valueForKey:@"dictionaryRepresentationForInMemoryChangeTracking"];
    [dictionary setObject:v11 forKeyedSubscript:@"Bookmarks"];
  }

  bookmark = self->_bookmark;
  if (bookmark)
  {
    dictionaryRepresentationForInMemoryChangeTracking = [(WebBookmark *)bookmark dictionaryRepresentationForInMemoryChangeTracking];
    [dictionary setObject:dictionaryRepresentationForInMemoryChangeTracking forKeyedSubscript:@"AssociatedBookmark"];
  }

  return dictionary;
}

- (void)_setModifiedAttributesIfSupported
{
  if ([(WebBookmark *)self->_bookmark attributesMarkedAsModified:8])
  {
    self->_modifiedAttributes |= 8uLL;
  }

  if ([(WebBookmark *)self->_bookmark attributesMarkedAsModified:1])
  {
    self->_modifiedAttributes |= 1uLL;
  }

  if ([(WebBookmark *)self->_bookmark attributesMarkedAsModified:2])
  {
    self->_modifiedAttributes |= 2uLL;
  }

  if ([(WebBookmark *)self->_bookmark attributesMarkedAsModified:512])
  {
    self->_modifiedAttributes |= 0x200uLL;
  }
}

- (BOOL)shouldSync
{
  if ([(WebBookmark *)self->_bookmark identifier]== 0x7FFFFFFF)
  {
    return 0;
  }

  bookmark = self->_bookmark;

  return [(WebBookmark *)bookmark isSyncable];
}

- (void)updateChangeAfterUpdatingInMemoryID:(int)d withDatabaseID:(int)iD
{
  v4 = *&iD;
  if (self->_parentID == d)
  {
    self->_parentID = iD;
    bookmark = self->_bookmark;

    [(WebBookmark *)bookmark _setParentID:*&iD];
  }

  else if (self->_associatedBookmarkID == d)
  {
    self->_associatedBookmarkID = iD;
  }

  else if ([(WebBookmark *)self->_bookmark lastSelectedChildID]== d)
  {
    v7 = self->_bookmark;

    [(WebBookmark *)v7 setLastSelectedChildID:v4];
  }
}

- (id)_stringForType:(int64_t)type
{
  if ((type - 2) > 4)
  {
    return @"Delete";
  }

  else
  {
    return off_279E75788[type - 2];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(WebBookmarkChange *)self _stringForType:self->_changeType];
  bookmarkID = self->_bookmarkID;
  title = [(WebBookmark *)self->_bookmark title];
  v8 = title;
  specialFolderID = self->_specialFolderID;
  if (!specialFolderID)
  {
    specialFolderID = self->_parentID;
  }

  LODWORD(v10) = self->_associatedBookmarkID;
  if (v10 == 0x7FFFFFFF)
  {
    v10 = 0;
  }

  else
  {
    v10 = v10;
  }

  v11 = [v3 stringWithFormat:@"<%@: %p type = %@; bookmark = %d %@; parent = %d; associated bookmark = %d;>", v4, self, v5, bookmarkID, title, specialFolderID, v10];;

  return v11;
}

@end