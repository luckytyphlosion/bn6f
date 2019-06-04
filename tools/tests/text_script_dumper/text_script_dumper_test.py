import unittest
from tools.dumpers.text_script_dumper import *

class BasicTests(unittest.TestCase):
    def setUp(self):
        pass
    def tearDown(self):
        pass

    def assertTestFile(self, test_name):
        curdir = 'text_script_dumper/'
        script, end_addr = read_script(0, curdir + test_name + '.bin', '../dumpers/mmbn6.ini')
        with open(curdir + test_name + '.s', 'r') as f:
            lines = f.readlines()
            script = '\n'.join(script).split('\n')
            for line in script:
                if not line.strip():
                    script.remove(line)
            for line in lines:
                if not line.strip():
                    lines.remove(line)
            self.assertEqual(int(lines[-1], 16), end_addr, 'end address mismatch')
            self.assertEqual(len(script), len(lines) - 1, 'content length mismatch')
            for i in range(len(script)):
                self.assertEqual(script[i].strip(), lines[i].strip(), 'item %d mismatch' % i)


    def test_TestScriptFolderNames(self):
        self.assertTestFile('TextScriptFolderNames86cf4ac')

    def test_TextScriptChipDescriptions0(self):
        self.assertTestFile('TextScriptChipDescriptions0_86eb8b8')

    def test_TextScriptDialog87E30A0(self):
        self.assertTestFile('TextScriptDialog87E30A0')

if __name__ == '__main__':
    unittest.main()
