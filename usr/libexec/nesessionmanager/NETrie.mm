@interface NETrie
- (BOOL)search:(const char *)search length:(int)length;
- (BOOL)searchWithString:(id)string;
- (NETrie)initWithDomains:(id)domains prefixCount:(int)count reverse:(BOOL)reverse partialSearchAllowed:(BOOL)allowed partialSearchTerminator:(char)terminator extra_bytes:(unint64_t)extra_bytes;
- (void)dealloc;
@end

@implementation NETrie

- (BOOL)searchWithString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy && [stringCopy length])
  {
    [v4 UTF8String];
    [v4 length];
    v5 = ne_trie_search() != 0xFFFF;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)search:(const char *)search length:(int)length
{
  v4 = 0;
  if (search && length)
  {
    return ne_trie_search() != 0xFFFF;
  }

  return v4;
}

- (void)dealloc
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "NETrie - dealloc", buf, 2u);
  }

  if (self->_trie.memory)
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "NETrie - dealloc - free memory", buf, 2u);
    }

    free(self->_trie.memory);
  }

  *&self->_trie.child_maps_mem_size = 0u;
  *&self->_trie.is_mmap = 0u;
  *&self->_trie.nodes_count = 0u;
  *&self->_trie.trie_memory_size = 0u;
  *&self->_trie.nodes = 0u;
  *&self->_trie.bytes = 0u;
  *&self->_trie.magic = 0u;
  v5.receiver = self;
  v5.super_class = NETrie;
  [(NETrie *)&v5 dealloc];
}

- (NETrie)initWithDomains:(id)domains prefixCount:(int)count reverse:(BOOL)reverse partialSearchAllowed:(BOOL)allowed partialSearchTerminator:(char)terminator extra_bytes:(unint64_t)extra_bytes
{
  domainsCopy = domains;
  v47.receiver = self;
  v47.super_class = NETrie;
  v14 = [(NETrie *)&v47 init];
  if (!v14)
  {
LABEL_33:
    v21 = v14;
    goto LABEL_34;
  }

  if (domainsCopy && [domainsCopy count])
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v37 = domainsCopy;
    v15 = domainsCopy;
    v16 = [v15 countByEnumeratingWithState:&v43 objects:v57 count:16];
    if (v16)
    {
      terminatorCopy = terminator;
      v17 = 0;
      v18 = *v44;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v44 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v17 += [*(*(&v43 + 1) + 8 * i) length];
        }

        v16 = [v15 countByEnumeratingWithState:&v43 objects:v57 count:16];
      }

      while (v16);
      terminator = terminatorCopy;
    }

    if (!count)
    {
      [v15 count];
    }

    [v15 count];
    if (ne_trie_init())
    {
      v14->_reverse = reverse;
      v14->_partialSearchAllowed = allowed;
      v14->_partialSearchTerminator = terminator;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v22 = v15;
      v23 = [v22 countByEnumeratingWithState:&v39 objects:v56 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v40;
        do
        {
          for (j = 0; j != v24; j = j + 1)
          {
            if (*v40 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v39 + 1) + 8 * j);
            [v27 UTF8String];
            [v27 length];
            if (ne_trie_insert() == 0xFFFF)
            {
              v28 = ne_log_obj();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *v49 = v27;
                _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "NETrie - failed insert for %@", buf, 0xCu);
              }
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v39 objects:v56 count:16];
        }

        while (v24);
      }

      v29 = ne_log_obj();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v32 = [v22 count];
        nodes_free_next = v14->_trie.nodes_free_next;
        child_maps_free_next = v14->_trie.child_maps_free_next;
        bytes_free_next = v14->_trie.bytes_free_next;
        root = v14->_trie.root;
        *buf = 67110144;
        *v49 = v32;
        *&v49[4] = 1024;
        *&v49[6] = nodes_free_next;
        v50 = 1024;
        v51 = child_maps_free_next;
        v52 = 1024;
        v53 = bytes_free_next;
        v54 = 1024;
        v55 = root;
        _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "NETrie - initialized with %d domains (Nodes used = %d, child maps used = %d, bytes used = %d, root = %d)", buf, 0x20u);
      }

      domainsCopy = v37;
      goto LABEL_33;
    }

    v31 = ne_log_obj();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "NETrie - failed init", buf, 2u);
    }

    v21 = 0;
    domainsCopy = v37;
  }

  else
  {
    v20 = ne_log_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "NETrie - No domain", buf, 2u);
    }

    v21 = 0;
  }

LABEL_34:

  return v21;
}

@end