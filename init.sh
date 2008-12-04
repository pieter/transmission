echo "This will prepare this git repository to be used"
echo "with git-svn"
echo "--------------"
echo "Adding remotes"
git config svn-remote.libevent.url http://levent.svn.sourceforge.net/svnroot/levent/trunk/libevent
git config svn-remote.libevent.fetch :refs/remotes/svn/libevent
git update-ref refs/remotes/svn/libevent refs/remotes/origin/svn/libevent

git config svn-remote.transmission.url svn://svn.m0k.org/Transmission/trunk
git config svn-remote.transmission.fetch :refs/remotes/svn/transmission
git update-ref refs/remotes/svn/transmission refs/remotes/origin/svn/transmission

echo "Done."
echo ""
echo "You can now use git-svn with transmission. To update transmission, type"
echo "	git svn fetch transmission"
echo "To update the libevent submodule, do:"
echo "	git svn fetch libevent'"
echo "	merge -s subtree svn/libevent"