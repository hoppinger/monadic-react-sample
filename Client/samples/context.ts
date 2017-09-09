import * as React from "react"
import * as ReactDOM from "react-dom"
import {List, Map, Set} from "immutable"
import * as Immutable from "immutable"
import {UrlTemplate, application, get_context, Route, Url, make_url, fallback_url, link_to_route,
Option, C, Mode, unit, bind, string, number, bool, button, selector, multi_selector, label, h1, h2, div, form, image, link, file, overlay,
custom, repeat, all, any, lift_promise, retract, delay,
simple_menu, mk_menu_entry, mk_submenu_entry, MenuEntry, MenuEntryValue, MenuEntrySubMenu,
rich_text, paginate, Page, list, editable_list} from 'monadic_react'

export let context_sample : C<void> =
  any<void, void>()([
    _ =>  button<void>(`Force reload`)(null).then(undefined, _ =>
          get_context().then(undefined, ctxt =>
          ctxt.force_reload())),
  ])(null).then(`context sample`, _ =>
  get_context().then(undefined, ctxt =>
  string("view")(`Context: ${JSON.stringify(ctxt)}`).ignore()))
