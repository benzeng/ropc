type token =
  | VAR of (string)
  | VAL of (int64)
  | SEMICOLON
  | LBRACKET
  | RBRACKET
  | EQUAL
  | ASSERT
  | INVALID
  | VALID
  | COMMA
  | PERIOD
  | EOF

open Parsing;;
let yytransl_const = [|
  259 (* SEMICOLON *);
  260 (* LBRACKET *);
  261 (* RBRACKET *);
  262 (* EQUAL *);
  263 (* ASSERT *);
  264 (* INVALID *);
  265 (* VALID *);
  266 (* COMMA *);
  267 (* PERIOD *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  257 (* VAR *);
  258 (* VAL *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\001\000\002\000\002\000\005\000\003\000\004\000\
\000\000"

let yylen = "\002\000\
\003\000\003\000\002\000\000\000\003\000\006\000\002\000\002\000\
\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\000\000\009\000\000\000\000\000\
\000\000\000\000\000\000\007\000\008\000\000\000\000\000\003\000\
\000\000\000\000\001\000\002\000\005\000\000\000\000\000\006\000"

let yydgoto = "\002\000\
\006\000\007\000\008\000\009\000\010\000"

let yysindex = "\004\000\
\251\254\000\000\002\255\252\254\253\254\000\000\003\255\005\255\
\010\000\010\255\013\255\000\000\000\000\015\000\016\000\000\000\
\005\255\011\255\000\000\000\000\000\000\016\255\014\255\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\020\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\248\255\014\000\000\000\000\000"

let yytablesize = 265
let yytable = "\015\000\
\004\000\003\000\004\000\005\000\001\000\011\000\012\000\013\000\
\021\000\016\000\004\000\003\000\017\000\018\000\019\000\020\000\
\022\000\023\000\024\000\004\000\014\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\004\000"

let yycheck = "\008\000\
\000\000\007\001\008\001\009\001\001\000\004\001\011\001\011\001\
\017\000\000\000\008\001\007\001\003\001\001\001\000\000\000\000\
\006\001\002\001\005\001\000\000\007\000\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\008\001"

let yynames_const = "\
  SEMICOLON\000\
  LBRACKET\000\
  RBRACKET\000\
  EQUAL\000\
  ASSERT\000\
  INVALID\000\
  VALID\000\
  COMMA\000\
  PERIOD\000\
  EOF\000\
  "

let yynames_block = "\
  VAR\000\
  VAL\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'assertions) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'goodresult) in
    Obj.repr(
# 22 "stp_grammar.mly"
                            ( Some(_1) )
# 163 "stp_grammar.ml"
               : (string * int64) list option))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'goodresult) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'assertions) in
    Obj.repr(
# 23 "stp_grammar.mly"
                            ( Some(_2) )
# 171 "stp_grammar.ml"
               : (string * int64) list option))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'badresult) in
    Obj.repr(
# 24 "stp_grammar.mly"
                ( None )
# 178 "stp_grammar.ml"
               : (string * int64) list option))
; (fun __caml_parser_env ->
    Obj.repr(
# 28 "stp_grammar.mly"
                ( [] )
# 184 "stp_grammar.ml"
               : 'assertions))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'assertion) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'assertions) in
    Obj.repr(
# 29 "stp_grammar.mly"
                                   ( _1 :: _3 )
# 192 "stp_grammar.ml"
               : 'assertions))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : int64) in
    Obj.repr(
# 33 "stp_grammar.mly"
                                         ( (_3, _5) )
# 200 "stp_grammar.ml"
               : 'assertion))
; (fun __caml_parser_env ->
    Obj.repr(
# 37 "stp_grammar.mly"
                 ( )
# 206 "stp_grammar.ml"
               : 'goodresult))
; (fun __caml_parser_env ->
    Obj.repr(
# 41 "stp_grammar.mly"
               ( )
# 212 "stp_grammar.ml"
               : 'badresult))
(* Entry main *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let main (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : (string * int64) list option)
