{-# LANGUAGE Trustworthy #-}
{-# OPTIONS_GHC -#include "HsBase.h" #-}
{-# OPTIONS_GHC -w #-} --tmp
-----------------------------------------------------------------------------
-- |
-- Module      :  Data.Array.IO.Safe
-- Copyright   :  (c) The University of Glasgow 2001
-- License     :  BSD-style (see the file libraries/base/LICENSE)
--
-- Maintainer  :  libraries@haskell.org
-- Stability   :  experimental
-- Portability :  non-portable (uses Data.Array.MArray)
--
-- Mutable boxed and unboxed arrays in the IO monad.
-- .
-- Safe API only of "Data.Array.IO".
--
-----------------------------------------------------------------------------

module Data.Array.IO.Safe (
    -- * @IO@ arrays with boxed elements
    IOArray,             -- instance of: Eq, Typeable

    -- * @IO@ arrays with unboxed elements
    IOUArray,            -- instance of: Eq, Typeable

    -- * Overloaded mutable array interface
    module Data.Array.MArray.Safe,

    -- * Doing I\/O with @IOUArray@s
    hGetArray,           -- :: Handle -> IOUArray Int Word8 -> Int -> IO Int
    hPutArray,           -- :: Handle -> IOUArray Int Word8 -> Int -> IO ()
  ) where

import Data.Array.IO
import Data.Array.MArray.Safe
