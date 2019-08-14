" はじめてのvimscriptとvimプラグインの作成 - Qiita https://qiita.com/Sa2Knight/items/6b26d35af571c239da31

function! GetRandom(min, max)
  return reltime()[1] % (a:max - a:min + 1) + a:min
endfunction

function! GetRandomDate()
  return GetRandom(1980, 2020) . '-' . GetRandom(1, 12) . '-' . GetRandom(1,31)
endfunction

function! GetRandomTime()
  return GetRandom(0, 23) . ':' . GetRandom(0, 59) . ':' . GetRandom(0, 59)
endfunction

function! GetRandomDateTime()
  return GetRandomDate() . ' ' . GetRandomTime()
endfunction

function! InsertRandomDateTime()
  let datetime = GetRandomDateTime()
  execute ':normal a' . datetime
endfunction

command! RandDateTime call InsertRandomDateTime()
