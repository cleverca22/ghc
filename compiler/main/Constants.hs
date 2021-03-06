{-
(c) The GRASP/AQUA Project, Glasgow University, 1992-1998

\section[Constants]{Info about this compilation}
-}

module Constants (module Constants) where

import Config

hiVersion :: Integer
hiVersion = read (cProjectVersionInt ++ cProjectPatchLevel) :: Integer

-- All pretty arbitrary:

mAX_TUPLE_SIZE :: Int
mAX_TUPLE_SIZE = 62 -- Should really match the number
                    -- of decls in Data.Tuple

-- | Default maximum depth for both class instance search and type family
-- reduction. See also Trac #5395.
mAX_REDUCTION_DEPTH :: Int
mAX_REDUCTION_DEPTH = 200

wORD64_SIZE :: Int
wORD64_SIZE = 8

tARGET_MAX_CHAR :: Int
tARGET_MAX_CHAR = 0x10ffff
