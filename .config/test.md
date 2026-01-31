# Markdown Gutter & Feature Test (LazyVim)

This file is designed to **test all gutter-related features** in LazyVim for Markdown:

- TODO / NOTE / FIX signs
- Git signs
- Diagnostics (limited for Markdown)
- Folding & headings
- Preview compatibility

Open this file in Neovim and watch the **left gutter**.

---

## 1. TODO / NOTE / FIX Tests

The following items use **HTML comments**, which is required for `todo-comments.nvim` to detect them in Markdown.

<!-- TODO: This should show a TODO icon in the gutter -->

<!-- NOTE: This should show a NOTE icon in the gutter -->

<!-- FIX: This should show a FIX icon in the gutter -->

<!-- WARN: This should show a warning icon in the gutter -->

<!-- HACK: This should show a hack icon in the gutter -->

<!-- PERF: This should show a performance icon in the gutter -->

If you do NOT see icons:

- Ensure `todo-comments.nvim` is enabled
- Ensure your colorscheme supports sign highlights

---

## 2. Git Signs Test

To test git signs, this file **must be inside a git repository**.

### Steps

```bash
git init
git add markdown-gutter-test.md
git commit -m "initial commit"
```

Now modify a line below and save the file:

Change this sentence slightly to trigger a git change.

You should see:

- `+` for added lines
- `~` for modified lines
- `-` for deleted lines

---

## 3. Folding & Headings Test

Markdown folding is based on headings.

### Level 3 Heading

Some text here.

#### Level 4 Heading

More text here.

##### Level 5 Heading

Even more text.

Try folding with:

- `zc` → close fold
- `zo` → open fold
- `za` → toggle fold

---

## 4. Diagnostics Test (Limited)

Markdown has **very limited diagnostics**.

But some LSPs or linters may warn about:

- Broken links
- Invalid syntax

Example broken link:

[This link does not exist](./this-file-does-not-exist.md)

If your setup includes a Markdown linter, you may see a warning sign.

---

## 5. Preview Test (markdown-preview.nvim)

If Markdown preview is enabled in LazyVim:

Press:

```text
<leader> c p
```

This should:

- Open a browser window
- Render this file as HTML
- Auto-update on save

---

## 6. Marks vs Bookmarks (Important Distinction)

### Neovim Marks (Built-in)

These do **not** show icons in the gutter.

Try:

```text
ma   " set mark a
'a   " jump to mark a
```

No gutter icon will appear — this is normal.

---

### Bookmarks (Plugin Required)

LazyVim does **not** include visible bookmarks by default.

If you want VS Code–style bookmarks, you must install a plugin.

---

## Final Checklist

You should see:

- ✅ TODO / NOTE icons (from HTML comments)
- ✅ Git signs (if inside a git repo)
- ✅ Folding on headings
- ✅ Browser preview (if enabled)

You should NOT expect:

- ❌ LSP symbols
- ❌ Outline signs
- ❌ Bookmark icons (without plugin)

---

### Rule of Thumb

> If the gutter is empty in Markdown, it usually means there is nothing _to signal_ — not that something is broken.
