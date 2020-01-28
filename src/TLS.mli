(* This file is part of Luv, released under the MIT license. See LICENSE.md for
   details, or visit https://github.com/aantron/luv/blob/master/LICENSE.md. *)



(** Thread-local storage.

    See {{:http://docs.libuv.org/en/v1.x/threading.html#thread-local-storage}
    {i Thread-local storage}} in libuv. *)

type t
(** Binds {{:http://docs.libuv.org/en/v1.x/threading.html#c.uv_key_t}
    [uv_key_t]}. *)

val create : unit -> (t, Error.t) result
(** Creates a TLS key.

    Binds {{:http://docs.libuv.org/en/v1.x/threading.html#c.uv_key_create}
    [uv_key_create]}. *)

val delete : t -> unit
(** Deletes a TLS key.

    Binds {{:http://docs.libuv.org/en/v1.x/threading.html#c.uv_key_delete}
    [uv_key_delete]}. *)

val get : t -> nativeint
(** Retrieves the value at a TLS key.

    Binds {{:http://docs.libuv.org/en/v1.x/threading.html#c.uv_key_get}
    [uv_key_get]}. *)

val set : t -> nativeint -> unit
(** Sets the value at a TLS key.

    Binds {{:http://docs.libuv.org/en/v1.x/threading.html#c.uv_key_set}
    [uv_key_set]}. *)