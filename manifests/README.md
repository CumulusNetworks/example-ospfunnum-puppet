There are 2 site.pp files in this folder.
When run in a Cumulus Workbench environment, a symbolic link
is ran to either the 2 spine 2 leaf setup (2lt22s) or 2 spine setup (2s).

If you are running this playbook on its own, please create the symlink yourself
or delete the site.pp file that is not needed. Otherwise running the puppet
agent will report the following error

```
Error: Could not retrieve catalog from remote server: Error 400 on SERVER: Node
'leaf1.lab
.local' is already defined; cannot redefine on node leaf1.lab.local
Warning: Not using cache on failed catalog
Error: Could not retrieve catalog; skipping run
```
